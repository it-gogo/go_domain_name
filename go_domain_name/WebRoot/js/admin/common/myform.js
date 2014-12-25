//关闭窗口,重新设置窗口
function  closeForm(dialogID,formID){
//	closeDialog(dialogID);
	$("#"+dialogID).dialog("close");
	 if(typeof(beforeClose)=='function'){
		 beforeClose(formID);
      }
}

//操作信息
function  getHandleStr(value,row,index){
    var  handstr = "<a href=\"javascript:void(0)\" class=\"easyui-linkbutton\" iconCls=\"icon-edit\" plain=\"true\" onclick=\"updatexx('eDialog','"+value+"','eForm');\">[修 改]</a> "+
                   "<a href=\"javascript:void(0)\" class=\"easyui-linkbutton\" iconCls=\"icon-edit\" plain=\"true\" onclick=\"deletexx(urls,"+value+",editFormID);\">[删 除]</a>";
    if(row.isactives==1){
 	     handstr += "<a href=\"javascript:void(0)\" class=\"easyui-linkbutton\" iconCls=\"icon-edit\" plain=\"true\" onclick=\"changestatue('"+value+"',0,'是否禁用');\">[禁 用]</a>&nbsp;&nbsp;";
    }else{
 	     handstr += "<a href=\"javascript:void(0)\" class=\"easyui-linkbutton\" iconCls=\"icon-edit\" plain=\"true\" onclick=\"changestatue('"+value+"',1,'是否启用');\">[启 用]</a>&nbsp;&nbsp;";
    }
    return  handstr;
}

var url;
var submitMethod;
//打开添加数据窗口
function addxx(eDialog,eForm){
    $("#"+eDialog).dialog("open");
    $("#"+eForm).form('clear');
    submitMethod = url+"!addxx.action";
}
//打开修改数据窗口
function updatexx(eDialog,id,eForm){
       $("#"+eDialog).dialog('open');
//       $("#"+eForm).form('load',row);
       $("#"+eForm).form('load',url+'!loadxx.action?vo.id='+id);
       submitMethod=url +"!updatexx.action";
}
//保存修改数据窗口
function savexx(eDialog,eForm){
    $('#'+eForm).form('submit',{
        url: submitMethod,
        onSubmit: function(){
            return $(this).form('validate');
        },
        success: function(result){
            var result = eval('('+result+')');
            if (result.status==0){
                
            } else {
                $('#'+eDialog).dialog('close');        // close the dialog
                $('#grids').datagrid('reload');    // reload the user data
            }
            $.messager.alert('提示',result.msg);
        }
    });
}
//删除数据
function deletexx(){
    var row = $('#grids').datagrid('getSelected');
    if (row){
        $.messager.confirm('询问','确定删除该数据?',function(r){
            if (r){
                $.post(url+"!deletexx.action",{id:row.id},function(result){
                    if (result.status==1){
                        $('#grids').datagrid('reload');    // reload the user data
                    } else {
                        $.messager.show({    // show error message
                            title: '提示',
                            msg: result.msg
                        });
                    }
                },'json');
            }
        });
    }
}

//启用禁用操作
function  changestatue(sns,stat,message){
	$.messager.confirm("询问",message,function(r){
		if(r){
		  $.post(url+"!changeStatus.action",{"vo.id":sns,'vo.isactives':stat},function(result){
			  if (result.status==1){
                  $('#grids').datagrid('reload');    // reload the user data
	          } else {
	              /*$.messager.show({    // show error message
	                  title: '提示',
	                  msg: result.msg
	              });*/
	          }
			  $.messager.alert('提示',result.msg);
	      },'json');
		}
	});
}

//重新设置FORM
function  resetForm(formID){
   $("#"+formID).form('reset');
}

//查询
function  query(gridID,queryFormID){
	$('#'+gridID).datagrid('load',getQueryParame(queryFormID));
}

//取得查询的参数
function  getQueryParame(formId){
   var cFormID;
   if(typeof(formId)=='undefined'){
	   cFormID = queryFormID;
   }else{
	   cFormID = formId;
   }
   
   var  res = new Object();
   var curObj = $("#"+cFormID);
   var array = new Array();
   $('input:text,input:hidden,select',$("#"+cFormID)).each(function(){
 	 var  ids =  this.id;
 	 var t = this.type;
 	 var  queStr = new Object();
 	if(t == 'text' || t == 'hidden'|| t == 'password'||t =='textarea' || tag=='textarea'){
 	 if(ids!=""&&ids!=null){
 		 queStr[ids] = this.value;
 	     array[array.length] = queStr;
 	 }

 	}else if(t == 'select-one'){
 		 
 		 if(ids!=""&&ids!=null){
 			 var sval = $("#"+ids,curObj).combobox("getValue");
 			 queStr[ids] = this.value;
 	 	   array[array.length] = queStr;
 		 }
 	}
 	
   });	
   //queStr["ajaxFlag"] = "XMLHttpRequest";//设置AJAX请求参数
 //  res["gt_json"] = $.toJSON(array);
   //alert($.toJSON(res));
//   alert($.toJSON(array))
   return  eval("("+$.toJSON(array)+")");
}
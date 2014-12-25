
//操作信息
function  getHandleStr(value,row,index){
    var  handstr = "<a href='javascript:void(0)' class='easyui-linkbutton' iconCls='icon-edit' plain='true' onclick='loadxx(urls,"+value+",editFormID);'>[修 改]</a> "+
                   "<a href='javascript:void(0)' class='easyui-linkbutton' iconCls='icon-edit' plain='true' onclick='deletexx(urls,"+value+",editFormID);'>[删 除]</a>";
    if(row.isactives==1){
 	     handstr += "<a href='javascript:void(0)' class='easyui-linkbutton' iconCls='icon-edit' plain='true' onclick='changestat(urls,"+value+",0,\"是否禁用\",editFormID);'>[禁 用]</a>&nbsp;&nbsp;";
    }else{
 	     handstr += "<a href='javascript:void(0)' class='easyui-linkbutton' iconCls='icon-edit' plain='true' onclick='changestat(urls,"+value+",1,\"是否启用\",editFormID);'>[启 用]</a>&nbsp;&nbsp;";
    }
    return  handstr;
}
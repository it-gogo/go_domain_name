/**
 * 初始化列表
 * @param gId
 * @param listurl
 */
function  initGrids(gId,listurl){
	var  nurl=listurl;
	$("#"+gId).datagrid({
		/*queryParams:getQueryParame(qformID),*/
        url:nurl,
        //onClickCell:clickCell,
        //onAfterEdit:afterEdit,
        checkOnSelect:false,
        selectOnCheck:false,
        pageSize:20,
        pageList:[20,40,60,80,100],
        loadMsg:'',
        onBeforeLoad : function(param) {
        	//alert($.toJSON(param));
			parent.$.messager.progress({
				text : '数据加载中....'
			});
		},
		onLoadSuccess : function(data) {
			//salert(data)
			/*if(data.message!='undefined'&&data.message!=null){
				if(data.status=="unvalid"){
					location.href="../errors/sessionError.jsp"
	            }else{
	            	parent.alertInfo(data.message);
	            }
			}
			if(typeof(gridafterload)=='function'){
				gridafterload(data,qformID);
			}*/
//			$('#'+gID).datagrid('doCellTip',{'max-width':'100px'});*/
		},
		onLoadError:function(){
			//alert(data);
			parent.$.messager.progress('close');
			alertInfo("数据加载错误");
			
		}
   });
}
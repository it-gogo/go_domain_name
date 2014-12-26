/**
 * 树初始化
 * @param treeId
 * @param treeurl
 * @param formID
 */
function  initTree(treeId,treeurl){
	 $("#"+treeId).tree({
         url:"sysmanage/hmenuAction!findTree.action"
        /* cascadeCheck:true,
         checkbox:treecheckbox*/
	        /*onClick:function(node){
	            treeclick(node,formID);
	        }*/
     });
}
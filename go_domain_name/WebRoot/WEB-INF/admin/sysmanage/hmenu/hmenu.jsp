<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<%@include file="/WEB-INF/admin/common/includefile.jsp" %>
<script type="text/javascript">
var url="hmenuAction";
function treeclick(node){
	 if(node.id==0){
          $("#mcode_right","#qForm").val("");
     }else{
         $("#mcode_right","#qForm").val(node.id);
     }
    $("#grids").datagrid('load',getQueryParame("qForm"));
}
function addBefore(eDialog,eForm){
	 var  treeNode = $("#treeId").tree('getSelected');
      if(treeNode==null){
          $.messager.alert('提示',"请选择一个节点");
         return false;
      }else{
		$("#pid","#"+eForm).val(treeNode.ids);
         $("#pmcode","#"+eForm).val(treeNode.id);
          $("#pname","#"+eForm).textbox("setValue",treeNode.text);
         return true;
     }
}
</script>
<body style="margin: 0px;padding: 0px;">
<div class="easyui-layout" style="width:100%;height:100%;border: 0px;">
	 <div data-options="region:'west',split:true" title="菜单树"  style="width:200px;"  >
	    <ul class="easyui-tree" id="treeId"  data-options="url:'hmenuAction!findTree.action',onClick:function(node){treeclick(node);}" >
	    </ul>
	</div>
<div data-options="region:'center'"  >
<%@include file="/WEB-INF/admin/sysmanage/hmenu/hmenuList.jsp" %>  
<!-- 数据编辑层 -->
<%@include file="/WEB-INF/admin/sysmanage/hmenu/hmenuEdit.jsp" %>
</div>
</div>
</body>
</html>

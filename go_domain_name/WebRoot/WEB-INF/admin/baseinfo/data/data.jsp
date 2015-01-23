<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<%@include file="/WEB-INF/admin/common/includefile.jsp" %>
<script type="text/javascript">
var url="hdataAction";
function treeclick(node){
	 if(node.id==0){
         $("#typeid","#qForm").val("");
    }else{
        $("#typeid","#qForm").val(node.id);
    }
   $("#grids").datagrid('load',getQueryParame("qForm"));
}
function addBefore(eDialog,eForm){
	 var  treeNode = $("#treeId").tree('getSelected');
     if(treeNode==null ||treeNode.id==0){
         $.messager.alert('提示',"请选择一个数据类型");
        return false;
     }else{
		//$("#pid","#"+eForm).val(treeNode.ids);
        $("#typeid","#"+eForm).val(treeNode.id);
         $("#typename","#"+eForm).textbox("setValue",treeNode.text);
        return true;
    }
}
</script>
<body style="margin: 0px;padding: 0px;">
<div class="easyui-layout" style="width:100%;height:100%;border: 0px;">
	 <div data-options="region:'west',split:true" title="数据类型树"  style="width:200px;"  >
	    <ul class="easyui-tree" id="treeId"  data-options="url:'hdatatypeAction!findTree.action',onClick:function(node){treeclick(node);}" >
	    </ul>
	</div>
<div data-options="region:'center'"  >
<%@include file="/WEB-INF/admin/baseinfo/data/dataList.jsp" %>  
<!-- 数据编辑层 -->
<%@include file="/WEB-INF/admin/baseinfo/data/dataEdit.jsp" %>
</div>
</div>
</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<html>
<head>
<%@include file="/WEB-INF/admin/common/includefile.jsp" %>
<script type="text/javascript">
$(document).ready(function(){
	  initGrids("grids","hmenuAction!ajaxList.action");
});
</script>
</head>
<body>
 <!-- <table id="grids" title="菜单列表"  toolbar="#toolbar"   style="height: 100%">   
     <thead>          
       <tr>
          <th field="chk" width="20" align='center' checkbox=true  ></th>
          <th field="mnumber" width="60" align='center'>菜单编号</th>
          <th field="name" width="80" align='center'>菜单名称</th>
          <th field="urls" width="180" align='center'>链接地址</th>
          <th field="scriptevent" width="60"  align='center'>点击事件</th>
          <th field="step" width="60"  align='center'>级数</th>
          <th field="display" width="60"  align='center' formatter='dispalyFormat'>显示</th>
          <th field="description" width="70"  align='center'>备注</th>
          <th field="id" width="150"  align='center' formatter='getHandleStr'>操作</th>
         </tr>
     </thead>
</table> -->

<table id="grids"  class="easyui-datagrid" title="菜单列表" style="height:100%" >
    <thead>
        <tr>
            <th data-options="field:'mnumber',width:80">菜单编号</th>
            <th data-options="field:'name',width:100">菜单名称</th>
            <th data-options="field:'urls',width:80,align:'right'">链接地址</th>
            <th data-options="field:'scriptevent',width:80,align:'right'">点击事件</th>
            <th data-options="field:'step',width:250">级数</th>
            <th data-options="field:'status',width:60,align:'center'" >操作</th>
        </tr>
    </thead>
</table>

</body>
</html>

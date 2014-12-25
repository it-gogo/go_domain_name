<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<html>
<head>

</head>

<div id="toolbar" style="height:28px;">
	<form  id="qForm" method="post">
		&nbsp; &nbsp; &nbsp;&nbsp;<input class="easyui-textbox" name="mname" id="mname" data-options="prompt:'请输入查询名称'" style="height:25px" plain="true" >
		<a href="javascript:void(0)" class="easyui-linkbutton"  iconCls="icon-search"  plain="true"  onclick="query('grids','qForm')" >查询</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"  iconCls="icon-reload"  plain="true"  onclick="resetForm('qForm')" >重置</a>
	     <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addxx('eDialog','eForm')">添加</a>
	     <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="deletexx()">删除</a>
     </form>
 </div>

<table id="grids"   class="easyui-datagrid"   toolbar="#toolbar" pagination="true"  fit="true" url="hmenuAction!ajaxList.action"
            rownumbers="true" fitColumns="true" singleSelect="true" >
        <thead>
            <tr>
            	<th field="chk" width="20" align='center' checkbox=true  ></th>
                <th field="mcode" width="50">菜单编号</th>
                <th field="mname" width="50">菜单名称</th>
                <th field="urls" width="50">链接地址</th>
                <th field="series" width="50">级数</th>
                <th field="id" width="50"  formatter='getHandleStr'>操作</th>
            </tr>
        </thead>
    </table>
</body>
</html>

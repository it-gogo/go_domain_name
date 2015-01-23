<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<html>
<head>
</head>


<div id="toolbar" style="height:28px;">
	<form  id="qForm" method="post">
	<input  id="typeid" type="hidden" >
		&nbsp; &nbsp; &nbsp;&nbsp;<input class="easyui-textbox" name="name" id="name_like" data-options="prompt:'请输入查询名称'" style="height:25px" plain="true" >
		<a href="javascript:void(0)" class="easyui-linkbutton"  iconCls="icon-search"  plain="true"  onclick="query('grids','qForm')" >查询</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"  iconCls="icon-reload"  plain="true"  onclick="resetForm('qForm')" >重置</a>
	     <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addxx('eDialog','eForm')">添加</a>
	     <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="deleteAll()">删除</a>
     </form>
 </div>

<table id="grids"   class="easyui-datagrid"   toolbar="#toolbar" pagination="true"  fit="true"  url="hdataAction!ajaxList.action"
            rownumbers="true" fitColumns="true" singleSelect="false"  >
        <thead>
            <tr>
            	<th field="chk" width="20" align='center' checkbox=true  ></th>
                <th field="name" width="50">名称</th>
                <th field="typename" width="50">类型名称</th>
                <th field="id" width="50"  formatter='getHandleStr'>操作</th>
            </tr>
        </thead>
    </table>
</body>
</html>

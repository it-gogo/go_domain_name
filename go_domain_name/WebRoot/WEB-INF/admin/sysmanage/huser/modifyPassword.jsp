<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  <body>
	<div id="editTool">
		<a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" plain="true"  onclick="savexx('eDialog','eForm')" >保存</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" plain="true"   onclick="closeForm('eDialog','eForm')"  >返回</a>
 	</div>
 	<div id="eDialog" class="easyui-dialog" title="密码修改"data-options="modal:true,closed:true" toolbar="#editTool"
		style="width: 500px; height: 200px; padding: 2px;">
	</div>
  </body>
</html>

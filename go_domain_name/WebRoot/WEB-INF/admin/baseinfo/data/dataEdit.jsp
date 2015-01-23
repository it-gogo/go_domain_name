<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  <body>
	<div id="eDialog" class="easyui-dialog" style="width:500px;height:400px;"  title="菜单编辑"     closed="true"  toolbar="#dlg-buttons">
        <form id="eForm" method="post" >
        	<input type="hidden" name="vo.id"  />
        	<input type="hidden" name="vo.typeid" id="typeid"  />
        	<table width="90%" class="t2">
	    		<tr>
	    			<td align="right" class="td_left">类型名称:</td>
	    			<td><input class="easyui-textbox"  name="vo.typename" id="typename" readonly="readonly" /></td>
	    		</tr>
	    		<tr>
	    			<td align="right" class="td_left">名称:</td>
	    			<td>
	    				<input class="easyui-textbox"  name="vo.name" data-options="required:true,validType:'maxLength[50]'"  />
	    			</td>
	    		</tr>
	    		<tr>
	    			<td align="right" class="td_left">排序:</td>
	    			<td><input class="easyui-numberbox"  name="vo.seq"   /></td>
	    		</tr>
	    		<%--<tr>
	    			<td align="right" class="td_left">描述:</td>
	    			<td><textarea name="vo.remark" id="remark" style="width:250px;height:60px;"
	    			class="easyui-validatebox" data-options="validType:'maxLength[200]'" ></textarea></td>
	    		</tr>--%>
	    		<tr>
	    			<td align="right" class="td_left">是否启用:</td>
	    			<td>
	    			  <input type="checkbox" name="vo.isactives" id="isactives" checked="checked" value="1" />
	    			</td>
	    		</tr>
		     </table>
        </form>
    </div>
    <div id="dlg-buttons">
        <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" plain="true"  onclick="savexx('eDialog','eForm')" >保存</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" plain="true"   onclick="closeForm('eDialog','eForm')"  >返回</a>
    </div>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <%@include file="/WEB-INF/admin/common/includefile.jsp" %>
	
  </head>
  <body>
     <div id="eDialog" class="easyui-dialog" title="菜单编辑" 
          data-options="modal:true"  toolbar="#editTool"
          style="width:500px;height:400px;padding:5px;">
	     <form id="eForm" method="post" action="menuAction.action" enctype="multipart/form-data">
	        <input type="hidden" name="vo.mnumber" id="mnumber"  value=""></input>
	        <input class="easyui-validatebox" type="hidden" name="vo.parentnumber" id="parentnumber" value=""></input>
	        <input class="easyui-validatebox" type="text" style="display:none;" name="vo.id" id="id"></input>
	        <input class="easyui-validatebox" type="hidden" name="vo.step" id="step"></input>
	        <input class="easyui-validatebox" type="hidden" name="vo.parentId" id="parentId"></input>
	        <input class="easyui-validatebox" type="hidden" name="vo.seq" id="seq"></input>
	        <input class="easyui-validatebox" type="hidden" name="vo.isactives" id="isactives"></input>
	    	<table width="90%" class="t2">
	    		<tr>
	    			<td align="right" class="td_left">父菜单:</td>
	    			<td>
	    			<input class="easyui-validatebox" type="text" name="pname" id="pname" style="width:250px;" data-options="required:true" readonly="readonly">
	    			</input>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td align="right" class="td_left">菜单名称:</td>
	    			<td><input class="easyui-validatebox" type="text" name="vo.name" id="name" style="width:250px;" data-options="required:true,validType:'maxLength[50]'"></input></td>
	    		</tr>
	    		<tr>
	    			<td align="right" class="td_left">url:</td>
	    			<td><input class="easyui-validatebox" type="text" name="vo.urls" id="urls" style="width:250px;" data-options="required:true,validType:'maxLength[250]'"></input></td>
	    		</tr>
	    		<tr>
	    			<td align="right" class="td_left">脚本事件名:</td>
	    			<td>
                      <input class="easyui-validatebox" type="text" name="vo.scriptevent" id="scriptevent" style="width:250px;" data-options="required:true,validType:'maxLength[50]'" value="addPanel"></input>
                    </td>
	    		</tr>
	    		<tr>
	    			<td align="right" class="td_left">菜单图标:</td>
	    			<td>
                      <input class="easyui-validatebox" type="text" name="vo.imgurl" id="imgurl" style="width:120px;" data-options="validType:'maxLength[250]'"  />
                      <input type="file" name="img" onchange="changeurl(this);" style="width:70px;" />
                      <input type="button" value="上传" onclick="loadImg(this);" />
                    </td>
	    		</tr>
	    		<tr>
	    			<td align="right" class="td_left">是否显示:</td>
	    			<td>
	    			    <select class="easyui-combobox" name="vo.display" id="display" style="width:250px;">
	    		           <option value="1">是 </option>
	    			       <option value="0"> 否 </option>
	    			    </select>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td align="right" class="td_left">描述:</td>
	    			<td><textarea name="po.description" id="description" style="width:250px;height:60px;"
	    			class="easyui-validatebox" data-options="validType:'maxLength[200]'" ></textarea></td>
	    		</tr>
		     </table>
		   </form>
		 <div id="editTool" >
	    	<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="submitForm(urls,editFormID)">保存</a>
	    	<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" plain="true" onclick="closeForm(editDialogID,editFormID)">关闭</a>
	    </div>
	</div>
  </body>
</html>

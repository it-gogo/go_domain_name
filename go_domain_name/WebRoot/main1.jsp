<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>申博系统-主页</title>
    <%@include file="/WEB-INF/admin/common/includefile.jsp" %>
    <link href="css/admin/style.css" type="text/css" rel="stylesheet" />
  </head>
	<body style="margin: 0px;">
    <div class="easyui-layout" style="width:100%;height:100%;">
    	
        <div data-options="region:'north'" style="height:100px">
        </div>
        
        
        <div data-options="region:'west'"  style="width:200px;" id="content">
            <div class="easyui-accordion" data-options="fit:true,border:false"  >
                <div title="Title1"  data-options="selected:true" style="margin: 0px;padding: 0px;" >
                    <ul style="list-style-type:none"> 
                    	<li>
                    		<a href="javascript:void(0);" onclick="addPanel('104102','角色管理','sysmanage/hmenuAction!findList.action');"  >
	                    		<img src=css/admin/images/Menu_management.png />
	                    		<label>角色管理</label>
                    		</a>
                    	</li>
                    	<li>
                    		<a href="javascript:void(0);" onclick="addPanel('104102','角色管理','sysmanage/troleAction.action');"  >
	                    		<img src=css/admin/images/Menu_management.png />
	                    		<label>角色管理</label>
                    		</a>
                    	</li>
                    </ul>
                </div>
                <div title="Title1"  data-options="selected:true" style="margin: 0px;padding: 0px;" >
                    <ul style="list-style-type:none"> 
                    	<li>
                    		<a href="javascript:void(0);" onclick="addPanel('104102','角色管理','sysmanage/hmenuAction!findList.action');"  >
	                    		<img src=css/admin/images/Menu_management.png />
	                    		<label>角色管理</label>
                    		</a>
                    	</li>
                    	<li>
                    		<a href="javascript:void(0);" onclick="addPanel('104102','角色管理','sysmanage/troleAction.action');"  >
	                    		<img src=css/admin/images/Menu_management.png />
	                    		<label>角色管理</label>
                    		</a>
                    	</li>
                    </ul>
                </div>
            </div>
        </div>
        
        
        <div data-options="region:'center',iconCls:'icon-ok',tools:'#tab-tools'"  >
           <!--  <div class="easyui-tabs" data-options="fit:true,border:false,plain:true">
                <div title="DataGrid" style="padding:5px">
                    <table class="easyui-datagrid"
                            data-options="url:'datagrid_data1.json',method:'get',singleSelect:true,fit:true,fitColumns:true">
                        <thead>
                            <tr>
                                <th data-options="field:'itemid'" width="80">Item ID</th>
                                <th data-options="field:'productid'" width="100">Product ID</th>
                                <th data-options="field:'listprice',align:'right'" width="80">List Price</th>
                                <th data-options="field:'unitcost',align:'right'" width="80">Unit Cost</th>
                                <th data-options="field:'attr1'" width="150">Attribute</th>
                                <th data-options="field:'status',align:'center'" width="50">Status</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div> -->
		    <div id="tt" class="easyui-tabs" data-options="tools:'#tab-tools'" style="width:100%;height:100%;">
		    </div>
        </div>
    </div>
<script type="text/javascript">
        var index = 0;
        function addPanel(cdbh,titles,action){
        	var h =  $(window).height();	
		    var theight = 75;//头部高度
		    var  cheight =  h-62;//定义层的高度
		     var ifheight = h-126;//定义IFrame的高度
            index++;
            if($("#tt").tabs('exists',titles)){
    	  $("#tt").tabs('select',titles);
    	   var currTab = $('#tt').tabs('getTab', titles),  
             iframe = $(currTab.panel('options').content),  
            content = '<iframe scrolling="auto" frameborder="0"  src="' + iframe.attr('src') + '" style="width:100%;height:100%;"></iframe>';  
          $('#tt').tabs('update', {tab: currTab, options: {content: content, closable: true}}); 
          /* $('#tt').tabs('updateIframeTab', {tab: currTab, options: {content: content, closable: true},which:titles});  */
       }else{
            $('#tt').tabs('add',{
                title: titles,
                /* content: '<div style="padding:10px">Content'+index+'</div>', */
                content:'<iframe id="t" scrolling="yes" frameborder="0"  src='+action+' width="100%" height="'+ifheight+'"></iframe>',
                closable: true
            });
            }
        }
        function removePanel(){
            var tab = $('#tt').tabs('getSelected');
            if (tab){
                var index = $('#tt').tabs('getTabIndex', tab);
                $('#tt').tabs('close', index);
            }
        }
    </script>
</body>
</html>
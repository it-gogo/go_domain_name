<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>申博系统-主页</title>
    <%@include file="/WEB-INF/admin/common/includefile.jsp" %>
    <link href="<%=request.getContextPath()%>/css/admin/style1.css" type="text/css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/css/admin/style.css" type="text/css" rel="stylesheet" />
  </head>
	<body style="margin: 0px;">
    <div class="easyui-layout" style="width:100%;height:100%;">
    	
        <div data-options="region:'north'" style="height:55px" class="header">
        	<h2 class="logo"><a href="#"></a></h2>
		    <div class="header_r">
		    	<div class="admin_ico"><img src="<%=request.getContextPath() %>/css/admin/images/person.png" /></div>
		    	<a href="#">[帐号:${hloginInfo.lname}&nbsp;&nbsp;姓名:${hloginInfo.uname}]</a>
		        <a class="edit" href="javascript:modifyPassword()">修改密码</a>
		        <a class="logout" href="javascript:loginOut()">注销</a>
		    </div>
        </div>
        
        
        <div data-options="region:'west'"  style="width:205px;" id="content" >
            <div class="easyui-accordion" data-options="fit:true,border:false"  >
            	<s:iterator  value="#request.menuList" var="menu" >
            		<div title="${menu.mname }"  data-options="selected:true" style="margin: 0px;padding: 0px;" >
                    <ul style="list-style-type:none"> 
                    	<s:iterator var="children" value="#request.menu.list" >
                    	<li>
                    		<a href="javascript:void(0);" onclick="addPanel('${children.id}','${children.mname }','${children.urls }');"  >
	                    		<s:if test="#request.children.icon==null || #request.children.icon==''">
	                    			<img src=../css/admin/images/Menu_management.png />
	                    		</s:if>
	                    		<s:else>
	                    			<img src=${children.icon } />
	                    		</s:else>
	                    		<label>${children.mname }</label>
                    		</a>
                    	</li>
                    	</s:iterator>
                    </ul>
                </div>
            	</s:iterator>
            </div>
        </div>
        
        
        <div data-options="region:'center',iconCls:'icon-ok',tools:'#tab-tools'"  >
		    <div id="mainPanel" class="easyui-tabs" data-options="tools:'#tab-tools'" style="width:100%;height:100%;">
		    </div>
        </div>
<%@include file="/WEB-INF/admin/sysmanage/huser/modifyPassword.jsp" %>
    </div>
    
</body>
<script type="text/javascript">
        var index = 0;
        function addPanel(cdbh,titles,action){
        	var h =  $(window).height();	
		    var theight = 75;//头部高度
		    var  cheight =  h-62;//定义层的高度
		     var ifheight = h-80;//定义IFrame的高度
            index++;
            if($("#mainPanel").tabs('exists',titles)){
    	  $("#mainPanel").tabs('select',titles);
    	   var currTab = $('#mainPanel').tabs('getTab', titles),  
             iframe = $(currTab.panel('options').content),  
            content = '<iframe scrolling="auto" frameborder="0"  src="' + iframe.attr('src') + '" style="width:100%;height:100%;"></iframe>';  
          $('#mainPanel').tabs('updateIframeTab', {tab: currTab, options: {content: content, closable: true},which:titles}); 
       }else{
             var count = 0;
       		$("#mainPanel").tabs('addIframeTab',{
				tab:{
                     id:cdbh,
					title: titles,
					content:'<iframe id="t"  scrolling="yes" frameborder="0"  src="'+action+'" width="100%" height="'+ifheight+'"></iframe>',
					closable: true,
					border:false,
					fit:true
                },
				iframe:{src:action}
			});
            }
        }
        function removePanel(){
            var tab = $('#mainPanel').tabs('getSelected');
            if (tab){
                var index = $('#mainPanel').tabs('getTabIndex', tab);
                $('#mainPanel').tabs('close', index);
            }
        }
        function loginOut(){
  			 $.messager.confirm('询问','是否确认退出系统?',function(r){
  	            if (r){
  	            	location.href ="../common/hloginAction!toLogin.action";
  	            }
  	        });
        }
        function modifyPassword(){
		    $("#eDialog").dialog('open');
		    submitMethod = "../sysmanage/huserAction!modifyPW.action";
		    $(".window-mask").css({height:$(window)._outerHeight()})
		    $('#eDialog').dialog('refresh','../sysmanage/huserAction!modifyPassword.action');
		}
    </script>
</html>
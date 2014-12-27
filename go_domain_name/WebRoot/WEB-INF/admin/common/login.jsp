<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>智易推域名销售后台管理系统</title>
<link href="<%=request.getContextPath() %>/css/admin/login_bs.css" type="text/css" rel="stylesheet" />
<%@include file="/WEB-INF/admin/common/includefile.jsp"%>
<style type="text/css">
input.inputF{color:#555;}
</style>
</head>
<body class="login_body">
 
    <div class="login_main">
        <form id="loginform" name="loginform" method="post" action="hloginAction!login.action">
    	<div class="login">
        	<p class="input_name">
                <label>用户名：</label>
                <input name="vo.lname" value="${vo.lname }" type="text" class="inputF" id="name" onkeydown="nexttab()"/>  
            </p>
            <p class="input_password">
                <label>登录密码：</label> 
                <input name="vo.password" value="${vo.password }" type="password" class="inputF" id="pass" onkeydown="nexttab()"/>  
            </p>
             <p>
                <label>&nbsp;</label>
                <input name="" type="submit" class="login_but" value="登 录"  />
                <label style="color: red;width: 200px;text-align: left;">${msg }</label>
            </p>
        </div>
       </form>
    </div>
    <div class="login_footer">版权所有(C)2014-2015 IT三人组（HFY）</div>
</body>
</html>

<script  type="text/javascript">
  function nexttab()
  {
       if(event.keyCode==13)
       {
         $("#loginform").submit();
       }
  }
   function  login(){
      $("#loginform").form("submit",{
        url:'login.htm',
        success:function(data){
        	if(data==1){
        		document.location.href="../index/main.htm";
        	}else if(data==2){
        		alert("用户名或密码错误");
        	}else if(data==3){
        		 alert("用户已经禁用");
        	}
        }
      });
   }
</script>
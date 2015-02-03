<%@ page language="java"  pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="/WEB-INF/client/common/head.jsp" >
  		<jsp:param value="登陆" name="name"/>
	</jsp:include>
	<link href="<%=request.getContextPath() %>/css/client/css/regist.css" rel="stylesheet" />
</head>
<body>
    <div>
       <jsp:include page="/WEB-INF/client/common/header.jsp" >
  		<jsp:param value="登陆" name="name"/>
	</jsp:include>

        
    
<div id="sitemap">    
    <%@include file="/WEB-INF/client/common/updTimeWrap.jsp" %>
    <div id="cph_serverTime_path">当前位置：<a href='/'>首页</a>&nbsp;>>&nbsp;<h1><a href="/login">登录</a></h1></div>
</div>
<script src="/Javascript/serverTime.js"></script>  
<div class="clear_right"></div>      

    <div style="width:100%;overflow:hidden">
        <div class="login_wrap">
            <div class="lwl">
                <h1>还不是62.com会员？那就免费注册吧！</h1>
                <div class="sm">欢迎加入中国优质域名交易平台，您需要免费注册成为会员，才能享受62.com提供的以下服务：</div>
                <dl class="odd">
                    <dt>
                        <img src="<%=request.getContextPath() %>/css/client/images/lwldt1.png" /></dt>
                    <dd>购买域名<br />
                        海量优质域名，选择62.com更省心。</dd>
                </dl>
                <dl>
                    <dt>
                        <img src="<%=request.getContextPath() %>/css/client/images/lwldt2.png" /></dt>
                    <dd>出售域名<br />
                        提供域名拍卖。在线议价。优质等多种渠道，62.com更懂你。</dd>
                </dl>
                <dl class="odd">
                    <dt>
                        <img src="<%=request.getContextPath() %>/css/client/images/lwldt3.png" /></dt>
                    <dd>停放域名<br />
                        使用优名网自定义出售页，您的停放页面您做主。</dd>
                </dl>
                <dl>
                    <dt>
                        <img src="<%=request.getContextPath() %>/css/client/images/lwldt4.png" /></dt>
                    <dd>担保交易<br />
                        专业团队，一流的技术和服务确保买家资金和卖家域名安全。</dd>
                </dl>
                <div class="btn"><a href="../account/qloginAction!register.action" class="login_btn">免费注册新会员</a></div>
            </div>
            <!--lwl-->
            <div class="lwr">
                <h1>已经是会员，请登录！</h1>
                <p class="sm">立即登开始购买，出售域名或管理您的账户！</p>
                <table cellpadding="0" hspace="0">
                    <tr>
                        <td class="title">您的会员ID或电子邮件：</td>
                        <td>
                            <input name="ctl00$cph$user" type="text" id="cph_user" /><br />
                            请输入会员ID或电子邮件。</td>
                    </tr>
                    <tr>
                        <td class="title">请输入您的密码：</td>
                        <td>
                            <input name="ctl00$cph$pwd" type="password" id="cph_pwd" /><br />
                            如果忘记密码了，可以点击这里 <a href="/account/personal/lost-pwd" style="font-weight:bold">找回密码</a></td>
                    </tr>
                </table>
                <p class="btn"><input type="submit" name="ctl00$cph$btn" value="会员登录" id="cph_btn" class="login_btn" /></p>
                <p class="style"><a href="oauth/weibo">微博登录</a>&nbsp;&nbsp;<a href="oauth/qq" class="qq">QQ登录</a></p>
            </div>
            <!--lwr-->
        </div>
        <!--login_wrap-->
    </div>


        

<%@include file="/WEB-INF/client/common/footer.jsp" %>
    </div>
</body>
</html>

<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="/WEB-INF/client/common/head.jsp">
	<jsp:param value="注册" name="name" />
</jsp:include>
<link href="<%=request.getContextPath() %>/css/client/css/regist.css" rel="stylesheet" />
</head>
<body>
	<%@include file="/WEB-INF/client/common/CAlert.jsp" %>
	<div>
		<jsp:include page="/WEB-INF/client/common/header.jsp">
			<jsp:param value="注册" name="name" />
		</jsp:include>
		<div id="sitemap">
			<%@include file="/WEB-INF/client/common/updTimeWrap.jsp"%>
			<div id="cph_serverTime_path">
				当前位置：<a href='/'>首页</a>&nbsp;>>&nbsp;
				<h1>
					<a href="../account/qloginAction!register.action">注册</a>
				</h1>
			</div>
		</div>
		<div class="clear_right"></div>
		<div style="width:100%;overflow:hidden">
			<div class="regist_wrap">
				<h1>
					<span class="title">会员注册</span>
				</h1>
				<div class="rwl">
					<form action="qloginAction!save.action" method="post" id="registerForm">
					<div class="regist">
						<p class="hint">
							<span>请填写下面的表单，带*号标记的为必填字段</span>
						</p>
						<div class="tab" id="registTab">
							<table width="100%" cellpadding="0" cellspacing="0">
								<tr>
									<td class="title">电子邮件:<strong>*</strong></td>
									<td>
										<input name="vo.email" type="text"  class="email requires" onblur="checkEmail(this,100)" maxlength="100" />
										<span class="c_999">注册成功后系统会自动发送一封确认信到该电子邮件，只有激活后才能使用，请确保您的电子邮件真实有效。</span>
									</td>
								</tr>
								<tr>
									<td class="title">登录密码:<strong>*</strong></td>
									<td>
										<input name="vo.password" type="password" maxlength="16" class="pwd requires" id="checkpw" />
										<span class="c_999">密码由6-16个字母、数字、符号组成，区分大小写。为了保证您的账号安全，请不要与您的邮箱登录密码相同。</span>
									</td>
								</tr>
								<tr>
									<td class="title">再一次输入登录密码:<strong>*</strong></td>
									<td><input type="password" maxlength="16" class="pwd requires" id="checkrpw" />
										<span class="c_999">请在输入确认您的登录密码。</span>
									</td>
								</tr>
								<tr>
									<td class="title">真实姓名:<strong>*</strong></td>
									<td><input name="vo.name" type="text" maxlength="10" class="name requires" onblur="checkNotEmtry(this,10)" />
										<span class="c_999">申请提现时将验证银行卡或支付宝姓名是否与账号相同，一经注册不可修改。</span>
									</td>
								</tr>
								<tr>
									<td class="title">联系电话:<strong>&nbsp;</strong></td>
									<td><input name="vo.telephone" type="text" placeholder="格式：区号-号码" onblur="checkEmtryTelephone(this,15)" />
										<span class="c_999">请输入真实有效的联系电话，如遇紧急情况等，我们可以第一时间联系您。</span></td>
								</tr>
								<tr>
									<td class="title">手机:<strong>*</strong></td>
									<td><input name="vo.mobile" type="text" maxlength="15" onblur="checkMobile(this,15)" /> <span
										class="c_999">请输入您的手机号码,请不要带“-”连接符</span>
									</td>
								</tr>
								<tr>
									<td class="title">Q Q:<strong>&nbsp;</strong></td>
									<td>
										<input name="vo.qq" type="text"  maxlength="12" onblur="checkEmtryNumber(this,12)" /> 
										<span class="c_999">请输入您的QQ号码。</span>
									</td>
								</tr>
								<%--<tr>
									<td class="title">请输入验证码:<strong>*</strong></td>
									<td><img id="oauth"
										onclick="this.src='/oauth/getauthcode?i='+Math.random();"
										style="float:left; height:25px; width:70px; margin-right:5px; "
										title="点击刷新" alt="验证码" src="/oauth/getauthcode" class="yzm" />
										<input name="ctl00$cph$authCode" type="text" id="cph_authCode"
										maxlength="4" style="width:83px; height:25px;" />
										<span class="c_999"> 请输入图中4位字符（不区分大小写）。看不清楚验证码，请点击图片刷新。</span>
									</td>
								</tr>
							--%></table>
						</div>
						<!--tab-->
						<p class="btn">
							<input type="button" name="" value="注册" onclick="save('registerForm')" />
						</p>
					</div>
					</form>
					<!--regist-->
				</div>
				<!--rwl-->
				<div class="rwr">
					<div class="rwr1">
						<p class="rwr_title">
							<span>我们如何保证安全？</span>
						</p>
						<p class="state">我们非常重视保护客户的信息安全，以下是我们保证会员数据安全的手段之一：</p>
						<ul>
							<li>操作密码保护</li>
							<li>IP地址记录</li>
							<li>操作日志记录</li>
							<li>会员数据加密</li>
						</ul>
					</div>
					<!--rwr1-->
					<div class="rwr1" style="margin-top:15px;">
						<p class="rwr_title">
							<span>我们如何保证安全？</span>
						</p>
						<p class="state">
							我们的客户部门一直致力于为我们的会员提供优质的服务。<br /> <br /> 如果您有什么问题或疑问，可以拨打下面服务电话
							进行咨询。
						</p>
						<a href="javascript:void(0)" class="phone"></a>
						<p class="state">如果您更喜欢EMAIL形式沟通，可以发邮件到我们的客服邮箱：</p>
						<a href="javascript:void(0)" class="email"></a>

					</div>
					<!--rwr1-->
				</div>
			</div>
			<!--regist_wrap-->
		</div>

		<%@include file="/WEB-INF/client/common/footer.jsp"%>
	</div>
</body>
</html>




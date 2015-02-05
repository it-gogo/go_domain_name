<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String name=request.getParameter("name");
	request.setAttribute("name", name);
 %>
<title>域名交易 - 域名出售购买 - 域名买卖就来【62优名网】</title>
<link href="<%=request.getContextPath() %>/css/client/css/public.css" rel="stylesheet" />
<script src="<%=request.getContextPath() %>/js/jquery/jquery-1.8.2.min.js"></script>
<script src="<%=request.getContextPath() %>/js/jquery/jquery.form.js"></script>
<script src="<%=request.getContextPath() %>/js/client/common.js"></script>
<style>
.checkCss{
	background: url(<%=request.getContextPath() %>/css/client/images/regist_icos.png) left -35px no-repeat;
	text-indent:15px;
	color: red;
	display: inline-block;
	height: 14px;
	line-height: 14px;
}
</style>


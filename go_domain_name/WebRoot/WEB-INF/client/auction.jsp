<%@ page language="java"  pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<jsp:include page="/WEB-INF/client/common/head.jsp" >
  		<jsp:param value="拍卖域名" name="name"/>
	</jsp:include>
	<link href="<%=request.getContextPath() %>/css/client/css/content.css" rel="stylesheet" />
</head>
<body>
<div>
    	<jsp:include page="/WEB-INF/client/common/header.jsp" >
    		<jsp:param value="拍卖域名" name="name"/>
	 	</jsp:include>
        
    	<div class="div_980">
		<div id="sitemap">    
		    <%@include file="/WEB-INF/client/common/updTimeWrap.jsp" %>
		    <div id="cph_serverTime_path">当前位置：<a href='/'>首页</a>&nbsp;>>&nbsp;<a href="/auction/active">拍卖域名</a>&nbsp;>>&nbsp;<h1><a href='http://www.62.com/auction/active'>正在拍卖域名</a></h1></div>
		</div>
		<div class="clear_right"></div>      
        <div class="idx_right">
            <p class="title2">域名竞拍</p>
            <div class="process">
                <p>提交拍卖申请</p>
                <span></span>
                <p>审核通过</p>
                <span></span>
                <p>进入出价开拍列表</p>
                <span></span>
                <p>买家出价竞拍</p>
                <span></span>
                <p>拍卖结束</p>
                <span></span>
                <p>最高出价者中标</p>
                <span></span>
                <p>系统自动发起交易</p>
            </div>
            <h2 class="title2">快捷导航</h2>
            <div class="nva">
                <p><span class="sp_r">>></span><span style="background-position:center 0" class="sp_ico"></span><a href="http://www.62.com/buy-domains">议价域名</a></p>
                <p><span class="sp_r">>></span><span style="background-position:center -16px" class="sp_ico"></span><a href="http://www.62.com/auction/active">拍卖域名</a></p>
                <p><span class="sp_r">>></span><span style="background-position:center -30px" class="sp_ico"></span><a href="http://www.62.com/bargain">优质域名</a></p>
                <p><span class="sp_r">>></span><span style="background-position:center -46px" class="sp_ico"></span><a href="http://www.62.com/hotsale">一口价域名</a></p>
                <p><span class="sp_r">>></span><span style="background-position:center -63px" class="sp_ico"></span>我的账户</p>
            </div>            
        </div>
        <div class="idx_left">
            <div class="a_143_wrap">
                <a class="a_143" href="javascript:void(0)"><strong>正在拍卖域名</strong></a>
                <a href="http://www.62.com/auction/showcase">出价开拍域名</a>
                <a href="http://www.62.com/auction/recommend">推荐在拍域名</a>
                <a href="http://www.62.com/auction/end">拍卖结束域名</a>
            </div>
            <table class="tb_1">
                <tr><th class="td_xh"></th><th><span class="sp_sort" k="domainName">域名</span></th><th style="text-align:right;"><span class="sp_sort" k="offer">当前价格</span></th><th>当前领先</th><th><span class="sp_sort" k="cs">竞价次数</span></th><th><span class="sp_desc"  k="overtime">剩余时间</span></th><th>操作</th></tr>
            </table>
            <div id="paging"></div>
        </div>
    </div>
    <div class="clear_right"></div>


        

	<%@include file="/WEB-INF/client/common/footer.jsp" %>
    </div>
</body>
</html>



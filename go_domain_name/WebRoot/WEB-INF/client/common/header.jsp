<%@ page language="java"  pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
	String name=request.getParameter("name");
	request.setAttribute("name", name);
 %>
<!--微信关注-->
<div class="wechat" title="微信二维码"></div>
<div class="gotobtm" title="去底部"></div>
<div id="header">
    <div id="head_top">
        <ul id="ul_right">
            <li id="li_user"></li>
            <li id="li_rg"><a rel="nofollow" href="/register">注册</a></li>
            <li id="li_lg"><a rel="nofollow" href="/login">登录</a></li>                    
            <li><a target="_blank" href="http://www.wrz.com">域名融资</a></li>
            <li><a target="_blank" href="http://gj.62.com">域名管家</a></li>
            <li><a target="_blank" style="color:#d95b45;" href="http://whois.62.com">域名工具</a></li>
            <li style="padding-right:0; padding-right:24px; background:url(<%=request.getContextPath() %>/css/client/images/new.png) no-repeat right top;"><a target="_blank" style="color:#d95b45;" href="/gj">域名估价</a></li>
        </ul>
        <div id="lang_wrap">
            <span id="language"></span>
            <span style="background:url(<%=request.getContextPath() %>/css/client/images/line-2_02.png) no-repeat center; padding:0 10px; float:left; height:31px;"></span>
            <span style=" display:inline-block; height:31px;line-height:31px; padding-left:20px; float:left;  background:url(<%=request.getContextPath() %>/css/client/images/mail_03.png) no-repeat 0 10px;">support@62.com</span>
            <span style="background:url(<%=request.getContextPath() %>/css/client/images/line-2_02.png) no-repeat center; padding:0 10px; float:left; height:31px;"></span>
            <span style=" display:inline-block; height:31px;line-height:31px; float:left;"><a rel="nofollow" href="/help">帮助中心</a></span>
            <span style="background:url(<%=request.getContextPath() %>/css/client/images/line-2_02.png) no-repeat center; padding:0 10px; float:left; height:31px;"></span>
            <span style=" display:inline-block; height:31px;line-height:31px; float:left;"><a rel="nofollow" href="/account/finance/banks">付款方式</a></span>              

            <ul id="lang_select">
                <li kvalue="zh-cn"></li>
                <li kvalue="en-us"></li>
                <li kvalue="zh-hk"></li>
            </ul>
        </div>
    </div>
    <div id="center">                
        <div id="h1_logo"><a href="http://www.62.com" style="float:left;" title="优名网"><img alt="优名网" src="<%=request.getContextPath() %>/css/client/images/christmas.png"></a></div>
        <div id="search1">
            <p><span style="background:url(<%=request.getContextPath() %>/css/client/images/taoyuming_03.png);color:white;">淘域名</span><span id="whois">查Whois</span></p>
            <div style="position:relative">
                <input name="ctl00$txt_search1" type="text" id="txt_search1" class="inputTips" tips="请输入域名关键字" />
                <ul id="searchTips">
                </ul>
            </div>
            <input name="ctl00$btn_search" type="button" id="btn_search" class="btn_67_31" value="搜索" />
        </div>
        <div id="search2">
            <p><span id="domain">淘域名</span><span style="background:url(<%=request.getContextPath() %>/css/client/images/taoyuming_03.png);color:white;">查Whois</span></p>
            <div>
                <input name="ctl00$txt_search2" type="text" id="txt_search2" class="inputTips" tips="请输入域名关键字" />
            </div>
            <input name="ctl00$btn_whois" type="button" id="btn_whois" class="btn_67_31" value="搜索" />
        </div>
        <div id="call_me">
            <a rel="nofollow" href="javascript:void(0);"></a>
        </div>
    </div>
    <div id="menu_wrap">
        <ul id="menu">
            <li <s:if test="#request.name=='首页'"> class="selected_li"</s:if> ><a href="../client/qhomeAction!home.action">首页</a></li>
            <li <s:if test="#request.name=='买域名'"> class="selected_li"</s:if> ><a href="../client/qbuyAction!buy.action">买域名</a></li>
            <li <s:if test="#request.name=='卖域名'"> class="selected_li"</s:if> ><a href="../client/qsellAction!sell.action">卖域名</a></li>
            <li <s:if test="#request.name=='拍卖域名'"> class="selected_li"</s:if> ><a href="../client/qauctionAction!auction.action">拍卖域名</a></li>
            <li <s:if test="#request.name=='一口价域名'"> class="selected_li"</s:if> ><a href="../client/qflatlyPriceAction!flatlyPrice.action">一口价域名</a></li>
            <li <s:if test="#request.name=='优质域名'"> class="selected_li"</s:if> ><a href="../client/qhighQualityAction!highQuality.action">优质域名</a></li>
            <li <s:if test="#request.name=='域名中介'"> class="selected_li"</s:if> >
                <a href="../client/qescrowAction!escrow.action">域名中介</a>
                <span style="background:url(<%=request.getContextPath() %>/css/client/images/hot_03.png); position:absolute;top:3px;left:-26px;display:inline-block; width:24px; height:16px;"></span>
            </l <s:if test="#request.name=='我的账户'"> class="selected_li"</s:if> i>
            <li><a rel="nofollow" href="../account/qloginAction!login.action">我的账户</a></li>
        </ul>
    </div>
</div>
        

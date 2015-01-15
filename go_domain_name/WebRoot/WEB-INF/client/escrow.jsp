<%@ page language="java"  pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="/WEB-INF/client/common/head.jsp" >
  		<jsp:param value="域名中介" name="name"/>
	</jsp:include>
</head>
<body>
    <div>
        <jsp:include page="/WEB-INF/client/common/header.jsp" >
  		<jsp:param value="域名中介" name="name"/>
	</jsp:include>

        
    <div class="div_980">
        
<div id="sitemap">    
    <%@include file="/WEB-INF/client/common/updTimeWrap.jsp" %>
    <div id="cph_serverTime_path">当前位置：<a href='/'>首页</a>&nbsp;>>&nbsp;<h1><a href="/escrow">域名中介</a></h1></div>
</div>
<script src="/Javascript/serverTime.js"></script>  
<div class="clear_right"></div>      

        <div class="idx_right">
            <p class="title2"><span class="wb_title">我们的服务</span></p>
            <div class="ourServices">
                <a href="/escrow"><span style="color:#ff6600">域名中介</span></a>
                <a href="/escrow/procurement"><span>域名代购</span></a>                  
            </div>
            <p class="title2">域名中介成功案例</p>
            <div class="process" style="padding-left:10px;">
                <table class="tb_escrow">
                    <tr><th>域名</th><th>买家</th><th>经纪人</th></tr>
                    
                            <tr>
                                <td>33.com</td>
                                <td><span title="whois">whois</span></td>
                                <td>Jim</td></tr>
                        
                            <tr>
                                <td>71.com</td>
                                <td><span title="whois">whois</span></td>
                                <td>Anne</td></tr>
                        
                            <tr>
                                <td>64.com</td>
                                <td><span title="whois">whois</span></td>
                                <td>Gary</td></tr>
                        
                            <tr>
                                <td>wifi.com</td>
                                <td><span title="科为网络">科为网络</span></td>
                                <td>Raymond</td></tr>
                        
                            <tr>
                                <td>68.com</td>
                                <td><span title="杨旭">杨旭</span></td>
                                <td>Jim</td></tr>
                        
                            <tr>
                                <td>30.com</td>
                                <td><span title="保密">保密</span></td>
                                <td>Jim</td></tr>
                        
                            <tr>
                                <td>63.com</td>
                                <td><span title="Zhaoshanhe">Zhaoshanhe</span></td>
                                <td>Wilson</td></tr>
                        
                            <tr>
                                <td>73.com</td>
                                <td><span title="刘先生">刘先生</span></td>
                                <td>Wilson</td></tr>
                        
                            <tr>
                                <td>80.com</td>
                                <td><span title="huangsir">huangsir</span></td>
                                <td>Wilson</td></tr>
                        
                            <tr>
                                <td>32.com</td>
                                <td><span title="保密">保密</span></td>
                                <td>Wilson</td></tr>
                        
                            <tr>
                                <td>81.com</td>
                                <td><span title="cuijing">cuijing</span></td>
                                <td>ICE</td></tr>
                        
                            <tr>
                                <td>06.com</td>
                                <td><span title="杨旭">杨旭</span></td>
                                <td>jim</td></tr>
                        
                            <tr>
                                <td>08.com</td>
                                <td><span title="LinYu">LinYu</span></td>
                                <td>jim</td></tr>
                        
                            <tr>
                                <td>0.cn</td>
                                <td><span title="王宇杰">王宇杰</span></td>
                                <td>Raymond</td></tr>
                        
                            <tr>
                                <td>qy.com</td>
                                <td><span title="爱奇艺">爱奇艺</span></td>
                                <td>JIM</td></tr>
                        
                </table>
            </div>
        </div>
        <div class="idx_left">
            <a title="发起中介交易" href="javascript:monitor(18,'/account/orders/start')"><img alt="发起中介交易" src="/images/escrowDomain.jpg" style="height:200px; width:720px;" /></a>
            <div id="div_escrow">
                <span class="separate"></span><span class="tab_select" lf="0px">域名中介服务介绍</span><span class="separate"></span><span lf="-720px" class="tab">我们的优势</span><span class="separate"></span><span class="tab" lf="-1440px">域名中介流程</span><span class="separate"></span>
            </div>
            <div style="width:100%; height:299px; background:#e4edfc; position:relative; overflow:hidden; ">
                <span class="sp_left"></span>
                <span class="sp_right"></span>
                <div id="div_2160" class="div_2160_escrow">
                    <div>
                        <p>客户在购买或出售域名过程中，往往会碰到很多问题，比如双方信用问题、买家付了钱却没有收到域名、卖家给了域名却没有收到钱等等。</p>
                        <br />
                        <p><strong>优名网(62.com)</strong>的域名中介服务可以尽可能保证买卖双方的交易快速、安全。</p>
                        <p class="point">保护卖家 - 只有<strong>优名网(62.com)</strong>收到买家付款后，才需要过户域名给对方。</p>
                        <p class="point">保护买家 - 只有确认买家收到域名后，<strong>优名网(62.com)</strong>才将款项支付给卖家。</p>
                        <br />
                        <p>整个过程<strong>优名网(62.com)</strong>仅充当第三方的角色，以保证双方的利益。</p>
                        <br />
                        <p><a id="go_zj" href="javascript:monitor(18,'/account/orders/start')">发起中介交易</a></p>
                    </div>
                    <div>
                        <p><strong>优名网(62.com)</strong>是国内领先的<strong>域名中介交易</strong>第三方平台，我们以专业的服务和技术保障您的域名交易安全。</p>
                        <br />
                        <p>交易快速、安全、服务有保障。</p>
                        <p class="point">只有在<strong>优名网(62.com)</strong>确认收到买家付款后，卖家才会被通知转移域名。</p>
                        <p class="point">只有在买家确认收到域名后，<strong>优名网(62.com)</strong>才会将款项支付给卖家。</p>
                        <p class="point">您可以全程监控交易状态。</p>
                        <br />
                        <p>普通会员5.0%中介服务费，银牌会员4.0%，金牌会员3.5%，没有最低金额限制，可由交易任何一方承担，也可双方平摊。</p>
                        <br />
                        <p><span style="color:#f96b57"><strong>优名网(62.com)</strong>中介服务保证：</span>如果交易因为某些原因无法正常完成，买家将获得全额退款，而卖家也不会失去域名。我们同时保护买卖双方，确保任何一方不会遭受损失。 </p>
                    </div>
                    <div>
                        <p class="point_xh"><span>1</span>买卖双方确认交易条款</p>
                        <p>买卖双方到<strong>优名网(62.com)</strong><a href="/register" style="background:#f96b57; border-radius:2px; color:white; display:inline-block;width:125px; text-align:center; height:21px; line-height:21px;">注册一个免费帐号</a>，然后任何一方均可申请域名中介服务。发起中介交易后，买卖双方在自愿的基础上确认交易内容，包括交易域名、金额、由谁承担中介费、域名过户信息等。</p>
                        <p class="point_xh"><span>2</span>买家付款到中介帐号</p>
                        <p>买家可通过在线充值、银行汇款等方式，将交易款项支付到<strong>优名网(62.com)</strong>帐号，并填写接收域名方式，如果买家选择银行汇款，需要<strong>优名网(62.com)</strong>确认是否已经到帐，优名网的确认过程需要一到两个工作日。</p>
                        <p class="point_xh"><span>3</span>卖家过户域名给买家</p>
                        <p><strong>优名网(62.com)</strong>确认收到买家付款后，系统会邮件通知卖家开始转移域名/PUSH域名给买家。</p>
                        <p class="point_xh"><span>4</span>优名网付款给卖家</p>
                        <p>买家确认已经收到域名并确认已是域名所有人后，<strong>优名网(62.com)</strong>将款项支付给卖家，同时收取域名中介费。至此，整个交易正式完成。</p>
                    </div>
                </div>
            </div>
        </div>
    </div>


        

<%@include file="/WEB-INF/client/common/footer.jsp" %>
    </div>
</body>
</html>

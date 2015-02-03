<%@ page language="java"  pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<jsp:include page="/WEB-INF/client/common/head.jsp" >
  		<jsp:param value="卖域名" name="name"/>
	</jsp:include>
	<link href="<%=request.getContextPath() %>/css/client/css/content.css" rel="stylesheet" />
</head>
<body>
    <div>
        <jsp:include page="/WEB-INF/client/common/header.jsp" >
    		<jsp:param value="卖域名" name="name"/>
	 	</jsp:include>

        
    <div class="div_980">
        
<div id="sitemap">    
    <%@include file="/WEB-INF/client/common/updTimeWrap.jsp" %>
    <div id="cph_serverTime_path">当前位置：<a href='/'>首页</a>&nbsp;>>&nbsp;<h1><a href="/sell-domains">卖域名</a></h1></div>
</div>
<script src="/Javascript/serverTime.js"></script>  
<div class="clear_right"></div>      

        <div class="idx_right">
            <div class="sp_125_wrap">
                <span class="sp_125_s"><strong>出售域名</strong></span><span class="sp_125"><strong>拍卖竞价</strong></span>        
                <div class="process">
                    <p>添加出售域名</p>
                    <span></span>
                    <p>买方报价</p>
                    <span></span>
                    <p>双方议价成功</p>
                    <span></span>
                    <p>发起交易</p>
                </div>
                <div class="process" style="display:none">
                    <p>添加出售域名</p>
                    <span></span>
                    <p>申请域名拍卖</p>
                    <span></span>
                    <p>买方竞价</p>
                    <span></span>
                    <p>竞价结束</p>
                    <span></span>
                    <p>发起交易</p>
                </div>
            </div>
            <h2 class="title2" style="margin-top:15px;">快捷导航</h2>
            <div class="nva">
                <p><span class="sp_r">>></span><span style="background-position:center 0" class="sp_ico"></span><a href="http://www.62.com/buy-domains">议价域名</a></p>
                <p><span class="sp_r">>></span><span style="background-position:center -16px" class="sp_ico"></span><a href="http://www.62.com/auction/active">拍卖域名</a></p>
                <p><span class="sp_r">>></span><span style="background-position:center -30px" class="sp_ico"></span><a href="http://www.62.com/bargain">优质域名</a></p>
                <p><span class="sp_r">>></span><span style="background-position:center -46px" class="sp_ico"></span><a href="http://www.62.com/hotsale">一口价域名</a></p>
                <p><span class="sp_r">>></span><span style="background-position:center -63px" class="sp_ico"></span>我的账户</p>
            </div>
        </div>      
        <div class="idx_left" >
            <img src="<%=request.getContextPath() %>/css/client/images/sellDomain.jpg" style="height:200px; width:720px;" />
            <div id="sell_d">
                <div class="idx_left_d1">
                    <div></div>
                    <h2 class="sll_d_p1" style="color:#6bd7e4">展示议价域名</h2>
                    <strong>在线议价 自由买卖</strong>
                </div>
                <div class="idx_left_d1">
                    <div style="background-position:-50px center"></div>
                    <h2 class="sll_d_p1" style="color:#ec7463">申请拍卖域名</h2>
                    <strong>即时竞标 价高者得</strong>
                </div>
                <div class="idx_left_d1">
                    <div style="background-position:-100px center"></div>
                    <h2 class="sll_d_p1" style="color:#e9aa67">展示一口价域名</h2>
                    <strong>明码标价 立即购买</strong>
                </div>
                <div class="idx_left_d1" style="width:180px; border-right:0;">
                    <div style="background-position:-150px center"></div>
                    <h2 class="sll_d_p1" style="color:#65d447">展示优质域名</h2>
                    <strong>品质优越 价格心动</strong>
                </div>                
            </div>
            <div class="quesAns">
                <h3><span>1</span>什么是议价域名？</h3>
                <p>62优名网为域名投资人开设的出售、购买窗口，域名买卖双方可以通过议价的方式自由的在线买卖域名。</p>
                <h3><span>2</span>展示议价域名有什么优势？</h3>
                <p>可以在线议价，自由买卖；具有灵活、高效的特点；是个人域名投资者的最佳选择。</p>
                <h3><span>3</span>怎样体验议价域名？</h3>
                <p>注册账户、点击进入出售域名页面，按要求填写信息。</p>
            </div>
            <div class="quesAns">
                <h3><span>1</span>什么是域名拍卖？</h3>
                <p>域名拍卖是买卖双方通过竞价的方法进行域名交易，在规定的时间内买家各自出价，截止至域名拍卖时间结束，出价最高者得标，须以所出价向卖家购买此拍卖域名。</p>
                <h3><span>2</span>选择域名拍卖需要了解哪些常用名词？</h3>
                <p>起拍价：指卖家设置的起始价格，或其心理价位。</p>
                <p>加价幅度：指出价买家增价的最低金额。</p>
                <p>拍卖保留价：拍卖之前卖家设置的合理保留价，拍卖结束时如没有超过保留价，卖家可以不用交易。</p>
                <p>代理出价：买家参与竞拍时，可以给自己设置一个最高的心理价位,系统自动帮买家按照最少的加价幅度加价。</p>
                <p>押拍：域名审核通过后，卖家需要冻结一定金额的保证金，在拍卖结束后，退还保证金，这种方式为押拍。</p>
                <p>寄拍：与押拍相对，不需要冻结保证金，但要将域名所有权移交给拍卖所在的第三方平台暂时保管。</p>
                <p>保证金：即每个会员参加拍卖时，需要向交易平台预缴的押金。</p>
                <h3><span>3</span>域名拍卖有什么好处？</h3>
                <p>域名拍卖是即使竞价、价高者得到，可以节约买卖双方的时间。</p>
                <h3><span>4</span>域名拍卖流程是怎样的？</h3>
                <p>添加域名 → 申请域名拍卖 → 竞拍 → 成交/流拍 → 结束。</p>
            </div>
            <div class="quesAns">
                <h3><span>1</span>什么是一口价域名？</h3>
                <p>一口价域名，指卖方为出售域名设定具体价格，买家根据价格直接购买，不可议价。即明码标价，立即购买。</p>
                <h3><span>2</span>选择一口价交易有什么好处？</h3>
                <p>明码标价，立即购买。可以节约买卖双方交易时间，降低买卖双方的成本。</p>
            </div>
            <div class="quesAns">
                <h3><span>1</span>什么是优质域名？</h3>
                <p>优质域名通常含义比较通用，商业价值高。且同一类型域名数量上比较稀少。</p>
                <h3><span>2</span>优质域名交易方式符合买卖双方吗？</h3>
                <p>买卖双方都可选择优质域名交易方式购买和出售域名。专业、权威域名交易平台，都展示着优质域名，买卖双方可以直接在其页面上搜索购买优质域名或将手上优质域名展示到第三方域名交易平台。</p>
                <h3><span>3</span>选择优质域名进行交易有什么好处呢？</h3>
                <p>作为买方，可以高效、安全获得跟公司或网站关键词关联的域名。</p>
                <p>作为卖方，申请优质域名交易方式可以高价位、短时间促成交易。</p>
            </div>
        </div>
        <div class="clear_right"></div>
    </div>    


        

	<%@include file="/WEB-INF/client/common/footer.jsp" %>
    </div>
</body>
</html>



<%@ page language="java"  pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<jsp:include page="/WEB-INF/client/common/head.jsp" >
  		<jsp:param value="买域名" name="name"/>
	</jsp:include>
</head>
<body>
    <div>
       <jsp:include page="/WEB-INF/client/common/header.jsp" >
    		<jsp:param value="买域名" name="name"/>
	 	</jsp:include>

        
    <div class="div_980">
        
<div id="sitemap">    
    <%@include file="/WEB-INF/client/common/updTimeWrap.jsp" %>
    <div id="cph_serverTime_path">当前位置：<a href='/'>首页</a>&nbsp;>>&nbsp;<h1><a href="/buy-domains">买域名</a></h1></div>
</div>
<div class="clear_right"></div>      

        <div class="idx_right">
            <h2 class="title2">我要买域名</h2>
            <div class="process">
                <p>搜索域名</p>
                <span></span>
                <p>点击“详情出价”</p>
                <span></span>
                <p>双方议价成功</p>
                <span></span>
                <p>发起交易</p>
                <span></span>
                <p>支付款项</p>
                <span></span>
                <p>接收域名</p>
                <span></span>
                <p>交易完成</p>
            </div>
            <h2 class="title2" style="margin-top: 15px;">快捷导航</h2>
            <div class="nva">
                <p><span class="sp_r">>></span><span style="background-position: center 0" class="sp_ico"></span><a href="http://www.62.com/buy-domains">议价域名</a></p>
                <p><span class="sp_r">>></span><span style="background-position: center -16px" class="sp_ico"></span><a href="http://www.62.com/auction/active">拍卖域名</a></p>
                <p><span class="sp_r">>></span><span style="background-position: center -30px" class="sp_ico"></span><a href="http://www.62.com/bargain">优质域名</a></p>
                <p><span class="sp_r">>></span><span style="background-position: center -46px" class="sp_ico"></span><a href="http://www.62.com/hotsale">一口价域名</a></p>
                <p><span class="sp_r">>></span><span style="background-position: center -63px" class="sp_ico"></span>我的账户</p>
            </div>
        </div>

        <div id="search_wrap">
            <p class="title_search">搜索域名</p>
            <div class="ipt_radio">
                <input class="advSearch_1" type="button" value="高级搜索" />
                域名关键字&nbsp;&nbsp;&nbsp;<span id="inputTips_wrap"><input name="ctl00$cph$txt_keyword" type="text" id="cph_txt_keyword" maxlength="20" class="inputTips" tips="请输入域名关键字" /></span><input name="ctl00$cph$btn_search_sh" type="button" id="cph_btn_search_sh" class="btn_search2" value="搜索" />
                <input type="radio" name="a1" id="rd1" checked="checked" value="1" /><label for="rd1">包含</label>&nbsp;&nbsp;&nbsp;<input name="a1" id="rd2" type="radio" value="2" /><label for="rd2">开头</label>&nbsp;&nbsp;&nbsp;<input name="a1" id="rd3" type="radio" value="3" /><label for="rd3">结尾</label>
            </div>
            <div id="more_ckb">
                <p>
                    <input class="btn_more_suf_1" type="button" value="更多" />常用后缀<input class="select_all_suf" type="button" value="选择所有" />
                </p>
                <span id="cph_ckb_1" class="suffixBox"><input id="cph_ckb_1_0" type="checkbox" name="ctl00$cph$ckb_1$0" value="0" /><label for="cph_ckb_1_0">com</label><input id="cph_ckb_1_1" type="checkbox" name="ctl00$cph$ckb_1$1" value="1" /><label for="cph_ckb_1_1">net</label><input id="cph_ckb_1_2" type="checkbox" name="ctl00$cph$ckb_1$2" value="2" /><label for="cph_ckb_1_2">org</label><input id="cph_ckb_1_3" type="checkbox" name="ctl00$cph$ckb_1$3" value="3" /><label for="cph_ckb_1_3">biz</label><input id="cph_ckb_1_4" type="checkbox" name="ctl00$cph$ckb_1$4" value="4" /><label for="cph_ckb_1_4">info</label><input id="cph_ckb_1_5" type="checkbox" name="ctl00$cph$ckb_1$5" value="5" /><label for="cph_ckb_1_5">asia</label><input id="cph_ckb_1_6" type="checkbox" name="ctl00$cph$ckb_1$6" value="6" /><label for="cph_ckb_1_6">mobi</label><input id="cph_ckb_1_7" type="checkbox" name="ctl00$cph$ckb_1$7" value="47" /><label for="cph_ckb_1_7">cc</label><input id="cph_ckb_1_8" type="checkbox" name="ctl00$cph$ckb_1$8" value="56" /><label for="cph_ckb_1_8">cn</label><input id="cph_ckb_1_9" type="checkbox" name="ctl00$cph$ckb_1$9" value="57" /><label for="cph_ckb_1_9">co</label><input id="cph_ckb_1_10" type="checkbox" name="ctl00$cph$ckb_1$10" value="64" /><label for="cph_ckb_1_10">de</label><input id="cph_ckb_1_11" type="checkbox" name="ctl00$cph$ckb_1$11" value="111" /><label for="cph_ckb_1_11">in</label><input id="cph_ckb_1_12" type="checkbox" name="ctl00$cph$ckb_1$12" value="235" /><label for="cph_ckb_1_12">uk</label><input id="cph_ckb_1_13" type="checkbox" name="ctl00$cph$ckb_1$13" value="3045" /><label for="cph_ckb_1_13">top</label></span>
                <div id="div_more_suf" style="padding: 0">
                    <p>国家后缀<input class="select_all_suf" type="button" value="选择所有" /></p>
                    <span id="cph_ckb_2" class="suffixBox"><input id="cph_ckb_2_0" type="checkbox" name="ctl00$cph$ckb_2$0" value="10" /><label for="cph_ckb_2_0">ac</label><input id="cph_ckb_2_1" type="checkbox" name="ctl00$cph$ckb_2$1" value="11" /><label for="cph_ckb_2_1">ad</label><input id="cph_ckb_2_2" type="checkbox" name="ctl00$cph$ckb_2$2" value="12" /><label for="cph_ckb_2_2">ae</label><input id="cph_ckb_2_3" type="checkbox" name="ctl00$cph$ckb_2$3" value="13" /><label for="cph_ckb_2_3">af</label><input id="cph_ckb_2_4" type="checkbox" name="ctl00$cph$ckb_2$4" value="14" /><label for="cph_ckb_2_4">ag</label><input id="cph_ckb_2_5" type="checkbox" name="ctl00$cph$ckb_2$5" value="15" /><label for="cph_ckb_2_5">ai</label><input id="cph_ckb_2_6" type="checkbox" name="ctl00$cph$ckb_2$6" value="16" /><label for="cph_ckb_2_6">al</label><input id="cph_ckb_2_7" type="checkbox" name="ctl00$cph$ckb_2$7" value="17" /><label for="cph_ckb_2_7">am</label><input id="cph_ckb_2_8" type="checkbox" name="ctl00$cph$ckb_2$8" value="18" /><label for="cph_ckb_2_8">an</label><input id="cph_ckb_2_9" type="checkbox" name="ctl00$cph$ckb_2$9" value="19" /><label for="cph_ckb_2_9">ao</label><input id="cph_ckb_2_10" type="checkbox" name="ctl00$cph$ckb_2$10" value="20" /><label for="cph_ckb_2_10">aq</label><input id="cph_ckb_2_11" type="checkbox" name="ctl00$cph$ckb_2$11" value="21" /><label for="cph_ckb_2_11">ar</label><input id="cph_ckb_2_12" type="checkbox" name="ctl00$cph$ckb_2$12" value="22" /><label for="cph_ckb_2_12">as</label><input id="cph_ckb_2_13" type="checkbox" name="ctl00$cph$ckb_2$13" value="23" /><label for="cph_ckb_2_13">at</label><input id="cph_ckb_2_14" type="checkbox" name="ctl00$cph$ckb_2$14" value="24" /><label for="cph_ckb_2_14">au</label><input id="cph_ckb_2_15" type="checkbox" name="ctl00$cph$ckb_2$15" value="25" /><label for="cph_ckb_2_15">aw</label><input id="cph_ckb_2_16" type="checkbox" name="ctl00$cph$ckb_2$16" value="26" /><label for="cph_ckb_2_16">ax</label><input id="cph_ckb_2_17" type="checkbox" name="ctl00$cph$ckb_2$17" value="27" /><label for="cph_ckb_2_17">az</label><input id="cph_ckb_2_18" type="checkbox" name="ctl00$cph$ckb_2$18" value="28" /><label for="cph_ckb_2_18">ba</label><input id="cph_ckb_2_19" type="checkbox" name="ctl00$cph$ckb_2$19" value="29" /><label for="cph_ckb_2_19">bb</label><input id="cph_ckb_2_20" type="checkbox" name="ctl00$cph$ckb_2$20" value="30" /><label for="cph_ckb_2_20">bd</label><input id="cph_ckb_2_21" type="checkbox" name="ctl00$cph$ckb_2$21" value="31" /><label for="cph_ckb_2_21">be</label><input id="cph_ckb_2_22" type="checkbox" name="ctl00$cph$ckb_2$22" value="32" /><label for="cph_ckb_2_22">bf</label><input id="cph_ckb_2_23" type="checkbox" name="ctl00$cph$ckb_2$23" value="33" /><label for="cph_ckb_2_23">bg</label><input id="cph_ckb_2_24" type="checkbox" name="ctl00$cph$ckb_2$24" value="34" /><label for="cph_ckb_2_24">bh</label><input id="cph_ckb_2_25" type="checkbox" name="ctl00$cph$ckb_2$25" value="35" /><label for="cph_ckb_2_25">bi</label><input id="cph_ckb_2_26" type="checkbox" name="ctl00$cph$ckb_2$26" value="36" /><label for="cph_ckb_2_26">bj</label><input id="cph_ckb_2_27" type="checkbox" name="ctl00$cph$ckb_2$27" value="37" /><label for="cph_ckb_2_27">bm</label><input id="cph_ckb_2_28" type="checkbox" name="ctl00$cph$ckb_2$28" value="38" /><label for="cph_ckb_2_28">bn</label><input id="cph_ckb_2_29" type="checkbox" name="ctl00$cph$ckb_2$29" value="39" /><label for="cph_ckb_2_29">bo</label><input id="cph_ckb_2_30" type="checkbox" name="ctl00$cph$ckb_2$30" value="40" /><label for="cph_ckb_2_30">br</label><input id="cph_ckb_2_31" type="checkbox" name="ctl00$cph$ckb_2$31" value="41" /><label for="cph_ckb_2_31">bs</label><input id="cph_ckb_2_32" type="checkbox" name="ctl00$cph$ckb_2$32" value="42" /><label for="cph_ckb_2_32">bt</label><input id="cph_ckb_2_33" type="checkbox" name="ctl00$cph$ckb_2$33" value="43" /><label for="cph_ckb_2_33">bw</label><input id="cph_ckb_2_34" type="checkbox" name="ctl00$cph$ckb_2$34" value="44" /><label for="cph_ckb_2_34">by</label><input id="cph_ckb_2_35" type="checkbox" name="ctl00$cph$ckb_2$35" value="45" /><label for="cph_ckb_2_35">bz</label><input id="cph_ckb_2_36" type="checkbox" name="ctl00$cph$ckb_2$36" value="46" /><label for="cph_ckb_2_36">ca</label><input id="cph_ckb_2_37" type="checkbox" name="ctl00$cph$ckb_2$37" value="48" /><label for="cph_ckb_2_37">cd</label><input id="cph_ckb_2_38" type="checkbox" name="ctl00$cph$ckb_2$38" value="49" /><label for="cph_ckb_2_38">cf</label><input id="cph_ckb_2_39" type="checkbox" name="ctl00$cph$ckb_2$39" value="50" /><label for="cph_ckb_2_39">cg</label><input id="cph_ckb_2_40" type="checkbox" name="ctl00$cph$ckb_2$40" value="51" /><label for="cph_ckb_2_40">ch</label><input id="cph_ckb_2_41" type="checkbox" name="ctl00$cph$ckb_2$41" value="52" /><label for="cph_ckb_2_41">ci</label><input id="cph_ckb_2_42" type="checkbox" name="ctl00$cph$ckb_2$42" value="53" /><label for="cph_ckb_2_42">ck</label><input id="cph_ckb_2_43" type="checkbox" name="ctl00$cph$ckb_2$43" value="54" /><label for="cph_ckb_2_43">cl</label><input id="cph_ckb_2_44" type="checkbox" name="ctl00$cph$ckb_2$44" value="55" /><label for="cph_ckb_2_44">cm</label><input id="cph_ckb_2_45" type="checkbox" name="ctl00$cph$ckb_2$45" value="58" /><label for="cph_ckb_2_45">cr</label><input id="cph_ckb_2_46" type="checkbox" name="ctl00$cph$ckb_2$46" value="59" /><label for="cph_ckb_2_46">cu</label><input id="cph_ckb_2_47" type="checkbox" name="ctl00$cph$ckb_2$47" value="60" /><label for="cph_ckb_2_47">cv</label><input id="cph_ckb_2_48" type="checkbox" name="ctl00$cph$ckb_2$48" value="61" /><label for="cph_ckb_2_48">cx</label><input id="cph_ckb_2_49" type="checkbox" name="ctl00$cph$ckb_2$49" value="62" /><label for="cph_ckb_2_49">cy</label><input id="cph_ckb_2_50" type="checkbox" name="ctl00$cph$ckb_2$50" value="63" /><label for="cph_ckb_2_50">cz</label><input id="cph_ckb_2_51" type="checkbox" name="ctl00$cph$ckb_2$51" value="65" /><label for="cph_ckb_2_51">dj</label><input id="cph_ckb_2_52" type="checkbox" name="ctl00$cph$ckb_2$52" value="66" /><label for="cph_ckb_2_52">dk</label><input id="cph_ckb_2_53" type="checkbox" name="ctl00$cph$ckb_2$53" value="67" /><label for="cph_ckb_2_53">dm</label><input id="cph_ckb_2_54" type="checkbox" name="ctl00$cph$ckb_2$54" value="68" /><label for="cph_ckb_2_54">do</label><input id="cph_ckb_2_55" type="checkbox" name="ctl00$cph$ckb_2$55" value="69" /><label for="cph_ckb_2_55">dz</label><input id="cph_ckb_2_56" type="checkbox" name="ctl00$cph$ckb_2$56" value="70" /><label for="cph_ckb_2_56">ec</label><input id="cph_ckb_2_57" type="checkbox" name="ctl00$cph$ckb_2$57" value="71" /><label for="cph_ckb_2_57">ee</label><input id="cph_ckb_2_58" type="checkbox" name="ctl00$cph$ckb_2$58" value="72" /><label for="cph_ckb_2_58">eg</label><input id="cph_ckb_2_59" type="checkbox" name="ctl00$cph$ckb_2$59" value="73" /><label for="cph_ckb_2_59">er</label><input id="cph_ckb_2_60" type="checkbox" name="ctl00$cph$ckb_2$60" value="74" /><label for="cph_ckb_2_60">es</label><input id="cph_ckb_2_61" type="checkbox" name="ctl00$cph$ckb_2$61" value="75" /><label for="cph_ckb_2_61">et</label><input id="cph_ckb_2_62" type="checkbox" name="ctl00$cph$ckb_2$62" value="76" /><label for="cph_ckb_2_62">eu</label><input id="cph_ckb_2_63" type="checkbox" name="ctl00$cph$ckb_2$63" value="77" /><label for="cph_ckb_2_63">fi</label><input id="cph_ckb_2_64" type="checkbox" name="ctl00$cph$ckb_2$64" value="78" /><label for="cph_ckb_2_64">fj</label><input id="cph_ckb_2_65" type="checkbox" name="ctl00$cph$ckb_2$65" value="79" /><label for="cph_ckb_2_65">fk</label><input id="cph_ckb_2_66" type="checkbox" name="ctl00$cph$ckb_2$66" value="80" /><label for="cph_ckb_2_66">fm</label><input id="cph_ckb_2_67" type="checkbox" name="ctl00$cph$ckb_2$67" value="81" /><label for="cph_ckb_2_67">fo</label><input id="cph_ckb_2_68" type="checkbox" name="ctl00$cph$ckb_2$68" value="82" /><label for="cph_ckb_2_68">fr</label><input id="cph_ckb_2_69" type="checkbox" name="ctl00$cph$ckb_2$69" value="83" /><label for="cph_ckb_2_69">ga</label><input id="cph_ckb_2_70" type="checkbox" name="ctl00$cph$ckb_2$70" value="84" /><label for="cph_ckb_2_70">gd</label><input id="cph_ckb_2_71" type="checkbox" name="ctl00$cph$ckb_2$71" value="85" /><label for="cph_ckb_2_71">ge</label><input id="cph_ckb_2_72" type="checkbox" name="ctl00$cph$ckb_2$72" value="86" /><label for="cph_ckb_2_72">gf</label><input id="cph_ckb_2_73" type="checkbox" name="ctl00$cph$ckb_2$73" value="87" /><label for="cph_ckb_2_73">gg</label><input id="cph_ckb_2_74" type="checkbox" name="ctl00$cph$ckb_2$74" value="88" /><label for="cph_ckb_2_74">gh</label><input id="cph_ckb_2_75" type="checkbox" name="ctl00$cph$ckb_2$75" value="89" /><label for="cph_ckb_2_75">gi</label><input id="cph_ckb_2_76" type="checkbox" name="ctl00$cph$ckb_2$76" value="90" /><label for="cph_ckb_2_76">gl</label><input id="cph_ckb_2_77" type="checkbox" name="ctl00$cph$ckb_2$77" value="91" /><label for="cph_ckb_2_77">gm</label><input id="cph_ckb_2_78" type="checkbox" name="ctl00$cph$ckb_2$78" value="92" /><label for="cph_ckb_2_78">gn</label><input id="cph_ckb_2_79" type="checkbox" name="ctl00$cph$ckb_2$79" value="93" /><label for="cph_ckb_2_79">gp</label><input id="cph_ckb_2_80" type="checkbox" name="ctl00$cph$ckb_2$80" value="94" /><label for="cph_ckb_2_80">gq</label><input id="cph_ckb_2_81" type="checkbox" name="ctl00$cph$ckb_2$81" value="95" /><label for="cph_ckb_2_81">gr</label><input id="cph_ckb_2_82" type="checkbox" name="ctl00$cph$ckb_2$82" value="96" /><label for="cph_ckb_2_82">gs</label><input id="cph_ckb_2_83" type="checkbox" name="ctl00$cph$ckb_2$83" value="97" /><label for="cph_ckb_2_83">gt</label><input id="cph_ckb_2_84" type="checkbox" name="ctl00$cph$ckb_2$84" value="98" /><label for="cph_ckb_2_84">gu</label><input id="cph_ckb_2_85" type="checkbox" name="ctl00$cph$ckb_2$85" value="99" /><label for="cph_ckb_2_85">gw</label><input id="cph_ckb_2_86" type="checkbox" name="ctl00$cph$ckb_2$86" value="100" /><label for="cph_ckb_2_86">gy</label><input id="cph_ckb_2_87" type="checkbox" name="ctl00$cph$ckb_2$87" value="101" /><label for="cph_ckb_2_87">hk</label><input id="cph_ckb_2_88" type="checkbox" name="ctl00$cph$ckb_2$88" value="102" /><label for="cph_ckb_2_88">hm</label><input id="cph_ckb_2_89" type="checkbox" name="ctl00$cph$ckb_2$89" value="103" /><label for="cph_ckb_2_89">hn</label><input id="cph_ckb_2_90" type="checkbox" name="ctl00$cph$ckb_2$90" value="104" /><label for="cph_ckb_2_90">hr</label><input id="cph_ckb_2_91" type="checkbox" name="ctl00$cph$ckb_2$91" value="105" /><label for="cph_ckb_2_91">ht</label><input id="cph_ckb_2_92" type="checkbox" name="ctl00$cph$ckb_2$92" value="106" /><label for="cph_ckb_2_92">hu</label><input id="cph_ckb_2_93" type="checkbox" name="ctl00$cph$ckb_2$93" value="107" /><label for="cph_ckb_2_93">id</label><input id="cph_ckb_2_94" type="checkbox" name="ctl00$cph$ckb_2$94" value="108" /><label for="cph_ckb_2_94">ie</label><input id="cph_ckb_2_95" type="checkbox" name="ctl00$cph$ckb_2$95" value="109" /><label for="cph_ckb_2_95">il</label><input id="cph_ckb_2_96" type="checkbox" name="ctl00$cph$ckb_2$96" value="110" /><label for="cph_ckb_2_96">im</label><input id="cph_ckb_2_97" type="checkbox" name="ctl00$cph$ckb_2$97" value="112" /><label for="cph_ckb_2_97">io</label><input id="cph_ckb_2_98" type="checkbox" name="ctl00$cph$ckb_2$98" value="113" /><label for="cph_ckb_2_98">iq</label><input id="cph_ckb_2_99" type="checkbox" name="ctl00$cph$ckb_2$99" value="114" /><label for="cph_ckb_2_99">ir</label><input id="cph_ckb_2_100" type="checkbox" name="ctl00$cph$ckb_2$100" value="115" /><label for="cph_ckb_2_100">is</label><input id="cph_ckb_2_101" type="checkbox" name="ctl00$cph$ckb_2$101" value="116" /><label for="cph_ckb_2_101">it</label><input id="cph_ckb_2_102" type="checkbox" name="ctl00$cph$ckb_2$102" value="117" /><label for="cph_ckb_2_102">je</label><input id="cph_ckb_2_103" type="checkbox" name="ctl00$cph$ckb_2$103" value="118" /><label for="cph_ckb_2_103">jm</label><input id="cph_ckb_2_104" type="checkbox" name="ctl00$cph$ckb_2$104" value="119" /><label for="cph_ckb_2_104">jo</label><input id="cph_ckb_2_105" type="checkbox" name="ctl00$cph$ckb_2$105" value="120" /><label for="cph_ckb_2_105">jp</label><input id="cph_ckb_2_106" type="checkbox" name="ctl00$cph$ckb_2$106" value="121" /><label for="cph_ckb_2_106">ke</label><input id="cph_ckb_2_107" type="checkbox" name="ctl00$cph$ckb_2$107" value="122" /><label for="cph_ckb_2_107">kg</label><input id="cph_ckb_2_108" type="checkbox" name="ctl00$cph$ckb_2$108" value="123" /><label for="cph_ckb_2_108">kh</label><input id="cph_ckb_2_109" type="checkbox" name="ctl00$cph$ckb_2$109" value="124" /><label for="cph_ckb_2_109">ki</label><input id="cph_ckb_2_110" type="checkbox" name="ctl00$cph$ckb_2$110" value="125" /><label for="cph_ckb_2_110">km</label><input id="cph_ckb_2_111" type="checkbox" name="ctl00$cph$ckb_2$111" value="126" /><label for="cph_ckb_2_111">kn</label><input id="cph_ckb_2_112" type="checkbox" name="ctl00$cph$ckb_2$112" value="127" /><label for="cph_ckb_2_112">kp</label><input id="cph_ckb_2_113" type="checkbox" name="ctl00$cph$ckb_2$113" value="128" /><label for="cph_ckb_2_113">kr</label><input id="cph_ckb_2_114" type="checkbox" name="ctl00$cph$ckb_2$114" value="129" /><label for="cph_ckb_2_114">kw</label><input id="cph_ckb_2_115" type="checkbox" name="ctl00$cph$ckb_2$115" value="130" /><label for="cph_ckb_2_115">ky</label><input id="cph_ckb_2_116" type="checkbox" name="ctl00$cph$ckb_2$116" value="131" /><label for="cph_ckb_2_116">kz</label><input id="cph_ckb_2_117" type="checkbox" name="ctl00$cph$ckb_2$117" value="132" /><label for="cph_ckb_2_117">la</label><input id="cph_ckb_2_118" type="checkbox" name="ctl00$cph$ckb_2$118" value="133" /><label for="cph_ckb_2_118">lb</label><input id="cph_ckb_2_119" type="checkbox" name="ctl00$cph$ckb_2$119" value="134" /><label for="cph_ckb_2_119">lc</label><input id="cph_ckb_2_120" type="checkbox" name="ctl00$cph$ckb_2$120" value="135" /><label for="cph_ckb_2_120">li</label><input id="cph_ckb_2_121" type="checkbox" name="ctl00$cph$ckb_2$121" value="136" /><label for="cph_ckb_2_121">lk</label><input id="cph_ckb_2_122" type="checkbox" name="ctl00$cph$ckb_2$122" value="137" /><label for="cph_ckb_2_122">lr</label><input id="cph_ckb_2_123" type="checkbox" name="ctl00$cph$ckb_2$123" value="138" /><label for="cph_ckb_2_123">ls</label><input id="cph_ckb_2_124" type="checkbox" name="ctl00$cph$ckb_2$124" value="139" /><label for="cph_ckb_2_124">lt</label><input id="cph_ckb_2_125" type="checkbox" name="ctl00$cph$ckb_2$125" value="140" /><label for="cph_ckb_2_125">lu</label><input id="cph_ckb_2_126" type="checkbox" name="ctl00$cph$ckb_2$126" value="141" /><label for="cph_ckb_2_126">lv</label><input id="cph_ckb_2_127" type="checkbox" name="ctl00$cph$ckb_2$127" value="142" /><label for="cph_ckb_2_127">ly</label><input id="cph_ckb_2_128" type="checkbox" name="ctl00$cph$ckb_2$128" value="143" /><label for="cph_ckb_2_128">ma</label><input id="cph_ckb_2_129" type="checkbox" name="ctl00$cph$ckb_2$129" value="144" /><label for="cph_ckb_2_129">mc</label><input id="cph_ckb_2_130" type="checkbox" name="ctl00$cph$ckb_2$130" value="145" /><label for="cph_ckb_2_130">md</label><input id="cph_ckb_2_131" type="checkbox" name="ctl00$cph$ckb_2$131" value="146" /><label for="cph_ckb_2_131">me</label><input id="cph_ckb_2_132" type="checkbox" name="ctl00$cph$ckb_2$132" value="147" /><label for="cph_ckb_2_132">mg</label><input id="cph_ckb_2_133" type="checkbox" name="ctl00$cph$ckb_2$133" value="148" /><label for="cph_ckb_2_133">mh</label><input id="cph_ckb_2_134" type="checkbox" name="ctl00$cph$ckb_2$134" value="149" /><label for="cph_ckb_2_134">mk</label><input id="cph_ckb_2_135" type="checkbox" name="ctl00$cph$ckb_2$135" value="150" /><label for="cph_ckb_2_135">ml</label><input id="cph_ckb_2_136" type="checkbox" name="ctl00$cph$ckb_2$136" value="151" /><label for="cph_ckb_2_136">mm</label><input id="cph_ckb_2_137" type="checkbox" name="ctl00$cph$ckb_2$137" value="152" /><label for="cph_ckb_2_137">mn</label><input id="cph_ckb_2_138" type="checkbox" name="ctl00$cph$ckb_2$138" value="153" /><label for="cph_ckb_2_138">mo</label><input id="cph_ckb_2_139" type="checkbox" name="ctl00$cph$ckb_2$139" value="154" /><label for="cph_ckb_2_139">mp</label><input id="cph_ckb_2_140" type="checkbox" name="ctl00$cph$ckb_2$140" value="155" /><label for="cph_ckb_2_140">mq</label><input id="cph_ckb_2_141" type="checkbox" name="ctl00$cph$ckb_2$141" value="156" /><label for="cph_ckb_2_141">mr</label><input id="cph_ckb_2_142" type="checkbox" name="ctl00$cph$ckb_2$142" value="157" /><label for="cph_ckb_2_142">ms</label><input id="cph_ckb_2_143" type="checkbox" name="ctl00$cph$ckb_2$143" value="158" /><label for="cph_ckb_2_143">mt</label><input id="cph_ckb_2_144" type="checkbox" name="ctl00$cph$ckb_2$144" value="159" /><label for="cph_ckb_2_144">mu</label><input id="cph_ckb_2_145" type="checkbox" name="ctl00$cph$ckb_2$145" value="160" /><label for="cph_ckb_2_145">mv</label><input id="cph_ckb_2_146" type="checkbox" name="ctl00$cph$ckb_2$146" value="161" /><label for="cph_ckb_2_146">mw</label><input id="cph_ckb_2_147" type="checkbox" name="ctl00$cph$ckb_2$147" value="162" /><label for="cph_ckb_2_147">mx</label><input id="cph_ckb_2_148" type="checkbox" name="ctl00$cph$ckb_2$148" value="163" /><label for="cph_ckb_2_148">my</label><input id="cph_ckb_2_149" type="checkbox" name="ctl00$cph$ckb_2$149" value="164" /><label for="cph_ckb_2_149">mz</label><input id="cph_ckb_2_150" type="checkbox" name="ctl00$cph$ckb_2$150" value="165" /><label for="cph_ckb_2_150">na</label><input id="cph_ckb_2_151" type="checkbox" name="ctl00$cph$ckb_2$151" value="166" /><label for="cph_ckb_2_151">nc</label><input id="cph_ckb_2_152" type="checkbox" name="ctl00$cph$ckb_2$152" value="167" /><label for="cph_ckb_2_152">ne</label><input id="cph_ckb_2_153" type="checkbox" name="ctl00$cph$ckb_2$153" value="168" /><label for="cph_ckb_2_153">nf</label><input id="cph_ckb_2_154" type="checkbox" name="ctl00$cph$ckb_2$154" value="169" /><label for="cph_ckb_2_154">ng</label><input id="cph_ckb_2_155" type="checkbox" name="ctl00$cph$ckb_2$155" value="170" /><label for="cph_ckb_2_155">ni</label><input id="cph_ckb_2_156" type="checkbox" name="ctl00$cph$ckb_2$156" value="171" /><label for="cph_ckb_2_156">nl</label><input id="cph_ckb_2_157" type="checkbox" name="ctl00$cph$ckb_2$157" value="172" /><label for="cph_ckb_2_157">no</label><input id="cph_ckb_2_158" type="checkbox" name="ctl00$cph$ckb_2$158" value="173" /><label for="cph_ckb_2_158">np</label><input id="cph_ckb_2_159" type="checkbox" name="ctl00$cph$ckb_2$159" value="174" /><label for="cph_ckb_2_159">nr</label><input id="cph_ckb_2_160" type="checkbox" name="ctl00$cph$ckb_2$160" value="175" /><label for="cph_ckb_2_160">nu</label><input id="cph_ckb_2_161" type="checkbox" name="ctl00$cph$ckb_2$161" value="176" /><label for="cph_ckb_2_161">nz</label><input id="cph_ckb_2_162" type="checkbox" name="ctl00$cph$ckb_2$162" value="177" /><label for="cph_ckb_2_162">om</label><input id="cph_ckb_2_163" type="checkbox" name="ctl00$cph$ckb_2$163" value="178" /><label for="cph_ckb_2_163">pa</label><input id="cph_ckb_2_164" type="checkbox" name="ctl00$cph$ckb_2$164" value="179" /><label for="cph_ckb_2_164">pe</label><input id="cph_ckb_2_165" type="checkbox" name="ctl00$cph$ckb_2$165" value="180" /><label for="cph_ckb_2_165">pf</label><input id="cph_ckb_2_166" type="checkbox" name="ctl00$cph$ckb_2$166" value="181" /><label for="cph_ckb_2_166">pg</label><input id="cph_ckb_2_167" type="checkbox" name="ctl00$cph$ckb_2$167" value="182" /><label for="cph_ckb_2_167">ph</label><input id="cph_ckb_2_168" type="checkbox" name="ctl00$cph$ckb_2$168" value="183" /><label for="cph_ckb_2_168">pk</label><input id="cph_ckb_2_169" type="checkbox" name="ctl00$cph$ckb_2$169" value="184" /><label for="cph_ckb_2_169">pl</label><input id="cph_ckb_2_170" type="checkbox" name="ctl00$cph$ckb_2$170" value="185" /><label for="cph_ckb_2_170">pm</label><input id="cph_ckb_2_171" type="checkbox" name="ctl00$cph$ckb_2$171" value="186" /><label for="cph_ckb_2_171">pn</label><input id="cph_ckb_2_172" type="checkbox" name="ctl00$cph$ckb_2$172" value="187" /><label for="cph_ckb_2_172">pr</label><input id="cph_ckb_2_173" type="checkbox" name="ctl00$cph$ckb_2$173" value="188" /><label for="cph_ckb_2_173">ps</label><input id="cph_ckb_2_174" type="checkbox" name="ctl00$cph$ckb_2$174" value="189" /><label for="cph_ckb_2_174">pt</label><input id="cph_ckb_2_175" type="checkbox" name="ctl00$cph$ckb_2$175" value="190" /><label for="cph_ckb_2_175">pw</label><input id="cph_ckb_2_176" type="checkbox" name="ctl00$cph$ckb_2$176" value="191" /><label for="cph_ckb_2_176">py</label><input id="cph_ckb_2_177" type="checkbox" name="ctl00$cph$ckb_2$177" value="192" /><label for="cph_ckb_2_177">qa</label><input id="cph_ckb_2_178" type="checkbox" name="ctl00$cph$ckb_2$178" value="193" /><label for="cph_ckb_2_178">re</label><input id="cph_ckb_2_179" type="checkbox" name="ctl00$cph$ckb_2$179" value="194" /><label for="cph_ckb_2_179">ro</label><input id="cph_ckb_2_180" type="checkbox" name="ctl00$cph$ckb_2$180" value="195" /><label for="cph_ckb_2_180">rs</label><input id="cph_ckb_2_181" type="checkbox" name="ctl00$cph$ckb_2$181" value="196" /><label for="cph_ckb_2_181">ru</label><input id="cph_ckb_2_182" type="checkbox" name="ctl00$cph$ckb_2$182" value="197" /><label for="cph_ckb_2_182">rw</label><input id="cph_ckb_2_183" type="checkbox" name="ctl00$cph$ckb_2$183" value="198" /><label for="cph_ckb_2_183">sa</label><input id="cph_ckb_2_184" type="checkbox" name="ctl00$cph$ckb_2$184" value="199" /><label for="cph_ckb_2_184">sb</label><input id="cph_ckb_2_185" type="checkbox" name="ctl00$cph$ckb_2$185" value="200" /><label for="cph_ckb_2_185">sc</label><input id="cph_ckb_2_186" type="checkbox" name="ctl00$cph$ckb_2$186" value="201" /><label for="cph_ckb_2_186">sd</label><input id="cph_ckb_2_187" type="checkbox" name="ctl00$cph$ckb_2$187" value="202" /><label for="cph_ckb_2_187">se</label><input id="cph_ckb_2_188" type="checkbox" name="ctl00$cph$ckb_2$188" value="203" /><label for="cph_ckb_2_188">sg</label><input id="cph_ckb_2_189" type="checkbox" name="ctl00$cph$ckb_2$189" value="204" /><label for="cph_ckb_2_189">sh</label><input id="cph_ckb_2_190" type="checkbox" name="ctl00$cph$ckb_2$190" value="205" /><label for="cph_ckb_2_190">si</label><input id="cph_ckb_2_191" type="checkbox" name="ctl00$cph$ckb_2$191" value="206" /><label for="cph_ckb_2_191">sk</label><input id="cph_ckb_2_192" type="checkbox" name="ctl00$cph$ckb_2$192" value="207" /><label for="cph_ckb_2_192">sl</label><input id="cph_ckb_2_193" type="checkbox" name="ctl00$cph$ckb_2$193" value="208" /><label for="cph_ckb_2_193">sm</label><input id="cph_ckb_2_194" type="checkbox" name="ctl00$cph$ckb_2$194" value="209" /><label for="cph_ckb_2_194">sn</label><input id="cph_ckb_2_195" type="checkbox" name="ctl00$cph$ckb_2$195" value="210" /><label for="cph_ckb_2_195">so</label><input id="cph_ckb_2_196" type="checkbox" name="ctl00$cph$ckb_2$196" value="211" /><label for="cph_ckb_2_196">sr</label><input id="cph_ckb_2_197" type="checkbox" name="ctl00$cph$ckb_2$197" value="212" /><label for="cph_ckb_2_197">st</label><input id="cph_ckb_2_198" type="checkbox" name="ctl00$cph$ckb_2$198" value="213" /><label for="cph_ckb_2_198">su</label><input id="cph_ckb_2_199" type="checkbox" name="ctl00$cph$ckb_2$199" value="214" /><label for="cph_ckb_2_199">sv</label><input id="cph_ckb_2_200" type="checkbox" name="ctl00$cph$ckb_2$200" value="215" /><label for="cph_ckb_2_200">sy</label><input id="cph_ckb_2_201" type="checkbox" name="ctl00$cph$ckb_2$201" value="216" /><label for="cph_ckb_2_201">sz</label><input id="cph_ckb_2_202" type="checkbox" name="ctl00$cph$ckb_2$202" value="217" /><label for="cph_ckb_2_202">tc</label><input id="cph_ckb_2_203" type="checkbox" name="ctl00$cph$ckb_2$203" value="218" /><label for="cph_ckb_2_203">td</label><input id="cph_ckb_2_204" type="checkbox" name="ctl00$cph$ckb_2$204" value="219" /><label for="cph_ckb_2_204">tf</label><input id="cph_ckb_2_205" type="checkbox" name="ctl00$cph$ckb_2$205" value="220" /><label for="cph_ckb_2_205">tg</label><input id="cph_ckb_2_206" type="checkbox" name="ctl00$cph$ckb_2$206" value="221" /><label for="cph_ckb_2_206">th</label><input id="cph_ckb_2_207" type="checkbox" name="ctl00$cph$ckb_2$207" value="222" /><label for="cph_ckb_2_207">tj</label><input id="cph_ckb_2_208" type="checkbox" name="ctl00$cph$ckb_2$208" value="223" /><label for="cph_ckb_2_208">tk</label><input id="cph_ckb_2_209" type="checkbox" name="ctl00$cph$ckb_2$209" value="224" /><label for="cph_ckb_2_209">tl</label><input id="cph_ckb_2_210" type="checkbox" name="ctl00$cph$ckb_2$210" value="225" /><label for="cph_ckb_2_210">tm</label><input id="cph_ckb_2_211" type="checkbox" name="ctl00$cph$ckb_2$211" value="226" /><label for="cph_ckb_2_211">tn</label><input id="cph_ckb_2_212" type="checkbox" name="ctl00$cph$ckb_2$212" value="227" /><label for="cph_ckb_2_212">to</label><input id="cph_ckb_2_213" type="checkbox" name="ctl00$cph$ckb_2$213" value="228" /><label for="cph_ckb_2_213">tr</label><input id="cph_ckb_2_214" type="checkbox" name="ctl00$cph$ckb_2$214" value="229" /><label for="cph_ckb_2_214">tt</label><input id="cph_ckb_2_215" type="checkbox" name="ctl00$cph$ckb_2$215" value="230" /><label for="cph_ckb_2_215">tv</label><input id="cph_ckb_2_216" type="checkbox" name="ctl00$cph$ckb_2$216" value="231" /><label for="cph_ckb_2_216">tw</label><input id="cph_ckb_2_217" type="checkbox" name="ctl00$cph$ckb_2$217" value="232" /><label for="cph_ckb_2_217">tz</label><input id="cph_ckb_2_218" type="checkbox" name="ctl00$cph$ckb_2$218" value="233" /><label for="cph_ckb_2_218">ua</label><input id="cph_ckb_2_219" type="checkbox" name="ctl00$cph$ckb_2$219" value="234" /><label for="cph_ckb_2_219">ug</label><input id="cph_ckb_2_220" type="checkbox" name="ctl00$cph$ckb_2$220" value="236" /><label for="cph_ckb_2_220">us</label><input id="cph_ckb_2_221" type="checkbox" name="ctl00$cph$ckb_2$221" value="237" /><label for="cph_ckb_2_221">uy</label><input id="cph_ckb_2_222" type="checkbox" name="ctl00$cph$ckb_2$222" value="238" /><label for="cph_ckb_2_222">uz</label><input id="cph_ckb_2_223" type="checkbox" name="ctl00$cph$ckb_2$223" value="239" /><label for="cph_ckb_2_223">va</label><input id="cph_ckb_2_224" type="checkbox" name="ctl00$cph$ckb_2$224" value="240" /><label for="cph_ckb_2_224">vc</label><input id="cph_ckb_2_225" type="checkbox" name="ctl00$cph$ckb_2$225" value="241" /><label for="cph_ckb_2_225">ve</label><input id="cph_ckb_2_226" type="checkbox" name="ctl00$cph$ckb_2$226" value="242" /><label for="cph_ckb_2_226">vg</label><input id="cph_ckb_2_227" type="checkbox" name="ctl00$cph$ckb_2$227" value="243" /><label for="cph_ckb_2_227">vi</label><input id="cph_ckb_2_228" type="checkbox" name="ctl00$cph$ckb_2$228" value="244" /><label for="cph_ckb_2_228">vn</label><input id="cph_ckb_2_229" type="checkbox" name="ctl00$cph$ckb_2$229" value="245" /><label for="cph_ckb_2_229">vu</label><input id="cph_ckb_2_230" type="checkbox" name="ctl00$cph$ckb_2$230" value="246" /><label for="cph_ckb_2_230">wf</label><input id="cph_ckb_2_231" type="checkbox" name="ctl00$cph$ckb_2$231" value="247" /><label for="cph_ckb_2_231">ws</label><input id="cph_ckb_2_232" type="checkbox" name="ctl00$cph$ckb_2$232" value="248" /><label for="cph_ckb_2_232">ye</label><input id="cph_ckb_2_233" type="checkbox" name="ctl00$cph$ckb_2$233" value="249" /><label for="cph_ckb_2_233">yt</label><input id="cph_ckb_2_234" type="checkbox" name="ctl00$cph$ckb_2$234" value="250" /><label for="cph_ckb_2_234">yu</label><input id="cph_ckb_2_235" type="checkbox" name="ctl00$cph$ckb_2$235" value="251" /><label for="cph_ckb_2_235">za</label><input id="cph_ckb_2_236" type="checkbox" name="ctl00$cph$ckb_2$236" value="252" /><label for="cph_ckb_2_236">zm</label><input id="cph_ckb_2_237" type="checkbox" name="ctl00$cph$ckb_2$237" value="253" /><label for="cph_ckb_2_237">zw</label></span>
                    <p>其它后缀<input class="select_all_suf" type="button" value="选择所有" /></p>
                    <span id="cph_ckb_3" class="suffixBox"><input id="cph_ckb_3_0" type="checkbox" name="ctl00$cph$ckb_3$0" value="7" /><label for="cph_ckb_3_0">pro</label><input id="cph_ckb_3_1" type="checkbox" name="ctl00$cph$ckb_3$1" value="8" /><label for="cph_ckb_3_1">name</label><input id="cph_ckb_3_2" type="checkbox" name="ctl00$cph$ckb_3$2" value="9" /><label for="cph_ckb_3_2">xxx</label><input id="cph_ckb_3_3" type="checkbox" name="ctl00$cph$ckb_3$3" value="254" /><label for="cph_ckb_3_3">aero</label><input id="cph_ckb_3_4" type="checkbox" name="ctl00$cph$ckb_3$4" value="255" /><label for="cph_ckb_3_4">arpa</label><input id="cph_ckb_3_5" type="checkbox" name="ctl00$cph$ckb_3$5" value="256" /><label for="cph_ckb_3_5">cat</label><input id="cph_ckb_3_6" type="checkbox" name="ctl00$cph$ckb_3$6" value="257" /><label for="cph_ckb_3_6">coop</label><input id="cph_ckb_3_7" type="checkbox" name="ctl00$cph$ckb_3$7" value="258" /><label for="cph_ckb_3_7">edu</label><input id="cph_ckb_3_8" type="checkbox" name="ctl00$cph$ckb_3$8" value="259" /><label for="cph_ckb_3_8">gov</label><input id="cph_ckb_3_9" type="checkbox" name="ctl00$cph$ckb_3$9" value="260" /><label for="cph_ckb_3_9">int</label><input id="cph_ckb_3_10" type="checkbox" name="ctl00$cph$ckb_3$10" value="261" /><label for="cph_ckb_3_10">jobs</label><input id="cph_ckb_3_11" type="checkbox" name="ctl00$cph$ckb_3$11" value="262" /><label for="cph_ckb_3_11">mil</label><input id="cph_ckb_3_12" type="checkbox" name="ctl00$cph$ckb_3$12" value="263" /><label for="cph_ckb_3_12">tel</label><input id="cph_ckb_3_13" type="checkbox" name="ctl00$cph$ckb_3$13" value="264" /><label for="cph_ckb_3_13">travel</label><input id="cph_ckb_3_14" type="checkbox" name="ctl00$cph$ckb_3$14" value="2146" /><label for="cph_ckb_3_14">ae.org</label><input id="cph_ckb_3_15" type="checkbox" name="ctl00$cph$ckb_3$15" value="2147" /><label for="cph_ckb_3_15">ar.com</label><input id="cph_ckb_3_16" type="checkbox" name="ctl00$cph$ckb_3$16" value="2148" /><label for="cph_ckb_3_16">br.com</label><input id="cph_ckb_3_17" type="checkbox" name="ctl00$cph$ckb_3$17" value="2149" /><label for="cph_ckb_3_17">cn.com</label><input id="cph_ckb_3_18" type="checkbox" name="ctl00$cph$ckb_3$18" value="2150" /><label for="cph_ckb_3_18">de.com</label><input id="cph_ckb_3_19" type="checkbox" name="ctl00$cph$ckb_3$19" value="2151" /><label for="cph_ckb_3_19">eu.com</label><input id="cph_ckb_3_20" type="checkbox" name="ctl00$cph$ckb_3$20" value="2152" /><label for="cph_ckb_3_20">gb.com</label><input id="cph_ckb_3_21" type="checkbox" name="ctl00$cph$ckb_3$21" value="2153" /><label for="cph_ckb_3_21">gb.net</label><input id="cph_ckb_3_22" type="checkbox" name="ctl00$cph$ckb_3$22" value="2154" /><label for="cph_ckb_3_22">gr.com</label><input id="cph_ckb_3_23" type="checkbox" name="ctl00$cph$ckb_3$23" value="2155" /><label for="cph_ckb_3_23">hu.com</label><input id="cph_ckb_3_24" type="checkbox" name="ctl00$cph$ckb_3$24" value="2156" /><label for="cph_ckb_3_24">jpn.com</label><input id="cph_ckb_3_25" type="checkbox" name="ctl00$cph$ckb_3$25" value="2157" /><label for="cph_ckb_3_25">kr.com</label><input id="cph_ckb_3_26" type="checkbox" name="ctl00$cph$ckb_3$26" value="2158" /><label for="cph_ckb_3_26">no.com</label><input id="cph_ckb_3_27" type="checkbox" name="ctl00$cph$ckb_3$27" value="2159" /><label for="cph_ckb_3_27">qc.com</label><input id="cph_ckb_3_28" type="checkbox" name="ctl00$cph$ckb_3$28" value="2160" /><label for="cph_ckb_3_28">ru.com</label><input id="cph_ckb_3_29" type="checkbox" name="ctl00$cph$ckb_3$29" value="2161" /><label for="cph_ckb_3_29">sa.com</label><input id="cph_ckb_3_30" type="checkbox" name="ctl00$cph$ckb_3$30" value="2162" /><label for="cph_ckb_3_30">se.com</label><input id="cph_ckb_3_31" type="checkbox" name="ctl00$cph$ckb_3$31" value="2163" /><label for="cph_ckb_3_31">se.net</label><input id="cph_ckb_3_32" type="checkbox" name="ctl00$cph$ckb_3$32" value="2164" /><label for="cph_ckb_3_32">uk.com</label><input id="cph_ckb_3_33" type="checkbox" name="ctl00$cph$ckb_3$33" value="2165" /><label for="cph_ckb_3_33">uk.net</label><input id="cph_ckb_3_34" type="checkbox" name="ctl00$cph$ckb_3$34" value="2166" /><label for="cph_ckb_3_34">us.com</label><input id="cph_ckb_3_35" type="checkbox" name="ctl00$cph$ckb_3$35" value="2167" /><label for="cph_ckb_3_35">us.org</label><input id="cph_ckb_3_36" type="checkbox" name="ctl00$cph$ckb_3$36" value="2168" /><label for="cph_ckb_3_36">uy.com</label><input id="cph_ckb_3_37" type="checkbox" name="ctl00$cph$ckb_3$37" value="2169" /><label for="cph_ckb_3_37">za.com</label><input id="cph_ckb_3_38" type="checkbox" name="ctl00$cph$ckb_3$38" value="3001" /><label for="cph_ckb_3_38">com.cn</label><input id="cph_ckb_3_39" type="checkbox" name="ctl00$cph$ckb_3$39" value="3002" /><label for="cph_ckb_3_39">net.cn</label><input id="cph_ckb_3_40" type="checkbox" name="ctl00$cph$ckb_3$40" value="3003" /><label for="cph_ckb_3_40">org.cn</label><input id="cph_ckb_3_41" type="checkbox" name="ctl00$cph$ckb_3$41" value="3004" /><label for="cph_ckb_3_41">gov.cn</label><input id="cph_ckb_3_42" type="checkbox" name="ctl00$cph$ckb_3$42" value="3005" /><label for="cph_ckb_3_42">bj.cn</label><input id="cph_ckb_3_43" type="checkbox" name="ctl00$cph$ckb_3$43" value="3006" /><label for="cph_ckb_3_43">sh.cn</label><input id="cph_ckb_3_44" type="checkbox" name="ctl00$cph$ckb_3$44" value="3007" /><label for="cph_ckb_3_44">tj.cn</label><input id="cph_ckb_3_45" type="checkbox" name="ctl00$cph$ckb_3$45" value="3008" /><label for="cph_ckb_3_45">cq.cn</label><input id="cph_ckb_3_46" type="checkbox" name="ctl00$cph$ckb_3$46" value="3009" /><label for="cph_ckb_3_46">he.cn</label><input id="cph_ckb_3_47" type="checkbox" name="ctl00$cph$ckb_3$47" value="3010" /><label for="cph_ckb_3_47">sx.cn</label><input id="cph_ckb_3_48" type="checkbox" name="ctl00$cph$ckb_3$48" value="3011" /><label for="cph_ckb_3_48">nm.cn</label><input id="cph_ckb_3_49" type="checkbox" name="ctl00$cph$ckb_3$49" value="3012" /><label for="cph_ckb_3_49">ln.cn</label><input id="cph_ckb_3_50" type="checkbox" name="ctl00$cph$ckb_3$50" value="3013" /><label for="cph_ckb_3_50">hk.cn</label><input id="cph_ckb_3_51" type="checkbox" name="ctl00$cph$ckb_3$51" value="3014" /><label for="cph_ckb_3_51">jl.cn</label><input id="cph_ckb_3_52" type="checkbox" name="ctl00$cph$ckb_3$52" value="3015" /><label for="cph_ckb_3_52">sd.cn</label><input id="cph_ckb_3_53" type="checkbox" name="ctl00$cph$ckb_3$53" value="3016" /><label for="cph_ckb_3_53">js.cn</label><input id="cph_ckb_3_54" type="checkbox" name="ctl00$cph$ckb_3$54" value="3017" /><label for="cph_ckb_3_54">zj.cn</label><input id="cph_ckb_3_55" type="checkbox" name="ctl00$cph$ckb_3$55" value="3018" /><label for="cph_ckb_3_55">ah.cn</label><input id="cph_ckb_3_56" type="checkbox" name="ctl00$cph$ckb_3$56" value="3019" /><label for="cph_ckb_3_56">fj.cn</label><input id="cph_ckb_3_57" type="checkbox" name="ctl00$cph$ckb_3$57" value="3020" /><label for="cph_ckb_3_57">hl.cn</label><input id="cph_ckb_3_58" type="checkbox" name="ctl00$cph$ckb_3$58" value="3021" /><label for="cph_ckb_3_58">jx.cn</label><input id="cph_ckb_3_59" type="checkbox" name="ctl00$cph$ckb_3$59" value="3022" /><label for="cph_ckb_3_59">mo.cn</label><input id="cph_ckb_3_60" type="checkbox" name="ctl00$cph$ckb_3$60" value="3023" /><label for="cph_ckb_3_60">ha.cn</label><input id="cph_ckb_3_61" type="checkbox" name="ctl00$cph$ckb_3$61" value="3024" /><label for="cph_ckb_3_61">hb.cn</label><input id="cph_ckb_3_62" type="checkbox" name="ctl00$cph$ckb_3$62" value="3025" /><label for="cph_ckb_3_62">hn.cn</label><input id="cph_ckb_3_63" type="checkbox" name="ctl00$cph$ckb_3$63" value="3026" /><label for="cph_ckb_3_63">gd.cn</label><input id="cph_ckb_3_64" type="checkbox" name="ctl00$cph$ckb_3$64" value="3027" /><label for="cph_ckb_3_64">gx.cn</label><input id="cph_ckb_3_65" type="checkbox" name="ctl00$cph$ckb_3$65" value="3028" /><label for="cph_ckb_3_65">hi.cn</label><input id="cph_ckb_3_66" type="checkbox" name="ctl00$cph$ckb_3$66" value="3029" /><label for="cph_ckb_3_66">sc.cn</label><input id="cph_ckb_3_67" type="checkbox" name="ctl00$cph$ckb_3$67" value="3030" /><label for="cph_ckb_3_67">gz.cn</label><input id="cph_ckb_3_68" type="checkbox" name="ctl00$cph$ckb_3$68" value="3031" /><label for="cph_ckb_3_68">tw.cn</label><input id="cph_ckb_3_69" type="checkbox" name="ctl00$cph$ckb_3$69" value="3032" /><label for="cph_ckb_3_69">yn.cn</label><input id="cph_ckb_3_70" type="checkbox" name="ctl00$cph$ckb_3$70" value="3033" /><label for="cph_ckb_3_70">xz.cn</label><input id="cph_ckb_3_71" type="checkbox" name="ctl00$cph$ckb_3$71" value="3034" /><label for="cph_ckb_3_71">sn.cn</label><input id="cph_ckb_3_72" type="checkbox" name="ctl00$cph$ckb_3$72" value="3035" /><label for="cph_ckb_3_72">gs.cn</label><input id="cph_ckb_3_73" type="checkbox" name="ctl00$cph$ckb_3$73" value="3036" /><label for="cph_ckb_3_73">qh.cn</label><input id="cph_ckb_3_74" type="checkbox" name="ctl00$cph$ckb_3$74" value="3037" /><label for="cph_ckb_3_74">nx.cn</label><input id="cph_ckb_3_75" type="checkbox" name="ctl00$cph$ckb_3$75" value="3038" /><label for="cph_ckb_3_75">xj.cn</label><input id="cph_ckb_3_76" type="checkbox" name="ctl00$cph$ckb_3$76" value="3039" /><label for="cph_ckb_3_76">ac.cn</label><input id="cph_ckb_3_77" type="checkbox" name="ctl00$cph$ckb_3$77" value="3040" /><label for="cph_ckb_3_77">中国</label><input id="cph_ckb_3_78" type="checkbox" name="ctl00$cph$ckb_3$78" value="3041" /><label for="cph_ckb_3_78">wang</label><input id="cph_ckb_3_79" type="checkbox" name="ctl00$cph$ckb_3$79" value="3042" /><label for="cph_ckb_3_79">商城</label><input id="cph_ckb_3_80" type="checkbox" name="ctl00$cph$ckb_3$80" value="3043" /><label for="cph_ckb_3_80">网址</label><input id="cph_ckb_3_81" type="checkbox" name="ctl00$cph$ckb_3$81" value="3044" /><label for="cph_ckb_3_81">club</label><input id="cph_ckb_3_82" type="checkbox" name="ctl00$cph$ckb_3$82" value="3046" /><label for="cph_ckb_3_82">.cn.com</label></span>
                </div>
                <p id="p_input_wrap">
                    价格范围&nbsp;&nbsp;&nbsp;<input id="priceStr" maxlength="8" type="text" />
                    —
                    <input id="priceEnd" maxlength="8" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 域名长度&nbsp;&nbsp;&nbsp;<input id="lengthStr" maxlength="2" type="text" />
                    —
                    <input id="lengthEnd" maxlength="2" type="text" />
                </p>
                <p class="p_input1">
                    出售方式<br />
                    <input id="selltype_yj" type="checkbox" checked="checked" value="4" /><label for="selltype_yj">议价域名</label>
                    <input id="selltype_pm" type="checkbox" checked="checked" value="1" /><label for="selltype_pm">拍卖域名</label>
                    <input id="selltype_ykj" type="checkbox" checked="checked" value="2" /><label for="selltype_ykj">一口价域名</label>
                    <input id="selltype_yz" type="checkbox" checked="checked" value="3" /><label for="selltype_yz">优质域名</label>
                </p>
                <p id="domainType_wrap" class="p_input1">
                    排除域名类型<br />
                    <input type="checkbox" id="pc1" value="10,11" /><label for="pc1">混合类</label>
                    <input type="checkbox" id="pc2" value="6,7,8,9" /><label for="pc2">字母</label>
                    <input type="checkbox" id="pc3" value="1,2,3,4,5" /><label for="pc3">数字</label>
                    <input type="checkbox" id="pc4" value="12" /><label for="pc4">IDN域名</label>
                </p>
                <p id="hide_more_ckb" style="border: 0; margin: 0; padding: 0;"></p>
            </div>
            <!-- 出价开拍 搜索结果-->
            <div id="pm_result" style="margin: 0; padding: 0; display: none;">
                <h2 class="p_sellType">出价开拍的域名</h2>
                <dl class="showcase_dl">
                    
                </dl>
                <div class="clear_left"></div>
            </div>
            <div id="ykj_result" style="margin: 0; padding: 0; display: none;">
                <h2 class="p_sellType">一口价域名</h2>
                <div class="div_dl" style="padding: 0; margin: 2px 0 0 2px">
                    <dl>
                    </dl>
                </div>
                <div class="clear_left"></div>
            </div>
            <div id="yz_result" style="margin: 0; padding: 0; display: none;">
                <h2 class="p_sellType">优质域名</h2>
                <div class="div_dl" style="padding: 0; margin: 2px 0 0 2px">
                    <dl>
                    </dl>
                </div>
                <div class="clear_left"></div>
            </div>
            <h2 class="p_sellType">搜索结果</h2>
            <table id="yjResult" class="tb_1">
                <tr>
                    <th class='td_xh'></th>
                    <th>域名</th>
                    <th>域名分类</th>
                    <th style='text-align: right; padding-right: 20px;'>标价</th>
                    <th>浏览次数</th>
                    <th>报价次数</th>
                    <th>操作</th>
                </tr>
                
                        <tr>
                            <td class="td_xh">1</td>
                            <td class="td_domain">caogenshuo.com</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>0</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215587">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">2</td>
                            <td class="td_domain">haoxinyan.com</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>0</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215586">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">3</td>
                            <td class="td_domain">nuju.cn</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>2</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215585">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">4</td>
                            <td class="td_domain">sowazi.cn</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>2</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215577">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">5</td>
                            <td class="td_domain">sowazi.com</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>2</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215578">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">6</td>
                            <td class="td_domain">nuliai.com</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>2</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215576">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">7</td>
                            <td class="td_domain">nuliai.cn</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>2</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215575">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">8</td>
                            <td class="td_domain">zhuanbugou.com</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>3</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215570">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">9</td>
                            <td class="td_domain">yundagou.com</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>4</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215572">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">10</td>
                            <td class="td_domain">zhuanbugou.cn</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>3</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215569">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">11</td>
                            <td class="td_domain">shunfengjituan.com</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>2</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215565">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">12</td>
                            <td class="td_domain">yundatao.com</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>2</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215568">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">13</td>
                            <td class="td_domain">xianxiagou.com</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>2</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215574">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">14</td>
                            <td class="td_domain">shunfengjituan.cn</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>2</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215564">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">15</td>
                            <td class="td_domain">yundagou.cn</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>4</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215571">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">16</td>
                            <td class="td_domain">younigou.com</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>3</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215573">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">17</td>
                            <td class="td_domain">yundajituan.com</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>3</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215566">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">18</td>
                            <td class="td_domain">yundatao.cn</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>3</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215567">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">19</td>
                            <td class="td_domain">aiwuxi.cn</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>3</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215559">详情</a></td>
                        </tr>
                    
                        <tr>
                            <td class="td_xh">20</td>
                            <td class="td_domain">fac8.com</td>
                            <td>其它</td>
                            <td class="td_price">买家报价</td>
                            <td>4</td>
                            <td>0</td>
                            <td><a class="btn_price" target="_blank" href="/buy-domains/detail/215558">详情</a></td>
                        </tr>
                    
            </table>
            <div id="paging"><span>共167953条记录,8398页</span> <a class='pa_disabled' href='javascript:void(0)'>上一页</a><a href='javascript:void(0)' class='pg_select'>1</a><a href='/buy-domains/2'>2</a><a href='/buy-domains/3'>3</a><a href='/buy-domains/4'>4</a><a href='/buy-domains/5'>5</a><a href='/buy-domains/6'>6</a><a href='/buy-domains/7'>…</a><a href='/buy-domains/8398'>8398</a><a class='pg_enabled' href='/buy-domains/2'>下一页</a></div>
        </div>
        <div class="clear_right"></div>
    </div>


        
	<%@include file="/WEB-INF/client/common/footer.jsp" %>
    </div>
</body>
</html>


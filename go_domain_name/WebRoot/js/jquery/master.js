$(function () {
    //清楚cookies
    $(".owl_nav").click(function () {
        delCookie("ykcheck");
        delCookie("checkall");
        delCookie("list");
    });
    //提示 暂无记录！
    $("table").each(function () {
        if (this.className != null && this.className == "hot_reply_tb")
            return;
        if (this.rows.length < 2) {
            $(this).append("<tr><td colspan='10' style='text-align:left; padding-left:20px;'>没有找到相关记录！</td></tr>");
        }
    })
    $("dl").each(function () {
        if ($(this).children().length < 1) {
            $(this).html("<br>&nbsp;&nbsp;&nbsp;&nbsp;没有找到相关记录！");
        }
    })
    //页面访问
    var url = location.href.match(/\/\/.*?\/(.*)/)[1];
    if (url == "")
        url = "index";
    else {
        url = url.replace(/\/\d.*/, "");
        if (/\d+/.test(url))
            url = "m";
    }
    $.post("/Content/ashx/monitor.ashx", { "c": "0", "u": url });

    //---------------------------------------------------回顶部-------------------------------------------------
    var $gototopTxt = "回顶部", $gototopEle = $("<div class='gototop'></div>").appendTo($("body"))
    .text("").attr("title", $gototopTxt).click(function () {
        $("html, body").animate({ scrollTop: 0 }, 120);
    }), $gototopFun = function () {
        var st = $(document).scrollTop(), winh = $(window).height();
        (st > 0) ? $gototopEle.show() : $gototopEle.hide();

        //IE6下的定位
        if (!window.XMLHttpRequest) {
            $gototopEle.css("top", st + winh - 166);
        }
    };
    $(window).bind("scroll", $gototopFun);
    $(function () { $gototopFun(); });

    //去底部
    var windowHeight = parseInt($("body").css("height"));
    $(".gotobtm").click(function () {
        $("html,body").animate({ "scrollTop": windowHeight }, "slow");
    });

    $(".wechat").mouseover(function () {
        $(".wechat_pic").stop().show('slow');
    })
    $(".wechat").mouseout(function () {
        $(".wechat_pic").stop().hide('slow');
    })

    //-------------------------------------------------- 语言设置-----------------------------------------------
    var langStr = "zh-cn";
    if (langStr = getCookie("lang")) {
        var top = 0;
        switch (langStr) {
            case "zh-cn": {
                break;
            }
            case "zh-hk": {
                top = 23;
                break;
            }
            case "en-us": {
                top = 46;
                break;
            }
        }
        $("#language").css("background-position", "0 " + top + "px");
    }

    $("#language").click(function (event) {
        alert("翻译中，敬请期待！");
        //$("#lang_select").toggle(400);
        //event.stopPropagation();
    })

    $(document.body).click(function () {
        $("#lang_select").hide(400);
    })

    $("#lang_select li").click(function (event) {
        lang($(this).attr("kvalue"));
        event.stopPropagation();
    })

    //搜索
    $("#domain").click(function () {
        $("#search2").hide();
        if ($("#txt_search2").val() != $("#txt_search2").attr("tips"))
            $("#txt_search1").css("color", "");
        else
            $("#txt_search2").css("color", "#bbb");
        $("#txt_search1").val($("#txt_search2").val())
        $("#search1").show();
    })
    $("#whois").click(function () {
        $("#search1").hide();
        if ($("#txt_search1").val() != $("#txt_search1").attr("tips"))
            $("#txt_search2").css("color", "");
        else
            $("#txt_search2").css("color", "#bbb");
        $("#txt_search2").val($("#txt_search1").val())
        $("#search2").show();
    })

    //---------------------------------------------搜索智能提示 start  ---------------------------------------------
    var searchValue = "";
    function getSearchList(keyword) {
        $.post("/Content/ashx/index.ashx", { "type": "searchList", "keyword": keyword }, function (data, status) {
            if (status == "success") {
                $("#searchTips").html("");
                var obj = $.parseJSON(data);
                $.each(obj, function (key, value) {
                    $("#searchTips").append("<li>" + value['domainName'] + "</li>");
                });
            }
        })
    }

    $("#txt_search1").focus(function () {
        if (this.value == "" || this.value == $(this).attr("tips")) {
            //不触发
        }
        else if (this.value == searchValue) {//显示缓存的
            $("#searchTips").css("display", "block");
        }
        else {
            //获取数据
            $("#searchTips").css("display", "block");
        }
    })
    $("#txt_search1").focusout(function () {
        $("#searchTips").css("display", "none");
    })

    $("#txt_search1").keyup(function (event) {
        switch (event.keyCode) {
            case 40: { // ↓
                var idx = $("#searchTips li[class='searchTips_li_select']").index();
                if (idx + 2 > $("#searchTips li").length) {
                    idx = -1;
                }
                var obj = $("#searchTips li").eq(++idx);
                changeClass(obj);
                $("#txt_search1").val(obj.text());
                break;
            }
            case 38: { // ↑
                var idx = $("#searchTips li[class='searchTips_li_select']").index();
                if (idx < 1) {
                    idx = $("#searchTips li").length;
                }
                var obj = $("#searchTips li").eq(--idx);
                changeClass(obj);
                $("#txt_search1").val(obj.text());
                break;
            }
            case 13: {// Enter
                $("#btn_search").click();
                break;
            }
            default: {// 其它按键
                if (this.value != searchValue && this.value != "") {
                    //获取数据
                    getSearchList(this.value);
                    $("#searchTips").css("display", "block");
                }
                searchValue = this.value;
            }
        }
    })

    //切换背景色 obj是jquery对象
    function changeClass(obj) {
        $("#searchTips li").each(function () {
            $(this).removeClass("searchTips_li_select");
        })
        obj.addClass("searchTips_li_select");
    }

    $("#searchTips li").live("mouseover", function () {
        changeClass($(this));
    })

    $("#searchTips li").live("mousedown", function () {
        $("#txt_search1").val($(this).text());
    })

    $("#btn_search").click(function () {
        //头部域名搜索
        var keyword = $("#txt_search1").val();
        if (keyword == $("#txt_search1").attr("tips"))
            keyword = "";
        $.post("/Content/ashx/monitor.ashx", { "c": "1" }, function (data, state) {
            location.href = "/buy-domains/" + keyword;
        });
    })
    $("#btn_whois").click(function () {
        //头部whois搜索
        var keyword = $("#txt_search2").val();
        if (keyword == $("#txt_search2").attr("tips"))
            return;
        keyword = keyword.trim().replace(/^\.|\.$|\s/g, "").replace(/^www\./, "");
        keyword = keyword.indexOf(".") == -1 ? keyword + ".com" : keyword;
        $.post("/Content/ashx/monitor.ashx", { "c": "2" }, null);
        window.open("http://whois.62.com/whois/" + keyword, "_blank");
    })
    $("#call_me a").click(function () {
        //头部whois搜索
        $.post("/Content/ashx/monitor.ashx", { "c": "3" }, function (data, state) {
            location.href = '/contact'
        });
    })
    //----------------------------------------------搜索智能提示 end  ----------------------------------------------

    //菜单  index|""   buy-domains   sell-domains  auction  hotsale  bargain     escrow    account
    var menu = location.href.match(/\/\/.*?\/([a-zA-Z-]*)/)[1];
    var menuIndex = 50;
    switch (menu) {
        case "": {
            menuIndex = 0
            break;
        }
        case "index": {
            menuIndex = 0
            break;
        }
        case "buy-domains": {
            menuIndex = 1
            break;
        }
        case "sell-domains": {
            menuIndex = 2
            break;
        }
        case "auction": {
            menuIndex = 3
            break;
        }
        case "hotsale": {
            menuIndex = 4
            break;
        }
        case "bargain": {
            menuIndex = 5
            break;
        }
        case "escrow": {
            menuIndex = 6
            break;
        }
        case "account": {
            menuIndex = 7
            break;
        }
    }
    $("#menu li").eq(menuIndex).addClass("selected_li");

    //我参与的拍卖 视图替换
    var li = $(".owr .navs ul li");
    li.click(function () {
        var index = $(this).index();
        $(this).addClass('current').siblings().removeClass('current');
        $(this).parent().siblings('.as').eq(index).show().siblings('.as').hide();
    });

    //我的账户 右侧导航
    $('.owr .navs p').click(function () {
        var index = $(this).index() / 2;
        if ($(this).hasClass('current')) {
            $(this).removeClass('current').siblings('.as').eq(index).slideUp(400);
        } else {
            $(this).addClass('current').siblings('.as').eq(index).slideDown(400);
        };
    });

    //我的账户 右侧导航 清楚cookies
    $('.owr .navs .as').click(function () {
        delCookie('list');
        delCookie('checkall');
        delCookie('ykcheck');
    });

    var navs = location.href.match(/.*?\/account\/(.*?\/[\w-]+)/);
    var l = "";
    try { l = navs[1]; }
    catch (ex) { };
    if (l != "") {
        l = convertL(l);
        var a = $(".navs a[href*='" + l + "']");
        a.parent().slideDown(0).prev().addClass('current');
        //菜单显示
        a.children().eq(0).addClass("select_a");
    }
    else {
        $(".navs p:first").addClass('current').next().slideDown(0);
    }


    function convertL(l) {
        switch (l) {
            case "buyer/outbid": { l = "buyer/biddings"; break; }
            case "buyer/won": { l = "buyer/biddings"; break; }
            case "buyer/focus-end": { l = "buyer/focus-active"; break; }
            case "buyer/focus-hotsale": { l = "buyer/focus-active"; break; }
            case "buyer/focus-sell": { l = "buyer/focus-active"; break; }
            case "seller/group": { l = "seller/mydomains"; break; }
            case "seller/auction": { l = "seller/mydomains"; break; }
            case "seller/auction-aff": { l = "seller/mydomains"; break; }
            case "seller/auction-fail": { l = "seller/mydomains"; break; }
            case "seller/auction-over": { l = "seller/mydomains"; break; }
            case "seller/auction-per": { l = "seller/mydomains"; break; }
            case "finance/banks": { l = "finance/top-up"; break; }
            case "finance/promote": { l = "finance/offline"; break; }
            case "personal/validates-protect": { l = "personal/protection"; break; }
            case "personal/update-protection": { l = "personal/protection"; break; }
            case "orders/detail": { l = "orders/myorders"; break; }
            case "seller/mydomains-verify": { l = "seller/mydomains"; break; }
            case "seller/deleted": { l = "seller/mydomains"; break; }
            case "seller/sold": { l = "seller/mydomains"; break; }
            case "seller/add-templates": { l = "seller/templates"; break; }
            case "buyer/detail-brokerage": { l = "buyer/brokerages"; break; }
        }
        return l;
    }



    //输入框提示
    $(".inputTips").each(function () {
        var tips = this.getAttribute("tips");
        if (this.value == "") {
            this.value = tips;
            $(this).css("color", "#bbb");
        }
    })

    //inputTips获得焦点
    $(".inputTips").focus(function () {
        var tips = this.getAttribute("tips");
        if (this.value == tips) {
            this.value = "";
            $(this).css("color", "");
        }
    })

    //inputTips失去焦点
    $(".inputTips").focusout(function () {
        var tips = this.getAttribute("tips");
        if (this.value == tips || this.value == "") {
            $(this).css("color", "#bbb");
            this.value = tips;
        }
    })

    //友情链接
    $("#fdlinks p").each(function () {
        $(this).html($(this).html().replace(/([\w\W]*a\>).*/, "$1"))
    })

    //中介介绍 滑动
    $(".sp_left").click(function () {
        var lf = $("#div_2160").css("left");
        lf = lf == "" ? "0px" : lf;
        switch (lf) {
            case "0px": {
                lf = "-1440px";
                break;
            }
            case "-720px": {
                lf = "0px";
                break;
            }
            case "-1440px": {
                lf = "-720px";
                break;
            }
        }
        div_2160_slider(lf);
    })
    $(".sp_right").click(function () {
        var lf = $("#div_2160").css("left");
        lf = lf == "" ? "0px" : lf;
        switch (lf) {
            case "0px": {
                lf = "-720px";
                break;
            }
            case "-720px": {
                lf = "-1440px";
                break;
            }
            case "-1440px": {
                lf = "0px";
                break;
            }
        }
        div_2160_slider(lf);
    })

    $("#div_escrow span").click(function () {
        if (this.className != "tab" || isrun != false) {
            return;
        }
        div_2160_slider($(this).attr("lf"));
    })

    //快捷导航
    $(".nva p").click(function () {
        switch ($(this).index()) {
            case 0: {
                location.href = "/sell-domains";
                break;
            }
            case 1: {
                location.href = "/auction/active";
                break;
            }
            case 2: {
                location.href = "/bargain";
                break;
            }
            case 3: {
                location.href = "/hotsale";
                break;
            }
            case 4: {
                location.href = "/account/index";
                break;
            }
        }
    })

    $(".sp_125_wrap .sp_125_s,.sp_125_wrap .sp_125").click(function () {
        var idx = $(this).index();
        //if (idx > 1)
        //    return false;
        var idx_f = idx == 0 ? 1 : 0;
        $(".sp_125_wrap span").removeClass("sp_125_s").addClass("sp_125");
        //$(".sp_125_wrap div").hide('slow');
        $(".sp_125_wrap div:eq(" + idx_f + ")").hide();
        $(".sp_125_wrap div:eq(" + idx + ")").show();
        $(this).attr("class", "sp_125_s")
    })

    //卖域名
    $(".idx_left_d1").click(function () {
        var idx = $(this).index();
        $(".idx_left_d1").css("background", "#F0F0F0").css("border-top", "1px solid #F0F0F0");
        $(this).css("background", "white");
        $(".quesAns").hide();
        $(".quesAns:eq(" + idx + ")").show(500);
    })
    $(".idx_left_d1:eq(0)").click();

    //呼叫经纪人
    $("#calling").click(function () {
        if ($("#li_user").html() == "") {
            ShowMsg("请先登录", 330, -200);
            return false;
        }
        var msg = "呼叫成功，请稍候！";
        $.post("/Content/ashx/index.ashx", { "type": "call" }, function (data, state) {
            if (state == "success") {
                switch (data) {
                    case "0":
                        msg = "您已呼叫过，请稍候！";
                        break;
                    case "1":
                        msg = "您的手机号不正确。";
                        break;
                    case "2":
                        msg = "呼叫失败，请稍后再试。";
                        break;
                }
                ShowMsg(msg, 330, -200);
            }
        });
    })
})


var isrun = false;
function div_2160_slider(lf) {
    //执行前禁用点击事件
    if (isrun) { return; }
    isrun = true;
    if ($("#div_escrow") != null) {
        $(".tab_select").attr("class", "tab");
        switch (lf) {
            case "0px": {
                $("#div_escrow span").eq(1).attr("class", "tab_select");
                break;
            }
            case "-720px": {
                $("#div_escrow span").eq(3).attr("class", "tab_select");
                break;
            }
            case "-1440px": {
                $("#div_escrow span").eq(5).attr("class", "tab_select");
                break;
            }
        }
    }
    $("#div_2160").animate({ left: lf }, '200', null, function () {
        //动画执行完了启用点击事件
        isrun = false;
    });
}

//语言切换
function lang(value) {
    var h = 24;
    if (value == "zh-cn")
        delCookie("lang");
    else
        setCookie("lang", value, 24);
    location = location;
}

//读取cookies
function getCookie(name) {
    var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
    if (arr = document.cookie.match(reg))
        return unescape(arr[2]);
    else
        return null;
}

//设置cookie(cookie名 , 值 , 小时)
function setCookie(name, value, h) {
    var exp = new Date();
    exp.setTime(exp.getTime() + h * 60 * 60 * 1000);
    document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString() + ";path=/";
}

//删除cookie        
function delCookie(name) {
    document.cookie = name + "=;expires=" + (new Date(0)).toGMTString() + ";path=/";
}

//只允许输入[数字、小数点]
function clearNoNum(obj) {
    //先把非数字的都替换掉，除了数字和.
    obj.value = obj.value.replace(/[^\d.]/g, "");
    //必须保证第一个为数字而不是.和0
    obj.value = obj.value.replace(/^[.0]/g, "");
    //保证.只出现一次，而不能出现两次以上
    obj.value = obj.value.replace(".", "$#$").replace(/\./g, "").replace("$#$", ".");
}
//只允许输入[数字]
function clearNoNum1(obj) {
    //先把非数字的都替换掉
    obj.value = obj.value.replace(/[^\d]/g, "");
    //必须保证第一个为数字而不是0
    obj.value = obj.value.replace(/^[0]/g, "");
}


//验证合集(要验证的字符串,验证类型)
function inputVerify(str, type) {
    var reg = "";
    switch (type) {
        case 1: {//6-16位数字加字母
            reg = /^(?=.*?[a-zA-Z])(?=.*?[0-9])[a-zA-Z0-9]{6,16}$/; break;
        }
        case 2: {//邮箱
            reg = /^[0-9a-zA-Z\._-]+@(([0-9a-zA-Z]+)[.])+[a-z]{2,4}$/; break;
        }
        case 3: {//手机号
            reg = /^(\w)+(\.\w+)*@(\w)+((\.\w{2,3}){1,3})$/; break;
        }
        case 4: {//中文字
            reg = /^[\u4E00-\u9FA5]+$/; break;
        }
        case 5: {//密码验证
            var f = false;
            if (str.length > 5) {//六位
                reg = /\d/;
                if (reg.test(str)) {//必须包含数字
                    reg = /[a-zA-Z]/i;
                    if (reg.test(str)) {//必须包含数字
                        f = true;
                    }
                }
            }
            return f;
        }
    }
    return reg.test(str);
}

//数字转货币（数值 , 小数位数 , ￥|$|€ , 千位分隔符[默认,] , 小数分隔符[默认.]）
function formatMoney(number, places, symbol, thousand, decimal) {
    number = number || 0;
    places = !isNaN(places = Math.abs(places)) ? places : 2;
    symbol = symbol !== undefined ? symbol : "$";
    thousand = thousand || ",";
    decimal = decimal || ".";
    var negative = number < 0 ? "-" : "",
        i = parseInt(number = Math.abs(+number || 0).toFixed(places), 10) + "",
        j = (j = i.length) > 3 ? j % 3 : 0;
    return symbol + negative + (j ? i.substr(0, j) + thousand : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + thousand) + (places ? decimal + Math.abs(number - i).toFixed(places).slice(2) : "");
}
//parseFloat(price.replace(/[^0-9-.]/g, '')); // 12345.99

function getCurrency(c) {
    switch (c) {
        case 0: { return "￥" }
        case 1: { return "$&nbsp;" }
        case 2: { return "€&nbsp;" }
    }
}

//弹出提示框 (提示信息,330,-300) 
function ShowMsg(msg, top, marginLeft) {
    $("#ShowMsg").remove();
    $(document.body).append("<div id='ShowMsg'><div>" + msg + "&nbsp;&nbsp;&nbsp;<a id='closeSM' href='javascript:void(0)'>[关闭]</a></div></div>");
    $("#ShowMsg").css("top", top).css("margin-left", marginLeft).animate({ opacity: 0.3 }, 5000, function () {
        $(this).remove();
    });
}
$("#closeSM").live("click", function () {
    $("#ShowMsg").remove();
})


//分页  (当前页,总条数,每页显示条数,当前页前后显示页数)
function nextPage(pageIndex, total, pageSize, temp) {
    var ReturnHtml = "";
    pageIndex = parseInt(pageIndex);
    total = parseInt(total);
    pageSize = parseInt(pageSize);
    temp = parseInt(temp);
    if (total == 0)
        return ReturnHtml;
    //计算总页数
    var pageCount = 0;
    if (total % pageSize == 0)
        pageCount = parseInt(total / pageSize);
    else
        pageCount = parseInt(total / pageSize) + 1;

    //计算当前位置
    ReturnHtml += "<span>共" + total + "条记录," + pageCount + "页</span> ";

    //1    上一页 首页
    if (pageIndex == 1)
        ReturnHtml += "<a class='pa_disabled' href='javascript:void(0)'>上一页</a>";
    else
        ReturnHtml += "<a class='pg_enabled' href='javascript:void(0)' k='" + (pageIndex - 1) + "'>上一页</a><a href='javascript:void(0)' k='1'>1</a>";

    //2    ...
    if (pageIndex > temp + 2)
        ReturnHtml += "<a href='javascript:void(0)' k='" + (pageIndex - 3) + "'>…</a>";

    //3    本页前页码
    var frontPage = "";
    for (var i = pageIndex - 1; i > pageIndex - (temp + 1) && i > 1; i--) {
        frontPage = "<a href='javascript:void(0)' k='" + i + "'>" + i + "</a>" + frontPage;
    }
    ReturnHtml += frontPage;


    //4    本页页码
    ReturnHtml += "<a href='javascript:void(0)' class='pg_select'>" + pageIndex + "</a>";

    //5    页后页码
    for (var i = pageIndex + 1; i < pageIndex + (temp + 1) && i < pageCount; i++)
        ReturnHtml += "<a href='javascript:void(0)' k='" + i + "'>" + i + "</a>";

    //6    ...
    if (pageIndex + temp + 1 < pageCount)
        ReturnHtml += "<a href='javascript:void(0)' k='" + (pageIndex + temp + 1) + "'>…</a>";

    //7    尾页 下一页
    if (pageIndex == pageCount)
        ReturnHtml += "<a class='pa_disabled' href='javascript:void(0)'>下一页</a>";
    else
        ReturnHtml += "<a href='javascript:void(0)' k='" + pageCount + "'>" + pageCount + "</a><a class='pg_enabled' href='javascript:void(0)' k='" + (pageIndex + 1) + "'>下一页</a>";

    return ReturnHtml;
}

//弹出 阴影层和loading(遮罩层高,遮罩层宽,遮罩层left,遮罩层top,遮罩层margin-left,图片left,图片top,图片margin-left)
function showLoading(wrapHeight, wrapWidth, wrapLeft, wrapTop, wrapMarginLeft, loadingLeft, loadingTop, loadingMarginLeft) {
    $("#loading_wrap").css("height", wrapHeight).css("width", wrapWidth).css("left", wrapLeft).css("top", wrapTop).css("margin-left", wrapMarginLeft).css("display", "block");
    $("#loading").css("left", loadingLeft).css("top", loadingTop).css("margin-left", loadingMarginLeft).css("display", "block");
}

function hideLoading() {
    $("#loading_wrap").css("display", "none");
    $("#loading").css("display", "none");
}

function dlBorder(key) {
    return (key + 1) % 4 == 0 ? "class='dl_border'" : "";
}

//发送Whois邮箱验证邮件
function whoisEmail(email) {
    if (!limit()) {
        alert("警告，您的操作被视为恶意发送。");
        return;
    }
    $.post("/Content/ashx/sendEmail.ashx", { "type": "sendEmail", "email": email });
}

//发送密码找回邮件
function pwdEmail(email) {
    if (!limit()) {
        alert("警告，您的操作被视为恶意发送。");
        return;
    }
    $.post("/Content/ashx/sendEmail.ashx", { "type": "pwdEmail", "email": email });
}
function limit() {
    var name = "limit";
    var i = 1;
    var c = getCookie(name);
    if (c != null && c != "") {
        i += parseInt(c);
    }
    if (i > 5)
        return false;
    setCookie(name, i, 0.1);
    return true;
}

function monitor(c, url) {
    $.post("/Content/ashx/monitor.ashx", { "c": c }, function (data, state) {
        if (url != "")
            location.href = url;
    });
}

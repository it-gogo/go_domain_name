<%@ page language="java"  pageEncoding="UTF-8"%>
<p id="updTimeWrap">服务器时间：<span id="cph_serverTime_updTime">2015-01-15 13:43:20</span>&nbsp;&nbsp;(CST +08:00)</p>
<script type="text/javascript">
var updTime = document.getElementById("updTimeWrap").getElementsByTagName("span")[0];
var serverTime = "";
function getTime() {
    if (updTime.innerHTML != "") {
        //new Date无法转换 2014-01-01 01:01:01， - 替换成 / 之后转换正常
        serverTime = new Date(updTime.innerHTML.replace(/-/g,"/"));
        serverTime.setSeconds(serverTime.getSeconds() + 1);
        updTime.innerHTML = getTimeStr(serverTime);
    }
}

setInterval("getTime()", 1000);

//输出时间格式  2014-01-01 00:01:01
function getTimeStr(t) {
    var result = t.getFullYear()+"-"+bl(t.getMonth()+1)+"-"+bl(t.getDate())+" "+bl(t.getHours())+":"+bl(t.getMinutes())+":"+bl(t.getSeconds());    
    return result;
}

//补零
function bl(n) {
    return n.toString().length > 1 ? n : "0" + n;
}
</script>
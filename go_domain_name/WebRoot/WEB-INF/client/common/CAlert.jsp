<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div id="alert" style="display:none;">
<div id="ShowMsg" >
	<div style="text-indent: 10px;">
		<span id="alertMsg">请代购的域名。</span>
		<a id="closeSM" href="javascript:void(0)" onclick="hiddenAlert()" >[ 关闭 ]</a>
	</div>
	</div>
	<%--<div class="modal_window">
	</div>
--%></div>
<script type="text/javascript">
function CAlert(msg,success){
	$("#alert").show();
	$("#alertMsg").text(msg);
	if(typeof(success)=="function"){
		$("#closeSM").click(function(){
			$("#ShowMsg").fadeOut(2000,function(){success();});  
		});
	}
	return;
}

function hiddenAlert(){
	$("#alert").fadeOut(2000);  
}
</script>

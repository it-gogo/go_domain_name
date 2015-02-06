/**
 * 提示
 * @param data
 */
function formPrompt(data){
	var json = eval("("+data+")");
	if(json.status==1){//1表示成功
		CAlert(json.msg,function(){location.href="../"});
		window.setInterval(function(){location.href="../"},3000);
	}else if(json.status==0){//1表示失败
		CAlert(json.msg);
	}
}

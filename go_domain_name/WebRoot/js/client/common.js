/**
* 初始化表单提交代码
 * @param formID
 * @returns
 */
var initForm = function(formID){
	$("#"+formID).submit(function() {
        $(this).ajaxSubmit({
        	resetForm:true,
        	type:"POST",
        	cache: false,
        	success:function(data){
        		$("#"+formID).unbind("submit");
        		var json = eval("("+data+")");
        		if(json.status==1){//1表示成功
//        			saveSuccess(json.msg);
        			CAlert(json.msg,function(){location.href="../"});
        		}else if(json.status==0){//1表示失败
        			CAlert(json.msg);
        		}
        		return false;
          	}
        }); 
        return false;
	}); 
};
/**
 * 验证函数
 * @param boolean
 * @param str
 * @param obj
 * @returns {Boolean}
 */
function check(boolean,str,obj){
	$(obj).next("p.checkCss").remove();
	if(boolean){
		$(obj).next("p.check").remove();
		return true;
	}else{
		if($(obj).next("p.check").size()==0){
			$(obj).after("<p class=\"checkCss\" >"+str+"</p>");
		}
		return false;
	}
}
/**
 * 计算文字个字符数
 */
function strlen(str) 
{
 var strlength = 0;
 for (var i=0; i < str.length; ++i)
 {
  if (isChinese(str.charAt(i)) == true)
   strlength = strlength + 2;//中文计算为二个字符
  else
   strlength = strlength + 1;
 }
 return strlength;
}
function isChinese(str)
{
   var lst = /[u00-uFF]/;
   return !lst.test(str);      
}
/**
 * 不能为空，且不能大于length个字符
 * @param obj
 * @param length
 */
function checkNotEmtry(obj,length){
	if(strlen(obj.value)>length){
		return check(false,"此项字符数不得大于"+length+"个！",obj);
	}else{
		return check(obj.value!="","此项为必填项！",obj);
	}
}
/**
 * 可以为空，且不能大于length个字符
 * @param obj
 * @param length
 */
function checkEmtry(obj,length){
	var str=obj.value;
	if(strlen(str)>length){
		check(false,"此项字符数不得大于"+length+"个！",obj);
	}else{
		check(str=="" || strlen(str)<=length,"",obj);
	}
}
/**
 * 检测是数字
 * @param obj
 * @param length
 */
function checkNumber(obj,length){
	var str=/^[\d]{0,}$/;
	if(strlen(obj.value)>length){
		check(false,"此项字符数不得大于"+length+"个！",obj);
	}else{
		check(str.test(obj.value),"请填写数字类型！",obj);
	}
}
/**
 * 可以为空，检测是数字
 * @param obj
 * @param length
 */
function checkEmtryNumber(obj,length){
	var str=/^[\d]{0,}$/;
	if(strlen(obj.value)>length){
		check(false,"此项字符数不得大于"+length+"个！",obj);
	}else{
		check(str=="" || str.test(obj.value),"请填写数字类型！",obj);
	}
}
/**
 * 检测电子邮件
 * @param obj
 */
function checkEmail(obj,length){
	var str=/^[\w]+@[\w]+(\.com|\.COM)$/;
	if(strlen(obj.value)>length){
		check(false,"此项字符数不得大于"+length+"个！",obj);
	}else{
		check(str.test(obj.value),"请输入正确的email",obj);
	}
}
/**
 * 检测电子邮件(可以为空)
 * @param obj
 */
function checkEmtryEmail(obj,length){
	var str=/^[\w]+@[\w]+(\.com|\.COM)$/;
	if(strlen(obj.value)>length){
		check(false,"此项字符数不得大于"+length+"个！",obj);
	}else{
		check(obj.value=="" || str.test(obj.value),"请输入正确的email",obj);
	}
}
/**
 * 检测联系电话
 */
function checkTelephone(obj,length){
	var str=/^[\d]{4}-[\d]{7,8}$/;
	if(strlen(obj.value)>length){
		check(false,"此项字符数不得大于"+length+"个！",obj);
	}else{
		check(str.test(obj.value),"请输入正确的电话格式！",obj);
	}
}
/**
 * 检测联系电话(可以为空)
 */
function checkEmtryTelephone(obj,length){
	var str=/^[\d]{4}-[\d]{7,8}$/;
	if(strlen(obj.value)>length){
		check(false,"此项字符数不得大于"+length+"个！",obj);
	}else{
		check(obj.value=="" || str.test(obj.value),"请输入正确的电话格式！",obj);
	}
}
/**
 * 检测联系电话
 */
function checkMobile(obj,length){
	var str=/^[\d]{11}$/;
	if(strlen(obj.value)>length){
		check(false,"此项字符数不得大于"+length+"个！",obj);
	}else{
		check(str.test(obj.value),"请输入正确的手机格式！",obj);
	}
}
/**
 * 检测联系电话(可以为空)
 */
function checkEmtryMobile(obj,length){
	var str=/^[\d]{11}$/;
	if(strlen(obj.value)>length){
		check(false,"此项字符数不得大于"+length+"个！",obj);
	}else{
		check(obj.value=="" || str.test(obj.value),"请输入正确的手机格式！",obj);
	}
}

$(function(){
	$("#checkpw").blur(function(){
		var str=/^[\w]{6,16}$/;
		if(check(str.test(this.value),"请输入正确个密码格式！",this)){
			check($("#checkrpw").val()=="" || this.value==$("#checkrpw").val(),"输入密码与确认密码必须相同。",$("#checkrpw"));
		}
	});
	$("#checkrpw").blur(function(){
		check(this.value==$("#checkpw").val() || this.value=="","输入密码与确认密码必须相同。",this);
	});
});


/**
 * 保存
 */
function save(formid){
	var $obj=$(".requires");//必填项
	for(var i=0;i<$obj.size();i++){
		if($obj.eq(i).val()==""){
			if($obj.eq(i).hasClass("Wdate")){
				CAlert("请选择日期填写！");
			}else{
				$obj.eq(i).focus();
			}
			return false;
		}
	}
	if($(".checkCss").size()!=0){
		return false;
	}
	if(typeof(formid)=="undefined" || formid==""){
		formid="pform";
	}
	initForm(formid);
	$("#"+formid).submit();
}
package com.go.client.action;

import java.security.NoSuchAlgorithmException;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.alibaba.fastjson.JSONObject;
import com.go.admin.dao.ThuserDao;
import com.go.common.util.Util;
import com.go.core.action.ST2BaseAction;
import com.go.po.Thuser;
/**
 * 会员登陆
 * @author Administrator
 *
 */
@Controller("qloginAction")
@ParentPackage("account")
@Scope("prototype")
public class TqloginAction extends ST2BaseAction<Thuser, String> {
    /**
     * 到登陆页面
     * @return
     */
	public String login(){
		
		return "login";
	}
	/**
	 * 到注册页面
	 * @return
	 */
	public String register(){
		
		return "register";
	}
	/***
	 * 保存注册
	 * @return
	 */
	public String save(){
		setReturnMessage("1","注册成功");
		return "ajax";
	}
}

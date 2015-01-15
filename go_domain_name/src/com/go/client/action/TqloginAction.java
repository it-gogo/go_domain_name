package com.go.client.action;

import java.security.NoSuchAlgorithmException;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

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
@ParentPackage("client")
@Scope("prototype")
public class TqloginAction extends ST2BaseAction<Thuser, String> {
    	
	public String login(){
		
		return "login";
	}
}

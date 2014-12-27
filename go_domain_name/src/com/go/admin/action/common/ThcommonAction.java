package com.go.admin.action.common;

import java.security.NoSuchAlgorithmException;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.go.admin.dao.ThuserDao;
import com.go.common.util.Util;
import com.go.core.action.ST2BaseAction;
import com.go.po.Thuser;

@Controller("hcommonAction")
@ParentPackage("common")
@Scope("prototype")
public class ThcommonAction extends ST2BaseAction<Thuser, String> {
    

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Thuser vo = new Thuser();
	
	@Autowired
	private ThuserDao baseDao;

	public String toLogin(){
		
		return "toLogin";
	}
	
	public String login(){
		
		
		return "login";
	}
	
	public Thuser getVo() {
		return vo;
	}
	public void setVo(Thuser vo) {
		this.vo = vo;
	}
	public ThuserDao getBaseDao() {
		return baseDao;
	}
	public void setBaseDao(ThuserDao baseDao) {
		this.baseDao = baseDao;
	}
}

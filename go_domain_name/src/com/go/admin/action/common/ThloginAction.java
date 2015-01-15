package com.go.admin.action.common;

import java.security.NoSuchAlgorithmException;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.go.admin.dao.ThuserDao;
import com.go.common.util.ContextUtil;
import com.go.common.util.Util;
import com.go.core.action.ST2BaseAction;
import com.go.po.Thuser;

@Controller("hloginAction")
@ParentPackage("common")
@Scope("prototype")
public class ThloginAction extends ST2BaseAction<Thuser, String> {
    

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Thuser vo = new Thuser();
	private String msg;//提示
	
	@Autowired
	private ThuserDao baseDao;

	/**
	 * 去登陆页面
	 * @return
	 */
	public String toLogin(){
		return "login";
	}
	/**
	 * 提交登陆
	 * @return
	 * @throws Exception 
	 */
	public String login() throws Exception{
		Thuser po=baseDao.findVoByLname(vo);
		if(po==null || !po.getPassword().equals(Util.Encryption(vo.getPassword()))){
			msg="账号或密码不正确。";
			return "login";
		}
		ContextUtil.setHttpSessionVal("hloginInfo", po);
		return "main";
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
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}

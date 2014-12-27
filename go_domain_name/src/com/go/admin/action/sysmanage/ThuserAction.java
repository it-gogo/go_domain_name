package com.go.admin.action.sysmanage;

import java.security.NoSuchAlgorithmException;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.go.admin.dao.ThuserDao;
import com.go.common.util.Util;
import com.go.core.action.ST2BaseAction;
import com.go.po.Thuser;

@Controller("huserAction")
@ParentPackage("sysmanage")
@Scope("prototype")
public class ThuserAction extends ST2BaseAction<Thuser, String> {
    

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Thuser vo = new Thuser();
	
	@Autowired
	private ThuserDao baseDao;
	private String password;

	
	
	@Override
	public String addxx() throws Exception {
		if("".equals(password)){
			if("".equals(vo.getPassword())){
				vo.setPassword(Util.Encryption("123456"));
			}
		}else{
			vo.setPassword(Util.Encryption(password));
		}
		return super.addxx();
	}
	@Override
	public String updatexx()throws Exception {
		if("".equals(password)){
			if("".equals(vo.getPassword())){
				vo.setPassword(Util.Encryption("123456"));
			}
		}else{
			vo.setPassword(Util.Encryption(password));
		}
		return super.updatexx();
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}

package com.go.admin.action.sysmanage;

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

@Controller("huserAction")
@ParentPackage("sysmanage")
@Scope("prototype")
public class ThuserAction extends ST2BaseAction<Thuser, String> {
    

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Thuser vo = new Thuser();
	private String newpw;
	private String newpw1;
	
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
	
	public String modifyPassword() {
		
		return "modifyPassword";
	}
	
	public String modifyPW() throws Exception{
		if(newpw.equals(newpw1)){
			Thuser po=(Thuser) ContextUtil.getHttpSessionVal("hloginInfo");
			password=Util.Encryption(password);
			if(po.getPassword().equals(password)){
				po.setPassword(password);
				baseDao.update(po);
				setReturnMessage("0","密码修改成功");
			}else{
				setReturnMessage("0","旧密码错误");
			}
		}else{
			setReturnMessage("0","两次新密码不一致");
		}
		return "ajax";
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
	public String getNewpw() {
		return newpw;
	}
	public void setNewpw(String newpw) {
		this.newpw = newpw;
	}
	public String getNewpw1() {
		return newpw1;
	}
	public void setNewpw1(String newpw1) {
		this.newpw1 = newpw1;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}

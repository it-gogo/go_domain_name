package com.go.admin.action.common;

import java.util.List;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.go.admin.dao.ThmenuDao;
import com.go.admin.dao.ThuserDao;
import com.go.common.util.ContextUtil;
import com.go.core.action.ST2BaseAction;
import com.go.po.Thmenu;
import com.go.po.Thuser;

@Controller("hmainAction")
@ParentPackage("common")
@Scope("prototype")
public class ThmainAction extends ST2BaseAction<Thuser, String> {
    

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Thuser vo = new Thuser();
	
	@Autowired
	private ThuserDao baseDao;
	@Autowired
	private ThmenuDao menuDao;

	public String findMain(){
		try {
			Thuser po=(Thuser) ContextUtil.getHttpSessionVal("hloginInfo");
			List<Thmenu> list=menuDao.getMenulistForSysUser(po);
			System.out.println(list.size());
			System.out.println(list.get(0));
			ContextUtil.setHttpRequestVal("menuList", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
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
}

package com.go.admin.action.business;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.go.admin.dao.ThdomainDao;
import com.go.core.action.ST2BaseAction;
import com.go.po.Tdomain;

@Controller("hdomainAction")
@ParentPackage("business")
@Scope("prototype")
public class ThdomainAction extends ST2BaseAction<Tdomain, String> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Tdomain vo = new Tdomain();
	
	@Autowired
	private ThdomainDao baseDao;

	public Tdomain getVo() {
		return vo;
	}
	public void setVo(Tdomain vo) {
		this.vo = vo;
	}
	public ThdomainDao getBaseDao() {
		return baseDao;
	}
	public void setBaseDao(ThdomainDao baseDao) {
		this.baseDao = baseDao;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}

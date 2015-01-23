package com.go.admin.action.baseinfo;

import java.util.List;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.go.admin.dao.ThdataDao;
import com.go.common.util.JSONUtil;
import com.go.core.action.ST2BaseAction;
import com.go.po.Tdata;

@Controller("hdataAction")
@ParentPackage("baseinfo")
@Scope("prototype")
public class ThdataAction extends ST2BaseAction<Tdata, String> {
    

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Tdata vo = new Tdata();
	private String code;
	
	@Autowired
	private ThdataDao baseDao;
	
	public String findListByCode(){
		List<Tdata> list=baseDao.findListByCode(code);
		return this.ajaxJson(JSONUtil.listToArrayStr(list));
	}

	public Tdata getVo() {
		return vo;
	}

	public void setVo(Tdata vo) {
		this.vo = vo;
	}

	public ThdataDao getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(ThdataDao baseDao) {
		this.baseDao = baseDao;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
}

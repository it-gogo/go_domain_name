package com.go.admin.action.baseinfo;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.go.admin.dao.ThdatatypeDao;
import com.go.core.action.ST2BaseAction;
import com.go.po.Tdatatype;

@Controller("hdatatypeAction")
@ParentPackage("baseinfo")
@Scope("prototype")
public class ThdatatypeAction extends ST2BaseAction<Tdatatype, String> {
    

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Tdatatype vo = new Tdatatype();
	
	@Autowired
	private ThdatatypeDao baseDao;
	
	
	public String findTree(){
		JSONObject  obj = baseDao.findTree();
		JSONArray arr=new JSONArray();
		arr.add(obj);
		return this.ajaxJson(arr.toJSONString());
	}

	public Tdatatype getVo() {
		return vo;
	}

	public void setVo(Tdatatype vo) {
		this.vo = vo;
	}

	public ThdatatypeDao getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(ThdatatypeDao baseDao) {
		this.baseDao = baseDao;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}

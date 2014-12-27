package com.go.admin.action.sysmanage;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.go.admin.dao.ThmenuDao;
import com.go.core.action.ST2BaseAction;
import com.go.po.Thmenu;

@Controller("hmenuAction")
@ParentPackage("sysmanage")
@Scope("prototype")
public class ThmenuAction extends ST2BaseAction<Thmenu, String> {
    

	private Thmenu vo = new Thmenu();
	
	
	@Autowired
	private ThmenuDao baseDao;

	public ThmenuAction(){
//		super.setVo(this.getVo());
//		super.setBaseDao(baseDao);
	}
	
	
	/**
	 * 获取菜单树
	 * @return
	 */
	public String findTree(){
		JSONObject  obj = baseDao.findTree();
		JSONArray arr=new JSONArray();
		arr.add(obj);
		return this.ajaxJson(arr.toJSONString());
	}
	
	public Thmenu getVo() {
		return vo;
	}
	public void setVo(Thmenu vo) {
		this.vo = vo;
	}
	public ThmenuDao getBaseDao() {
		return baseDao;
	}
	public void setBaseDao(ThmenuDao baseDao) {
		this.baseDao = baseDao;
	}
}

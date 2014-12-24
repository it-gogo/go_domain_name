package com.go.admin.action.sysmanage;

import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.go.admin.dao.ThmenuDao;
import com.go.common.util.ContextUtil;
import com.go.core.action.ST2BaseAction;
import com.go.po.Thmenu;

@Controller("hmenuAction")
@ParentPackage("sysmanage")
@Scope("prototype")
public class ThmenuAction extends ST2BaseAction<Thmenu, String> {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Thmenu vo = new Thmenu();
	
	@Autowired
	private ThmenuDao baseDao;

	/**
     * 查询集合
     * @return
     */
	public String findList(){
		ContextUtil.removeSessionVal("searchparame");
		Map<String,String[]>  parame = ContextUtil.getHttpParame();
		this.setPageBean(baseDao.findList(parame));
		this.setPageUrl("hmenuAction!findList.action");
		return "list";
	}
	/**
     * 查询集合
     * @return
     */
	@SuppressWarnings("unchecked")
	public String searchList(){
		Map<String,String[]>  parame = ContextUtil.getHttpParame();
		Map<String,String[]>  map=new HashMap<String,String[]>(parame);
		if(parame.containsKey("curPage")){
			parame=(Map<String, String[]>) ContextUtil.getHttpSessionVal("searchparame");
			map.put("curPage", parame.get("curPage"));
		}else{
			ContextUtil.setHttpSessionVal("searchparame", map);
		}
		this.setPageBean(baseDao.findList(map));
		this.setPageUrl("hmenuAction!searchList.action");
		return "list";
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

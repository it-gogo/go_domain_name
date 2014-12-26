package com.go.core.action;

import java.io.IOException;
import java.io.Serializable;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.alibaba.fastjson.JSONObject;
import com.go.common.model.BaseVo;
import com.go.common.model.PageBean;
import com.go.common.model.SqlBean;
import com.go.common.util.ContextUtil;
import com.go.common.util.JSONUtil;
import com.go.common.util.Util;
import com.go.core.dao.SP3BaseDao;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 实现
 * @author Administrator
 *
 * @param <T>
 */
@Controller
@Scope("prototy")
public abstract class ST2BaseAction<T,PK> extends ActionSupport implements IBaseAction<T,String>,Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private  int  page=1;//当前页
	
	private  int   rows=10;//当前页记录数
	
	private PageBean<T> pageBean;//分页列表数据
	
	private String pageUrl;//分页按钮的地址
	
	private String id;//主键ID字符串
	
    private    String STATUS = "status";//返回的提示信息的状态
	
	private    String MESSAGE = "message";//返回提示信息的内容
	
	protected Map<String,String[]>  parame;
	
	private BaseVo vo=new BaseVo();
	
	@Autowired
	private SP3BaseDao<BaseVo,String> baseDao;
	

	public Map<String, String[]> getParame() {
		return parame;
	}

	public void setParame(Map<String, String[]> parame) {
		this.parame = parame;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPageUrl() {
		return pageUrl;
	}

	public void setPageUrl(String pageUrl) {
		this.pageUrl = pageUrl;
	}

	public PageBean<T> getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean<T> pageBean) {
		this.pageBean = pageBean;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}
    	
	public String getSTATUS() {
		return STATUS;
	}

	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}

	public String getMESSAGE() {
		return MESSAGE;
	}

	public void setMESSAGE(String mESSAGE) {
		MESSAGE = mESSAGE;
	}

	public BaseVo getVo() {
		return vo;
	}

	public void setVo(BaseVo vo) {
		this.vo = vo;
	}

	public SP3BaseDao getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(SP3BaseDao baseDao) {
		this.baseDao = baseDao;
	}

	// AJAX输出，返回null
	public String ajax(String content, String type) {
		try {
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType(type + ";charset=UTF-8");
			response.setHeader("Pragma", "No-cache");
			response.setHeader("Cache-Control", "no-cache");
			response.setDateHeader("Expires", 0);
			response.getWriter().write(content);
			response.getWriter().flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// AJAX输出文本，返回null
	public String ajaxText(String text) {
		return ajax(text, "text/plain");
	}

	// AJAX输出HTML，返回null
	public String ajaxHtml(String html) {
		return ajax(html, "text/html");
	}

	// AJAX输出XML，返回null
	public String ajaxXml(String xml) {
		return ajax(xml, "text/xml");
	}

	// 根据字符串输出JSON，返回null
	public String ajaxJson(String jsonString) {
		return ajax(jsonString, "text/html");
	}
		
	// 根据Map输出JSON，返回null
	public String ajaxJson(Map<String, String> jsonMap) {
		String jsonStr = JSONUtil.objToJSonStr(jsonMap);
		return ajax(jsonStr, "text/html");
	}
	/**
	 * 设置返回值
	 * @param status
	 * @param msg
	 */
	public void setReturnMessage(String status,String msg){
		JSONObject obj=new JSONObject();
		obj.put("status", status);
		obj.put("msg", msg);
		ajaxJson(obj.toJSONString());
	}
	
	
	
	/**
	 * 进入初始页面
	 * 
	 */
	public String redirect(){
		return this.INPUT;
	}
	
//	public PageBean<Thmenu> findList(Map<String,String[]> parame){
//		String csql = "Select count(*) from Thmenu  Where 1=1";
//		String sql = "  From Thmenu as a Where 1=1 ";
//		SqlBean sqlBean = baseDao.createSQL(sql, csql, parame, null);
//		PageBean<Thmenu>  pageBean = baseDao.getH3DbManager().findList(sqlBean);
//		return pageBean;
//	}
	/**
     * 查询集合
     * @return
     */
	public String findList(){
		return "list";
	}
	
	public String ajaxList(){
		try {
			Map<String,String[]>  parame = ContextUtil.getHttpParame();
			System.out.println(parame);
			String csql = "Select count(*) from "+vo.getClass().getName()+"  Where 1=1";
			String sql = "  From "+vo.getClass().getName()+" as a Where 1=1 ";
			System.out.println(sql);
			SqlBean sqlBean = baseDao.createSQL(sql, csql, parame, null);
			PageBean  pageBean = baseDao.getH3DbManager().findList(sqlBean);
			JSONObject  res = new JSONObject();
			res.put("total", pageBean.getAllRow());
			res.put("rows", JSONUtil.listToArray(pageBean.getList()));
			this.ajaxJson(res.toJSONString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ajax";
	}
	
	
	
	/**
	 * 去添加页码
	 * @return
	 */
	public String addxx(){
		try {
			baseDao.save(vo);
			setReturnMessage("1","添加成功");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ajax";
	}
	/**
	 * 去修改页面
	 * @return
	 */
	public String updatexx(){
		try {
			
			baseDao.update(vo);
			setReturnMessage("1","修改成功");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ajax";
	}
	/**
	 * 查询数据
	 * @return
	 */
	public String loadxx(){
		try {
			vo=baseDao.loadEntity(vo.getClass(), vo.getId());
			this.ajaxJson(JSONUtil.toJSONObjectVo(vo).toJSONString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ajax";
	}
	
	/**
	 * 删除
	 * @return
	 */
	public String deletexx(){
		Map<String,Object> map=Util.operateStr(this.getId());
		Object[] parame=(Object[]) map.get("parame");
		baseDao.getH3DbManager().deleteEntityByParame("delete "+vo.getClass().getName()+" where id "+map.get("hql"), parame);
		setReturnMessage("1","删除成功");
		return "ajax";
	}
	
	/**
	 * 修改状态
	 * @return
	 */
	public String changeStatus(){
		String isactives=vo.getIsactives();
		if("1".equals(isactives)){//当前为启动状态
			setReturnMessage("1","启用成功");
		}else{//当前为禁用状态
			setReturnMessage("1","禁用成功");
		}
		Object[] parame={isactives,vo.getId()};
		baseDao.getH3DbManager().updateForHql("update "+vo.getClass().getName()+" set isactives=? where id=?", parame);
		return "ajax";
	}
	
	
	
	

}

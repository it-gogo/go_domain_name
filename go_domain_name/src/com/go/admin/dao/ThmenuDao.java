package com.go.admin.dao;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.go.common.model.MenuPo;
import com.go.common.model.PageBean;
import com.go.common.model.SqlBean;
import com.go.core.dao.SP3BaseDao;
import com.go.po.Thmenu;
import com.go.po.Thuser;

@Repository
public class ThmenuDao extends SP3BaseDao<Thmenu, String> {

	public PageBean<Thmenu> findList(Map<String,String[]> parame){
		String csql = "Select count(*) from Thmenu  Where 1=1";
		String sql = "  From Thmenu as a Where 1=1 ";
		SqlBean sqlBean = this.createSQL(sql, csql, parame, null);
		PageBean<Thmenu>  pageBean = this.getH3DbManager().findList(sqlBean);
		return pageBean;
	}
	
	public List<Thmenu>  findAll(){
		String sql = "From Thmenu Where 1=1 and isactives=1 ";
		List<Thmenu> list = this.getH3DbManager().findList(sql);
		return list;
	}
	/**
	 * 查找用户拥有的菜单
	 * @param userid
	 * @return
	 */
	public List<Thmenu>  findUserMenu(String userid){
		String sql = "From Thmenu Where 1=1 and isactives=1 and id in (select menuid from Tauthority where roleid in (select roleid from  Tbuserrole where buserid ='"+userid+"') ) ";
		List<Thmenu> list = this.getH3DbManager().findList(sql);
		return list;
	}
	
	public String updatexx(Thmenu vo){
		this.getH3DbManager().updateEntity(vo);
		return "success";
	}
	
	
	
	/**
	 * 获取树
	 * @return
	 */
	public JSONArray  findTree(){
		List<Thmenu> list = this.findAll();
		JSONArray array = new JSONArray();
		JSONObject jsonobj = new JSONObject();
		jsonobj.put("id", "0");
		jsonobj.put("pId", "-1");
		jsonobj.put("name", "系统菜单");
		jsonobj.put("open", true);
		array.add(jsonobj);
		if(list!=null){
			for(Thmenu Thmenu:list){
			    jsonobj = new JSONObject();
				jsonobj.put("id", Thmenu.getMcode());
				jsonobj.put("pId", Thmenu.getPmcode());
				jsonobj.put("name", Thmenu.getMname());
				jsonobj.put("ids",Thmenu.getId());
				//jsonobj.put("pmcode", Thmenu.getPmcode());
				array.add(jsonobj);
			}
		}
		return array;
	}
	
	
	public String savexx(Thmenu vo){
		String mcode = this.getMaxCode(vo);
		Integer seq = this.getMaxSeq();
		int series = this.getSeries(mcode);
		vo.setMcode(mcode);
		vo.setSeq(seq);
		vo.setSeries(series);
		this.getH3DbManager().saveEntity(vo);
		return "success";
	}
	
	public  String deletexx(String id){
		boolean isChildren = this.isChilren(id);
		if(isChildren){
			return "bError";
		}
		this.getH3DbManager().delete(id, "Thmenu");
		return "success";
	}
	
	
	
	
	/**
	 * huoqu
	 * @param vo
	 * @return
	 */
	public JSONObject  getPmenu(Thmenu vo){
		String sql = "From Thmenu Where mcode=?";
		Object[] parame={vo.getPmcode()};
		Thmenu  bmenu = this.getH3DbManager().getOneObject(sql, parame);
		JSONObject jsonobj = new JSONObject();;
		if(bmenu==null){
			jsonobj = new JSONObject();
			jsonobj.put("pmcode", "0");
			jsonobj.put("pmname", "系统菜单");
			jsonobj.put("id", "root");
		}else{
		    jsonobj.put("pmname", bmenu.getMname());
		    jsonobj.put("pmcode", bmenu.getMcode());
		    jsonobj.put("id", bmenu.getId());
		}
		return jsonobj;
	}
	
	/**
	 * 获取最大的排序
	 * @return
	 */
	public Integer getMaxSeq(){
		String sql = "Select max(seq) From Thmenu ";
		Integer seq = (Integer)this.getH3DbManager().geOneObject1(sql, null);
		if(seq==null||seq==0){
			seq = 1;
		}else{
			sql +=1;
		}
		return seq;
	}
	
	/**
	 * 
	 * @param id
	 * @return
	 */
	public boolean isChilren(String id){
		String[] arr = id.split(",");
		String ids = "";
		for(int i=0;i<arr.length;i++){
			ids += "'"+arr[i]+"',";
		}
		if(ids.length()>0){
			ids = ids.substring(0,ids.length()-1);
		}
		String sql = " Select count(*) From Thmenu Where pid in("+ids+")";
		Object obj = this.getH3DbManager().geOneObject1(sql, null);
		if(obj!=null){
			Long count = (Long)obj;
			if(count>0){
				return true;
			}
		}
		return false;
	}
	
	/**
	 * 获取最大的菜单编码
	 * @param vo
	 * @return
	 */
	public String getMaxCode(Thmenu vo){
		String sql = " Select max(mcode) From Thmenu" +
				     " Where pmcode=?";
		Object[]  parame = {vo.getPmcode()};
		Object   mcode = this.getH3DbManager().geOneObject1(sql, parame);
		String res = "";
		if(mcode==null||mcode.equals("")){
			if(vo.getPmcode()==null||vo.getPmcode().equals("0")){
			  res = "100";
			}else{
			  res = vo.getPmcode()+"100";
			}
		}else{
			Long t_code = Long.parseLong(mcode.toString())+1;
			res = String.valueOf(t_code);
		}
		return res;
	}
	
	private Integer getSeries(String mcode){
		int len = mcode.length();
		int mod_len = len/3;
		return mod_len;
	}
	
	/**
	 * 取得菜单
	 * @param vo
	 * @return
	 */
	public  String  getMenulistForSysUser(Thuser vo){
		String  userId = vo.getId();
		String sql = " From Thmenu Where isactives=1  " +
				     " and id in (Select  menuid From  Tauthority Where roleid in(" +
				     " Select roleid From Tbuserrole Where buserid=?))"+
				     " Order by seq asc,id desc";
		Object[] parame={userId};
//		sql = " From Thmenu  Order by seq asc";
//		List<Thmenu> obj = this.getH3DbManager().findList(sql);
		List<Thmenu> obj = this.getH3DbManager().findList(sql, parame);
		List<MenuPo> list = new ArrayList();
		MenuPo  po = new MenuPo();
		po.setName("");
		po.setId("0");
		po.setPid("-1");
		po.setScriptEvent("#");
		po.setUrl("#");
		po.setStep(0);
		list.add(po);
		if((obj==null||obj.size()<2)){
			 po = new MenuPo();
			 po.setName("系统管理");
			 po.setId("1");
			 po.setPid("0");
			 po.setScriptEvent("addPanel");
			 po.setUrl("#");
			 po.setStep(1);
			 list.add(po);
			 po = new MenuPo();
			 po.setName("角色管理");
			 po.setId("2");
			 po.setPid("1");
			 po.setScriptEvent("addPanel");
			 po.setUrl("sysmanager/troleAction.action");
			 po.setStep(2);
			 list.add(po);
		}else{
			for(int i=0;i<obj.size();i++){
			    po = new MenuPo();
			    Thmenu  mvo = obj.get(i);
				po.setName(mvo.getMname());
				po.setUrl(mvo.getUrls());
				po.setStep(mvo.getSeries());
				po.setId(mvo.getMcode());
				po.setPid(mvo.getPmcode());
				list.add(po);
			}
		}
		return tranArrayToJson(list);
	}
	
	private  String  tranArrayToJson(List<MenuPo> array){
    	//存储临时对象
    	Map  tmpMap = new LinkedHashMap();
    	//结果返回值
    	JSONArray  res = new JSONArray();
    	MenuPo root = null;
    	for(int i=0;i<array.size();i++){
    		MenuPo  jsonobj = array.get(i);
    		String  bh = jsonobj.getId();
    		tmpMap.put(bh,jsonobj);
    	}
    	for(int i=0;i<array.size();i++){
    		MenuPo  jsonobj = array.get(i);
    		String bh = jsonobj.getId();
    		String fbh = jsonobj.getPid();
    		if("-1".equals(fbh)){
    			//根
    			root = (MenuPo)tmpMap.get(bh);
    		}else{
    	        ((MenuPo)tmpMap.get(fbh)).getChildren().addChildren((MenuPo)tmpMap.get(bh));
    	    }
    	}
    	return root.toString();
    }
}

package com.go.admin.dao;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Repository;

import com.go.common.util.TreeUtil;
import com.go.core.dao.SP3BaseDao;
import com.go.po.Thmenu;
import com.go.po.Thuser;

@Repository(value="hmenuDao")
public class ThmenuDao extends SP3BaseDao<Thmenu, String> {

	@Override
	public Thmenu save(Thmenu vo) {
		try {
			String mcode = this.getMaxCode(vo);
			Integer seq = this.getMaxSeq();
			int series = this.getSeries(mcode);
			vo.setMcode(mcode);
			vo.setSeq(seq);
			vo.setSeries(series);
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return this.getH3DbManager().saveEntity(vo);
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
	
	private Integer getSeries(String mcode){
		int len = mcode.length();
		int mod_len = len/3;
		return mod_len;
	}
	
	public List<Thmenu>  findAll(){
		String sql = "From Thmenu Where 1=1 and isactives=1 ";
		List<Thmenu> list = this.getH3DbManager().findList(sql);
		return list;
	}
	
	/**
	 * 获取树
	 * @return
	 */
	public JSONObject  findTree(){
		List<Thmenu> list = this.findAll();
		List<JSONObject> array = new ArrayList<JSONObject>();
		JSONObject jsonobj = new JSONObject();
		jsonobj.put("id", "0");
		jsonobj.put("pid", "-1");
		jsonobj.put("text", "系统菜单");
		jsonobj.put("open", true);
		array.add(jsonobj);
		if(list!=null){
			for(Thmenu hmenu:list){
			    jsonobj = new JSONObject();
				jsonobj.put("id", hmenu.getMcode());
				jsonobj.put("pid", hmenu.getPmcode());
				jsonobj.put("text", hmenu.getMname());
				jsonobj.put("ids",hmenu.getId());
				array.add(jsonobj);
			}
		}
		return TreeUtil.createMenuTree(array);
	}
	
	

	/**
	 * 取得菜单
	 * @param vo
	 * @return
	 */
	public  List<Thmenu>  getMenulistForSysUser(Thuser vo){
		String  userId = vo.getId();
		String sql = " From Tbmenu Where isactives=1  " +
				     " and id in (Select  menuid From  Tauthority Where roleid in(" +
				     " Select roleid From Tbuserrole Where buserid=?))"+
				     " Order by seq asc,id desc";
		Object[] parame={userId};
		sql = " From Thmenu  Order by seq asc";
		List<Thmenu> obj = this.getH3DbManager().findList(sql);
//		List<Tbmenu> obj = this.getH3DbManager().findList(sql, parame);
		List<Thmenu> list = new ArrayList();
		Thmenu  po = new Thmenu();
		if((obj==null||obj.size()<2)){
			 po = new Thmenu();
			 po.setPname("系统管理");
			 po.setId("1");
			 po.setPid("0");
			 po.setUrls("#");
			 po.setMname("系统管理");
			 list.add(po);
//			 po = new MenuPo();
//			 po.setMname("角色管理");
//			 po.setId("2");
//			 po.setPid("1");
//			 po.setScriptEvent("addPanel");
//			 po.setUrl("sysmanager/troleAction.action");
//			 po.setSeries(2);
//			 list.add(po);
		}else{
			//存储临时对象
	    	Map<String,Thmenu>  tmpMap = new LinkedHashMap<String,Thmenu>();
			for(int i=0;i<obj.size();i++){
			    Thmenu  mvo = obj.get(i);
				tmpMap.put(mvo.getMcode(),mvo);
			}
			for(int i=0;i<obj.size();i++){
			    Thmenu  mvo = obj.get(i);
				tmpMap.put(mvo.getMcode(),mvo);
				if("0".equals(mvo.getPmcode())){
					 list.add(tmpMap.get(mvo.getMcode()));
				}else{
					tmpMap.get(mvo.getPmcode()).getList().add(mvo);
				}
			}
		}
		return list;
	}
	
	
}

package com.go.admin.dao;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Repository;

import com.go.core.dao.SP3BaseDao;
import com.go.po.Thmenu;

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
		return createMenuTree(array);
	}
	
	public JSONObject createMenuTree(List<JSONObject> array){
		//存储临时对象
    	Map  tmpMap = new LinkedHashMap();
    	//结果返回值
    	JSONObject root = null;
    	for(int i=0;i<array.size();i++){
    		JSONObject  jsonobj = array.get(i);
    		String  bh = (String) jsonobj.get("id");
    		tmpMap.put(bh,jsonobj);
    	}
    	for(int i=0;i<array.size();i++){

    		JSONObject  jsonobj = array.get(i);
    		String bh = (String) jsonobj.get("id");
    		String fbh = (String) jsonobj.get("pid");
    		if("-1".equals(fbh)){
    			//根
    			root = (JSONObject)tmpMap.get(bh);
    		}else{
    			if(tmpMap.get(fbh)!=null){
    			JSONArray ca=(JSONArray) ((JSONObject)tmpMap.get(fbh)).get("children");
    			if(ca==null){
    				ca=new JSONArray();
    				((JSONObject)tmpMap.get(fbh)).put("children", ca);
    			}
    			ca.add((JSONObject)tmpMap.get(bh));
    			}
    	    }
    	}
    	return root;
	}

}

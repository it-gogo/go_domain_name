package com.go.admin.dao;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Repository;

import com.alibaba.fastjson.JSONArray;
import com.go.common.util.TreeUtil;
import com.go.core.dao.SP3BaseDao;
import com.go.po.Tdatatype;

@Repository(value="hdatatypeDao")
public class ThdatatypeDao extends SP3BaseDao<Tdatatype, String> {

	public List<Tdatatype>  findAll(){
		String sql = "From Tdatatype Where 1=1 and isactives=1 ";
		List<Tdatatype> list = this.getH3DbManager().findList(sql);
		return list;
	}
	/**
	 * 获取树
	 * @return
	 */
	public JSONObject  findTree(){
		List<Tdatatype> list = this.findAll();
//		return JSONUtil.listToArray(list);
		List<JSONObject> array = new ArrayList<JSONObject>();
		JSONObject jsonobj = new JSONObject();
		jsonobj.put("id", "0");
		jsonobj.put("pid", "-1");
		jsonobj.put("text", "数据字典");
		jsonobj.put("open", true);
		array.add(jsonobj);
		if(list!=null){
			for(Tdatatype type:list){
			    jsonobj = new JSONObject();
				jsonobj.put("id", type.getId());
				jsonobj.put("text", type.getName());
				jsonobj.put("code", type.getCode());
				jsonobj.put("pid", "0");
				array.add(jsonobj);
			}
		}
		return TreeUtil.createMenuTree(array);
	}
	
}

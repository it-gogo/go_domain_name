package com.go.common.util;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;

import com.alibaba.fastjson.JSONArray;
import com.go.common.model.MenuPo;

public class TreeUtil {

	public static JSONObject createMenuTree(List<JSONObject> array){
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
	
	public static String createMenuTree1(List<MenuPo> array){
		//存储临时对象
    	Map  tmpMap = new LinkedHashMap();
    	//结果返回值
    	JSONArray root = new JSONArray();
    	for(int i=0;i<array.size();i++){
    		MenuPo  jsonobj = array.get(i);
    		String  bh = (String) jsonobj.getId();
    		tmpMap.put(bh,jsonobj);
    	}
    	for(int i=0;i<array.size();i++){

    		MenuPo  jsonobj = array.get(i);
    		String bh = (String) jsonobj.getId();
    		String fbh = (String) jsonobj.getPid();
    		if("0".equals(fbh)){
    			root .add(tmpMap.get(bh));
    			//根
    		}else{
    			if(tmpMap.get(fbh)!=null){
    				 ((MenuPo)tmpMap.get(fbh)).getChildren().addChildren((MenuPo)tmpMap.get(bh));
    			}
    	    }
    	}
    	return root.toJSONString();
	}
}

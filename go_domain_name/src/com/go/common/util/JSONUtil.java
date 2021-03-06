package com.go.common.util;

import java.beans.PropertyDescriptor;
import java.util.List;

import org.apache.commons.beanutils.PropertyUtils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

/**
 * 陈海彬
 * 日期：2014-03-12
 * 功能：JSON转换工具
 * @author Administrator ObjectDeserializer 
 *
 * 数据转换例子
 * ParserConfig parserConfig = ParserConfig.getGlobalInstance();  
 * parserConfig.putDeserializer(java.sql.Timestamp.class, RrepairTimeTimestampDeserializer.instance);  
 * TbRrepairTelephone tbRrepairTelephone = JSON.parseObject(jsonString, TbRrepairTelephone.class,parserConfig,JSON.DEFAULT_PARSER_FEATURE); 
 */
public class JSONUtil {

	/**
	 * 转JSON字符串
	 * @param list
	 * @return
	 */
	public static String  listToArrayStr(List  list){
		return JSON.toJSONString(list, true);
	}
	
	public static JSONArray listToArray(List list){
		return  (JSONArray)JSON.toJSON(list);
	}
	
	/**
	 * JSON数组转换成
	 * @param jsonstr
	 * @return
	 */
	public static List  jsonstrToList(String jsonstr,Class clazz){
		return JSON.parseArray(jsonstr,clazz);
	}
	
	/**
	 * 转换成JSONArray
	 * @param jsonstr
	 * @return
	 */
	public  static JSONArray strToArray(String jsonstr){
		
		return JSON.parseArray(jsonstr);
	}
	
	/**
	 * 对象转换成JSON字符串
	 * @param obj
	 * @return
	 */
	public  static String  objToJSonStr(Object  obj){
		return  JSON.toJSONString(obj,true);
	}
	
	/***
	 * 将JSON字符串转换成JSON对象
	 * @param jsonStr
	 * @return
	 */
	public  static JSONObject strToJSONObj(String jsonStr){
		return JSON.parseObject(jsonStr);
	}
	
	
	
	/**
	 * JSON字符串转换成
	 * @param jsonstr
	 * @param calzz
	 * @return
	 */
	public  static JSON  jsonStrToEntity(String jsonstr,Class calzz){
		return JSON.parseObject(jsonstr,calzz);
	}
	
	/**
	 * 对象转换成JSON 对象
	 * @param obj
	 * @return
	 */
	public  static JSONObject  objToJson(Object obj){
		return (JSONObject)JSON.toJSON(obj);
	}
	
	
	public static JSONObject toJSONObject(Object obj) {
		JSONObject jsonObject = new JSONObject();
		PropertyDescriptor[] destDesc = PropertyUtils
				.getPropertyDescriptors(obj);
		try {
			for (int i = 0; i < destDesc.length; i++) {
				if (destDesc[i].getName().equals("class"))
					continue;
				if (PropertyUtils.getProperty(obj, destDesc[i].getName()) == null) {
					jsonObject.put(destDesc[i].getName(), "");
				} else {
					//System.out.println(PropertyUtils.(obj, destDesc[i].getName()));
					jsonObject
							.put(destDesc[i].getName(), PropertyUtils
									.getProperty(obj,destDesc[i].getName())
									.toString());
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jsonObject;
	}
	
	public static JSONObject toJSONObjectVo(Object obj) {
		JSONObject jsonObject = new JSONObject();
		PropertyDescriptor[] destDesc = PropertyUtils
				.getPropertyDescriptors(obj);
		try {
			for (int i = 0; i < destDesc.length; i++) {
				if (destDesc[i].getName().equals("class"))
					continue;
				if (PropertyUtils.getProperty(obj, destDesc[i].getName()) == null) {
					jsonObject.put("vo."+destDesc[i].getName(), "");
				} else {
					//System.out.println(PropertyUtils.(obj, destDesc[i].getName()));
					jsonObject
							.put("vo."+destDesc[i].getName(), PropertyUtils
									.getProperty(obj,destDesc[i].getName())
									.toString());
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jsonObject;
	}
	/*public  static void  main(String[] arg){
		Tmenu  vo = new Tmenu();
		List<Tmenu> list = new ArrayList<Tmenu>();
		vo.setId("0");
		vo.setText("测试");
		vo.setPid("-1");
		vo.setStep(0);
		list.add(vo);
		JSONObject  jsonobj = objToJson(vo);
		System.out.println(jsonobj.toJSONString());
		vo = new Tmenu();
		vo.setId("1");
		vo.setText("测试1");
		vo.setMurl("../test.jsp");
		vo.setMscript("addPanel");
		vo.setStep(1);
		vo.setPid("0");
		list.add(vo);
		vo = new Tmenu();
		vo.setId("2");
		vo.setText("测试2");
		vo.setMurl("../test.jsp");
		vo.setMscript("addPanel");
		
		vo.setStep(2);
		vo.setPid("1");
		list.add(vo);
		vo = new Tmenu();
		vo.setId("3");
		vo.setText("测试11");
		vo.setMurl("../test.jsp");
		vo.setMscript("addPanel");
		
		vo.setStep(1);
		vo.setPid("0");
		list.add(vo);
//		JSONArray  array = listToArray(list);
		long s = System.currentTimeMillis();
		LogUtil.info(JSONUtil.class, "开始："+System.currentTimeMillis());
		String str = TreeUtil.menuArrayToJson(list);
		LogUtil.info(JSONUtil.class, "结束："+(System.currentTimeMillis()-s));
		System.out.println(str);
	}*/
	
	
	
	
}

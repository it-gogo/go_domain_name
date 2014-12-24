package com.go.common.model;

import java.io.Serializable;

import com.go.common.util.JSONUtil;

/**
 * HIBERNATE对象基类
 * @author Administrator
 *
 */
public class BaseVo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5409849352645179237L;

	//主键
	private  String  id;
	
	//是否使用
	private  String  isactives;
	
	//描述
	private  String description;

	


	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getIsactives() {
		return isactives;
	}

	public void setIsactives(String isactives) {
		this.isactives = isactives;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public String toString(){
		if(this==null){
			return "";
		}
		return JSONUtil.objToJSonStr(this);
	}
}

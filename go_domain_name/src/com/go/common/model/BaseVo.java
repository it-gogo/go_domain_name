package com.go.common.model;

import java.io.Serializable;

import com.go.common.util.JSONUtil;

/**
 * HIBERNATE对象基类
 * @author Administrator
 *
 */
public class BaseVo {


	//主键
	private  String  id;
	
	//是否使用
	private  String  isactives;
	
	//描述
	private  String remark;

	


	

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

	
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String toString(){
		if(this==null){
			return "";
		}
		return JSONUtil.objToJSonStr(this);
	}
}

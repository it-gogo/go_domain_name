package com.go.po;

/**
 * Thuser entity. @author MyEclipse Persistence Tools
 */

public class Tquser extends com.go.common.model.BaseVo implements
		java.io.Serializable {

	// Fields

	private String id;
	private String password;
	private String name;
	private String email;
	private String mobile;
	private String qq;
	private String remark;
	private String telephone;
	private String isactives;
	private Integer status;

	// Constructors

	/** default constructor */
	public Tquser() {
	}


	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}


	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getQq() {
		return this.qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}


	public String getIsactives() {
		return this.isactives;
	}

	public void setIsactives(String isactives) {
		this.isactives = isactives;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getTelephone() {
		return telephone;
	}


	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}


	public Integer getStatus() {
		return status;
	}


	public void setStatus(Integer status) {
		this.status = status;
	}

}
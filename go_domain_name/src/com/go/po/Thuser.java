package com.go.po;

/**
 * Thuser entity. @author MyEclipse Persistence Tools
 */

public class Thuser extends com.go.common.model.BaseVo implements
		java.io.Serializable {

	// Fields

	private String id;
	private String lname;
	private String password;
	private String uname;
	private String email;
	private String mobile;
	private String qq;
	private String remark;
	private String issuperadmin;
	private String isactives;

	// Constructors

	/** default constructor */
	public Thuser() {
	}

	/** full constructor */
	public Thuser(String lname, String password, String uname, String email,
			String mobile, String qq, String remark, String issuperadmin,
			String isactives) {
		this.lname = lname;
		this.password = password;
		this.uname = uname;
		this.email = email;
		this.mobile = mobile;
		this.qq = qq;
		this.remark = remark;
		this.issuperadmin = issuperadmin;
		this.isactives = isactives;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLname() {
		return this.lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
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

	public String getIssuperadmin() {
		return this.issuperadmin;
	}

	public void setIssuperadmin(String issuperadmin) {
		this.issuperadmin = issuperadmin;
	}

	public String getIsactives() {
		return this.isactives;
	}

	public void setIsactives(String isactives) {
		this.isactives = isactives;
	}

}
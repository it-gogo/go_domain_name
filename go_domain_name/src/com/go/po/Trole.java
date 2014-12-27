package com.go.po;

/**
 * Trole entity. @author MyEclipse Persistence Tools
 */

public class Trole extends com.go.common.model.BaseVo implements
		java.io.Serializable {

	// Fields

	private String id;
	private String rname;
	private String creator;
	private String remark;
	private String isactives;

	// Constructors

	/** default constructor */
	public Trole() {
	}

	/** full constructor */
	public Trole(String rname, String creator, String isactives) {
		this.rname = rname;
		this.creator = creator;
		this.isactives = isactives;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getRname() {
		return this.rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getCreator() {
		return this.creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public String getIsactives() {
		return this.isactives;
	}

	public void setIsactives(String isactives) {
		this.isactives = isactives;
	}

}
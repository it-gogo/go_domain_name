package com.go.po;

/**
 * Thmenu entity. @author MyEclipse Persistence Tools
 */

public class Thmenu extends com.go.common.model.BaseVo implements
		java.io.Serializable {

	// Fields

	private String id;
	private String pid;
	private String mname;
	private String urls;
	private String mcode;
	private String pmcode;
	private Integer series;
	private String scriptname;
	private String icon;
	private String remark;
	private String isactives;
	private Integer seq;

	// Constructors

	/** default constructor */
	public Thmenu() {
	}

	/** minimal constructor */
	public Thmenu(Integer series) {
		this.series = series;
	}

	/** full constructor */
	public Thmenu(String pid, String mname, String urls, String mcode,
			String pmcode, Integer series, String scriptname, String icon,
			String remark, String isactives, Integer seq) {
		this.pid = pid;
		this.mname = mname;
		this.urls = urls;
		this.mcode = mcode;
		this.pmcode = pmcode;
		this.series = series;
		this.scriptname = scriptname;
		this.icon = icon;
		this.remark = remark;
		this.isactives = isactives;
		this.seq = seq;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPid() {
		return this.pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getMname() {
		return this.mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getUrls() {
		return this.urls;
	}

	public void setUrls(String urls) {
		this.urls = urls;
	}

	public String getMcode() {
		return this.mcode;
	}

	public void setMcode(String mcode) {
		this.mcode = mcode;
	}

	public String getPmcode() {
		return this.pmcode;
	}

	public void setPmcode(String pmcode) {
		this.pmcode = pmcode;
	}

	public Integer getSeries() {
		return this.series;
	}

	public void setSeries(Integer series) {
		this.series = series;
	}

	public String getScriptname() {
		return this.scriptname;
	}

	public void setScriptname(String scriptname) {
		this.scriptname = scriptname;
	}

	public String getIcon() {
		return this.icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
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

	public Integer getSeq() {
		return this.seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

}
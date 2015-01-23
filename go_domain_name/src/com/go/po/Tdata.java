package com.go.po;



/**
 * Tdate entity. @author MyEclipse Persistence Tools
 */

public class Tdata extends com.go.common.model.BaseVo implements java.io.Serializable {


    // Fields    

     private String id;
     private String name;
     private String typeid;
     private String typename;
     private Integer seq;
     private String isactives;


    // Constructors

    /** default constructor */
    public Tdata() {
    }

    
    /** full constructor */
    public Tdata(String name, String typeid, Integer seq, String isactives) {
        this.name = name;
        this.typeid = typeid;
        this.seq = seq;
        this.isactives = isactives;
    }

   
    // Property accessors

    public String getId() {
        return this.id;
    }
    
    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public String getTypeid() {
        return this.typeid;
    }
    
    public void setTypeid(String typeid) {
        this.typeid = typeid;
    }

    public Integer getSeq() {
        return this.seq;
    }
    
    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    public String getIsactives() {
        return this.isactives;
    }
    
    public void setIsactives(String isactives) {
        this.isactives = isactives;
    }


	public String getTypename() {
		return typename;
	}


	public void setTypename(String typename) {
		this.typename = typename;
	}
   

}
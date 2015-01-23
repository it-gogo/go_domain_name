package com.go.po;



/**
 * Tdatetype entity. @author MyEclipse Persistence Tools
 */

public class Tdatatype extends com.go.common.model.BaseVo implements java.io.Serializable {


    // Fields    

     private String id;
     private String name;
     private String code;
     private String isactives;


    // Constructors

    /** default constructor */
    public Tdatatype() {
    }

    
    /** full constructor */
    public Tdatatype(String name, String code, String isactives) {
        this.name = name;
        this.code = code;
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

    public String getCode() {
        return this.code;
    }
    
    public void setCode(String code) {
        this.code = code;
    }

    public String getIsactives() {
        return this.isactives;
    }
    
    public void setIsactives(String isactives) {
        this.isactives = isactives;
    }
   








}
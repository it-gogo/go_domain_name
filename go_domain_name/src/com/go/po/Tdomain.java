package com.go.po;



/**
 * Tdomain entity. @author MyEclipse Persistence Tools
 */

public class Tdomain extends com.go.common.model.BaseVo implements java.io.Serializable {


    // Fields    

     private String id;
     private String mname;
     private String typeid;
     private String price;
     private Integer scannum;
     private Integer quotenum;
     private String saletypeid;
     private String scanip;
     private String lastscandate;
     private Integer seq;
     private String isactives;


    // Constructors

    /** default constructor */
    public Tdomain() {
    }

	/** minimal constructor */
    public Tdomain(Integer quotenum) {
        this.quotenum = quotenum;
    }
    
    /** full constructor */
    public Tdomain(String mname, String typeid, String price, Integer scannum, Integer quotenum, String saletypeid, String scanip, String lastscandate, Integer seq, String isactives) {
        this.mname = mname;
        this.typeid = typeid;
        this.price = price;
        this.scannum = scannum;
        this.quotenum = quotenum;
        this.saletypeid = saletypeid;
        this.scanip = scanip;
        this.lastscandate = lastscandate;
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

    public String getMname() {
        return this.mname;
    }
    
    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getTypeid() {
        return this.typeid;
    }
    
    public void setTypeid(String typeid) {
        this.typeid = typeid;
    }

    public String getPrice() {
        return this.price;
    }
    
    public void setPrice(String price) {
        this.price = price;
    }

    public Integer getScannum() {
        return this.scannum;
    }
    
    public void setScannum(Integer scannum) {
        this.scannum = scannum;
    }

    public Integer getQuotenum() {
        return this.quotenum;
    }
    
    public void setQuotenum(Integer quotenum) {
        this.quotenum = quotenum;
    }

    public String getSaletypeid() {
        return this.saletypeid;
    }
    
    public void setSaletypeid(String saletypeid) {
        this.saletypeid = saletypeid;
    }

    public String getScanip() {
        return this.scanip;
    }
    
    public void setScanip(String scanip) {
        this.scanip = scanip;
    }

    public String getLastscandate() {
        return this.lastscandate;
    }
    
    public void setLastscandate(String lastscandate) {
        this.lastscandate = lastscandate;
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
   








}
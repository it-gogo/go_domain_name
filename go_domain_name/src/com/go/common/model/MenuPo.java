package com.go.common.model;

import java.util.ArrayList;
import java.util.List;

public class MenuPo {
   
	private  String id;
	
	private  String mname;
	
	private  String url;
	
	private  String scriptEvent;
	
	private String icon;//图标路径
	
	private  MenuChildren  children = new MenuChildren();
	
	private  String  pid;
	
	private  int series;
	




	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getPid() {
		return pid;
	}



	public void setPid(String pid) {
		this.pid = pid;
	}


	public String getMname() {
		return mname;
	}



	public void setMname(String mname) {
		this.mname = mname;
	}



	public String getIcon() {
		return icon;
	}



	public void setIcon(String icon) {
		this.icon = icon;
	}



	public int getSeries() {
		return series;
	}



	public void setSeries(int series) {
		this.series = series;
	}



	public String getUrl() {
		return url;
	}



	public void setUrl(String url) {
		this.url = url;
	}



	public String getScriptEvent() {
		return scriptEvent;
	}



	public void setScriptEvent(String scriptEvent) {
		this.scriptEvent = scriptEvent;
	}



	public MenuChildren getChildren() {
		return children;
	}



	public void setChildren(MenuChildren children) {
		this.children = children;
	}
	
	
	public String  toString(){
		String res = "";
		List<MenuPo>  list = children.getList();
		if(series==1){
			res +="<div title=\""+mname+"\"  data-options=\"selected:true\" style=\"margin: 0px;padding: 0px;\" ><ul style=\"list-style-type:none\">";
		}else if(series==2){
			res+="<li><a href=\"javascript:void(0);\" onclick=\"addPanel('"+id+"','"+mname+"','"+url+"');\"  >";
			if(icon==null || "".equals(icon)){
				icon="../css/admin/images/Menu_management.png";
			}
			res +="<img src="+icon+" />";
			res+="<label>"+mname+"</label></a></li>";
		}
		for(int i=0;i<list.size();i++){
			MenuPo  p = list.get(i);
		    res += p;
		}
		if(series==1){
			res +="</ul></div>";
		}
		return res;
	}



	public class  MenuChildren{
		private List<MenuPo>  list = new ArrayList();
		
		public  void  addChildren(MenuPo  po){
			this.list.add(po);
		}

		public List<MenuPo> getList() {
			return list;
		}
		
		
		
		
	}
	
}

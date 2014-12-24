package com.go.common.model;

import java.util.ArrayList;
import java.util.List;

public class MenuPo {
   
	private  String id;
	
	private  String name;
	
	private  String url;
	
	private  String scriptEvent;
	
	private String imgurl;//图标路径
	
	private  MenuChildren  children = new MenuChildren();
	
	private  String  pid;
	
	private  int step;
	




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



	public String getImgurl() {
		return imgurl;
	}



	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}



	public int getStep() {
		return step;
	}



	public void setStep(int step) {
		this.step = step;
	}






	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
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
		if(step==0){
			res +="<ul id=\"navigation\">";
		}else if(step==1){
			res+="<li> <a class=\"head\">"+name+"</a>";
			res +="<ul>";
		}else if(step==2){
			res +=" <li><a href=\""+url+"\" target=\"rightFrame\">"+name+"</a></li>";
		}
		for(int i=0;i<list.size();i++){
			MenuPo  p = list.get(i);
		    res += p;
		}
		if(step==1){
			res +="</ul>";
			res +=" </li>";
			
		}else if(step==0){
			res +=" </li>";
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

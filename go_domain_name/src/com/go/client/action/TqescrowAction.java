package com.go.client.action;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.go.core.action.ST2BaseAction;
import com.go.po.Thuser;
/**
 * 域名中介
 * @author Administrator
 *
 */
@Controller("qescrowAction")
@ParentPackage("client")
@Scope("prototype")
public class TqescrowAction extends ST2BaseAction<Thuser, String> {
    	
	public String escrow(){
		
		return "escrow";
	}
}

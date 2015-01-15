package com.go.client.action;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.go.core.action.ST2BaseAction;
import com.go.po.Thuser;
/**
 * 卖域名
 * @author Administrator
 *
 */
@Controller("qsellAction")
@ParentPackage("client")
@Scope("prototype")
public class TqsellAction extends ST2BaseAction<Thuser, String> {
    	
	public String sell(){
		
		return "sell";
	}
}

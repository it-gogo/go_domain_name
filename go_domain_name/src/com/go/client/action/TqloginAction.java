package com.go.client.action;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.go.client.dao.TquserDao;
import com.go.common.util.DES;
import com.go.common.util.ParameUtil;
import com.go.common.util.Util;
import com.go.core.action.ST2BaseAction;
import com.go.email.SendEmail;
import com.go.po.Tquser;
/**
 * 会员登陆
 * @author Administrator
 *
 */
@Controller("qloginAction")
@ParentPackage("account")
@Scope("prototype")
public class TqloginAction extends ST2BaseAction<Tquser, String> {
	
	private Tquser vo=new Tquser();
	@Autowired
	private TquserDao baseDao;
	@Resource
	private SendEmail sendEmail;
	
    /**
     * 到登陆页面
     * @return
     */
	public String login(){
		
		return "login";
	}
	/**
	 * 到注册页面
	 * @return
	 */
	public String register(){
		
		return "register";
	}
	/***
	 * 保存注册
	 * @return
	 * @throws Exception 
	 */
	public String save() throws Exception{
		vo.setStatus(1);
		vo=baseDao.save(vo);
		setReturnMessage("1","注册成功");
		
		Map<String, Object> root = new HashMap<String,Object>();
		String url=ParameUtil.getParame("url");
		String str=vo.getId()+":"+System.currentTimeMillis()+":"+vo.getStatus();
		str=DES.encrypt(str, DES.key);
		url+="/account/qloginAction!activation.action?vo.id="+str;
		root.put("url", url);
		sendEmail.sendEmail(vo.getEmail(), "会员注册确认信", Util.getTempStr("register.flt", root));
		
		return "ajax";
	}
	/**
	 * 激活账号
	 * @return
	 * @throws Exception 
	 */
	public String activation() throws Exception{
		String str=vo.getId();
		str=DES.decrypt(str, DES.key);
		String[] arr=str.split(":");
		String status="0",msg="",href="../";
		if(arr!=null && arr.length==3){
			long l=Long.parseLong(arr[1]);
			Tquser po=baseDao.getEntity(Tquser.class, arr[0]);
			if(System.currentTimeMillis()-l<1000*60*60*24 && po.getStatus()==Integer.parseInt(arr[2])){//一天之内
				po.setStatus(po.getStatus()+1);
				baseDao.update(po);
				status="1";
				msg="会员账号激活成功。";
			}else{
				msg="连接过期，点击返回主页面。";
			}
		}else{
			msg="连接错误，请重新提交。";
			href="../account/qloginAction!register.action";
		}
		return Util.operationTips(status, msg, href);
	}
	public Tquser getVo() {
		return vo;
	}
	public void setVo(Tquser vo) {
		this.vo = vo;
	}
	public TquserDao getBaseDao() {
		return baseDao;
	}
	public void setBaseDao(TquserDao baseDao) {
		this.baseDao = baseDao;
	}
}

package com.go.admin.action.sysmanage;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.go.core.action.ST2BaseAction;
import com.go.po.Thuser;

@Controller("huserAction")
@ParentPackage("sysmanage")
@Scope("prototype")
public class ThuserAction extends ST2BaseAction<Thuser, String> {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Thuser vo = new Thuser();
	
//	@Autowired
//	private ThuserDao baseDao;

	public ThuserAction(){
		super.setVo(this.getVo());
//		super.setBaseDao(baseDao);
	}
	
	
	public Thuser getVo() {
		return vo;
	}
	public void setVo(Thuser vo) {
		this.vo = vo;
	}
//	public ThuserDao getBaseDao() {
//		return baseDao;
//	}
//	public void setBaseDao(ThuserDao baseDao) {
//		this.baseDao = baseDao;
//	}
}

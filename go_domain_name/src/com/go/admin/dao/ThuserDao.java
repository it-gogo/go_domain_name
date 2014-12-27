package com.go.admin.dao;

import org.springframework.stereotype.Repository;

import com.go.core.dao.SP3BaseDao;
import com.go.po.Thuser;

@Repository(value="huserDao")
public class ThuserDao extends SP3BaseDao<Thuser, String> {
	/**
	 * 查找对象通过登陆账号
	 * @param vo
	 * @return
	 */
	public Thuser findVoByLname(Thuser vo){
		Object[] parame={vo.getLname()};
		vo=this.getH3DbManager().getOneObject("From Thuser where lname=?", parame);
		return vo;
	}

	
	
}

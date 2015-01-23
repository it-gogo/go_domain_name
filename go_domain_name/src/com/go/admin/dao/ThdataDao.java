package com.go.admin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.go.core.dao.SP3BaseDao;
import com.go.po.Tdata;

@Repository(value="hdataDao")
public class ThdataDao extends SP3BaseDao<Tdata, String> {

	public List<Tdata> findListByCode(String code){
		String hql="From Tdata where isactives=1 and typeid in (select id from Tdatatype where code =?) ";
		Object[] parame={code};
		List<Tdata> list=this.getH3DbManager().findList(hql,parame);
		return list;
	}
	
}

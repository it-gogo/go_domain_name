package com.go.admin.dao;

import org.springframework.stereotype.Repository;

import com.go.common.model.BaseVo;
import com.go.core.dao.SP3BaseDao;
import com.go.po.Tdomain;

@Repository(value="hdomainDao")
public class ThdomainDao extends SP3BaseDao<Tdomain, String> {
	
	/**
	 * 取得要查询的SQL
	 * @return
	 */
	public  String  getSql(BaseVo  vo ){
		String sql = "select new map (id as id,mname as mname,price as price,(select name from Tdata where id =a.typeid) as typename,saletypeid as saletypeid) From "+vo.getClass().getName()+   " as a Where 1=1 ";
		return sql;
	}
}

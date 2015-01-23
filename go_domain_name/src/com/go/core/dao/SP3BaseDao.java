package com.go.core.dao;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.go.common.model.BaseVo;
import com.go.common.model.SqlBean;
import com.go.common.util.Util;
import com.go.core.db.IHDbManager;

/**
 * 服务层
 * @author Administrator
 *
 * @param <T>
 */
@Repository(value="baseDao")
public  class SP3BaseDao<T,PK extends Serializable> implements ISP3BaseDao<T,PK> {

	@Autowired
	private  IHDbManager<T,PK>  h3DbManager;
	

	public IHDbManager<T, PK> getH3DbManager() {
		return h3DbManager;
	}
	

	public void setH3DbManager(IHDbManager<T, PK> h3DbManager) {
		this.h3DbManager = h3DbManager;
	}



	@Override
	public T save(T t) {
		T  entity = this.getH3DbManager().saveEntity(t);
		return entity;
	}

	@Override
	public T update(T t)  {
		T  entity = this.getH3DbManager().updateEntity(t);
		return entity;
	}

	@Override
	public T getEntity(Class<?> c, Serializable id)  {
		T  entity = this.getH3DbManager().getEntityById(c, id);
		return entity;
	}

	@Override
	public T loadEntity(Class<?> classzz, Serializable id)  {
		T  entity = this.getH3DbManager().loadEntityById(classzz, id);
		return entity;
	}
	
	public SqlBean createSqlBean(BaseVo vo,Map<String,String[]>  parame){
		String csql = "Select count(*) from "+vo.getClass().getName()+"  Where 1=1";
		String sql = "  From "+vo.getClass().getName()+" as a Where 1=1 ";
		SqlBean sqlBean = this.createSQL(sql, csql, parame, null);
		return sqlBean;
	}
	
	/**
	 * 创建SQL 
	 * @param sql
	 * @param parame
	 * @return
	 */
	public SqlBean  createSQL(String lhql,String chql,Map<String,String[]> parame,String orderby){
		SqlBean sqlBean = new SqlBean();
		StringBuffer  lsbf = new StringBuffer(lhql);
		StringBuffer  csbf = new StringBuffer(chql);
		List<Object> list = new ArrayList();
		if(parame!=null){
		Iterator it = parame.keySet().iterator();
			while(it.hasNext()){
				String key = (String)it.next();
			    String[] val = parame.get(key);
			    if(!"page".equals(key)&&!"rows".equals(key)){
				    if(val!=null){
				    	if(val.length<2){
				    		if(!"".equals(val[0])){
				    			if(key.indexOf("or_") == 0){
				    				lsbf.append(" or ");
				    				csbf.append(" or ");
				    			}else{
				    				lsbf.append(" and ");
				    				csbf.append(" and ");
				    			}
				    			if(key.indexOf("_right") != -1 && key.indexOf("_right") == (key.length() - 6)){
				    				lsbf.append(key.replace("_right", "").replace("and_", "").replace("or_", ""));
				    				lsbf.append(" like ? ");
				    				csbf.append(key.replace("_right", "").replace("and_", "").replace("or_", ""));
				    				csbf.append(" like ? ");
				    				list.add(val[0].trim()+"%");
				    			}else if(key.indexOf("_like") != -1 && key.indexOf("_like") == (key.length() - 5)){
				    				lsbf.append(key.replace("_like", "").replace("and_", "").replace("or_", ""));
				    				lsbf.append(" like ? ");
				    				csbf.append(key.replace("_like", "").replace("and_", "").replace("or_", ""));
				    				csbf.append(" like ? ");
				    				list.add("%"+val[0].trim()+"%");
				    			}else if(key.indexOf("or_") != -1 && key.indexOf("or_") == (key.length() - 3)){
				    				lsbf.append(key.replace("_like", "").replace("and_", "").replace("or_", ""));
				    				lsbf.append(" like ? ");
				    				csbf.append(key.replace("_like", "").replace("and_", "").replace("or_", ""));
				    				csbf.append(" like ? ");
				    				list.add(val[0].trim()+"%");
				    			}else if(key.indexOf("_<>") != -1 && key.indexOf("_<>") == (key.length() - 3)){
				    				lsbf.append(key.replace("_<>", "").replace("and_", "").replace("or_", ""));
				    				lsbf.append(" <> ? ");
				    				csbf.append(key.replace("_<>", "").replace("and_", "").replace("or_", ""));
				    				csbf.append(" <> ? ");
				    				list.add(val[0]);
				    			}else if(key.indexOf("_in") != -1 && key.indexOf("_in") == (key.length() - 3)){
				    				String str=val[0];
				    				Map<String,Object> m=Util.operateStr(str);
				    				lsbf.append(key.replace("_in", "").replace("and_", "").replace("or_", ""));
				    				lsbf.append(m.get("hql"));
				    				csbf.append(key.replace("_in", "").replace("and_", "").replace("or_", ""));
				    				csbf.append(m.get("hql"));
				    				list.addAll(ArrayToObjList((Object[])m.get("parame")));
				    			}else if(key.indexOf("_integer") != -1 && key.indexOf("_integer") == (key.length() - 8)){
				    				lsbf.append(key.replace("_integer", "").replace("and_", "").replace("or_", ""));
				    				lsbf.append(" = ? ");
				    				csbf.append(key.replace("_integer", "").replace("and_", "").replace("or_", ""));
				    				csbf.append(" = ? ");
				    				list.add(Integer.parseInt(val[0]));
				    			}else if(key.indexOf("_hql") != -1 && key.indexOf("_hql") == (key.length() - 4)){
				    				lsbf.append(key.replace("_hql", "").replace("and_", "").replace("or_", ""));
				    				csbf.append(key.replace("_hql", "").replace("and_", "").replace("or_", ""));
				    				if(key.indexOf("like ?") != -1){
				    					list.add("%"+val[0].trim()+"%");
				    				}else{
				    					list.add(val[0].trim());
				    				}
				    			}else{
				    				lsbf.append(key.replace("and_", "").replace("or_", ""));
				    				lsbf.append(" = ? ");
				    				csbf.append(key.replace("and_", "").replace("or_", ""));
				    				csbf.append(" = ? ");
				    				list.add(val[0]);
				    			}
				    		}
				    	}else{
				    		//多个
				    	}
				    }
			    }else if("page".equals(key)){
			    	sqlBean.setCurPage(Integer.parseInt(val[0]));
			    }else if("rows".equals(key)){
			    	sqlBean.setRows(Integer.parseInt(val[0]));
			    }
			}
		}
		if(orderby!=null&&!"".equals(orderby)){
			lsbf.append(orderby);
		}
		sqlBean.setListsql(lsbf.toString());
		sqlBean.setCountsql(csbf.toString());
		Object[]  objs = this.listToObjArray(list);
		sqlBean.setParameVAL(objs);
		
		return sqlBean;
	}
	
	private Object[]  listToObjArray(List<Object> list){
		Object[]  res = null;
		if(list!=null&&list.size()>0){
			int size = list.size();
		    res = new Object[size];
			for(int i=0;i<size;i++){
				Object obj = list.get(i);
				res[i] = obj;
			}
		}
		return res;
	}
	
	private List<Object>  ArrayToObjList(Object[] parame){
		List<Object>  list = null;
		if(parame!=null&&parame.length>0){
			int size = parame.length;
//			list = new Object[size];
			list=new ArrayList<Object>();
			for(int i=0;i<size;i++){
				Object obj = parame[i];
				list.add(obj);
//				res[i] = obj;
			}
		}
		return list;
	}
	
	/**
	 * 创建
	 * @param sql
	 * @param parame
	 * @return
	 */
	public String  createCountSql(String sql,Map<String,Object> parame){
		return "";
	}
	
	public  T findObjectById(Class c,Serializable id){
		return this.getH3DbManager().getEntityById(c, id);
	}
	
	
	/**
	 * 取得要查询的SQL
	 * @return
	 */
	public  String  getSql(BaseVo  vo ){
		String sql = " From "+vo.getClass().getName()+   " Where 1=1 ";
		return sql;
	}
	
	/**
	 * 取得查找总记录数数的SQL
	 * @return
	 */
	public  String  getCountSql(BaseVo  vo ){
		String sql = " Select count(*)   From "+vo.getClass().getName()+"  Where 1=1";
		return  sql;
	}

}

package com.go.admin.dao;

import org.springframework.stereotype.Repository;

import com.go.core.dao.SP3BaseDao;
import com.go.po.Thmenu;

@Repository
public class ThmenuDao extends SP3BaseDao<Thmenu, String> {

	@Override
	public Thmenu save(Thmenu vo) {
		try {
			String mcode = this.getMaxCode(vo);
			Integer seq = this.getMaxSeq();
			int series = this.getSeries(mcode);
			vo.setMcode(mcode);
			vo.setSeq(seq);
			vo.setSeries(series);
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return this.getH3DbManager().saveEntity(vo);
	}
	
	
	/**
	 * 获取最大的菜单编码
	 * @param vo
	 * @return
	 */
	public String getMaxCode(Thmenu vo){
		String sql = " Select max(mcode) From Thmenu" +
				     " Where pmcode=?";
		Object[]  parame = {vo.getPmcode()};
		Object   mcode = this.getH3DbManager().geOneObject1(sql, parame);
		String res = "";
		if(mcode==null||mcode.equals("")){
			if(vo.getPmcode()==null||vo.getPmcode().equals("0")){
			  res = "100";
			}else{
			  res = vo.getPmcode()+"100";
			}
		}else{
			Long t_code = Long.parseLong(mcode.toString())+1;
			res = String.valueOf(t_code);
		}
		return res;
	}
	
	/**
	 * 获取最大的排序
	 * @return
	 */
	public Integer getMaxSeq(){
		String sql = "Select max(seq) From Thmenu ";
		Integer seq = (Integer)this.getH3DbManager().geOneObject1(sql, null);
		if(seq==null||seq==0){
			seq = 1;
		}else{
			sql +=1;
		}
		return seq;
	}
	
	private Integer getSeries(String mcode){
		int len = mcode.length();
		int mod_len = len/3;
		return mod_len;
	}

}

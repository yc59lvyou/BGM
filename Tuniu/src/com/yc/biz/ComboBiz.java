package com.yc.biz;

import java.util.ArrayList;

import com.yc.bean.Combo;
import com.yc.bean.ScenePhoto;
import com.yc.dao.DBHelper;

public class ComboBiz {

	public Object findRecommend(Combo combo) {
		String sql = "select * from combo";
		ArrayList<Object> params = new ArrayList<Object>();
		return DBHelper.select(sql, params);
	}
	public Object findOnetour(Combo combo) {
		String sql = "select * from combo where type = '一日游' ";
		ArrayList<Object> params = new ArrayList<Object>();
		return DBHelper.select(sql, params);
	}
	public Object add(Combo combo) {
		String sql = "select * from combo where type = '自助游'";
		ArrayList<Object> params = new ArrayList<Object>();
		return DBHelper.select(sql, params);
	}
	public Object scadd(ScenePhoto sp, java.lang.String a) {
		String sql = "select * from scenephoto where cid =?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(a);
		return DBHelper.select(sql, params);
	}
	public Object coadd(Combo combo, java.lang.String a) {
		String sql = "select * from combo where id =?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(a);
		return DBHelper.select(sql, params);
	}
	
}

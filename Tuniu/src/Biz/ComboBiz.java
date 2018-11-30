package Biz;

import java.util.ArrayList;

import com.yc.bean.Combo;
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
	
}

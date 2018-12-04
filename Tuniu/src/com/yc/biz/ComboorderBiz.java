package com.yc.biz;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.yc.bean.ComboOrder;
import com.yc.dao.DBHelper;

public class ComboorderBiz {

	public void coadd(ComboOrder comborder) {
		String sql="insert into comboorder (cid,dtel,address,dshow,stattime,systime,number,truename,mailbox,dprice) values(?,?,?,?,?,?,?,?,?,?)";
		ArrayList<Object> params = new ArrayList<Object>();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String date=df.format(new Date());// new Date()为获取当前系统时间
		String date1=df.format(new Date());// new Date()为获取当前系统时间
		params.add(comborder.getCid());
		params.add(comborder.getDtel());
		params.add(comborder.getAddress());
		params.add(comborder.getDshow());
		params.add(date1);
		params.add(date);
		params.add(comborder.getNumber());
		params.add(comborder.getTruename());
		params.add("123@qq.com");
		params.add(comborder.getDprice());
		DBHelper.insert(sql, params);
	}

}

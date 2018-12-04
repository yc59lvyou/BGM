package com.yc.biz;

import java.util.List;
import java.util.Map;

import com.yc.bean.User;
import com.yc.dao.DBHelper;

import com.yc.biz.BizException;

public class UserBiz {
	public User login(User user) throws BizException{
		if(user.getAccount() == null || user.getAccount().trim().isEmpty()){
			throw new BizException("请填写用户名");
		}
		if(user.getPwd() == null || user.getPwd().trim().isEmpty()){
			throw new BizException("请填写密码");
		}
		String sql = "select * from user where account = ? and pwd = ?";
		return DBHelper.unique(sql, User.class, user.getAccount(),user.getPwd());
	}
	
	public void add(User user) throws BizException {
		if ( user.getName() == null || user.getName().trim().isEmpty()) {
			throw new BizException("请填写用户名!!");
		}else if( user.getAccount() == null || user.getAccount().trim().isEmpty()) {
			throw new BizException("请填写账户名!!");
		}	
		String sql="insert into user (name,account,pwd,tel,email) values(?,?,?,?,?)";
		DBHelper.insert(sql, user.getName(),user.getAccount(),user.getPwd(),user.getTel(),user.getEmail());
	}

	public User fail(User user) {
		//失败次数�?1
		//先查是哪个用�?
		String sql = "select * from user where account = ?";
		///System.out.println("账号�?"+user.getAccount()+"---"+"密码�?"+user.getPwd());
		user = DBHelper.unique(sql, User.class, user.getAccount());
		//System.out.println("id:"+user.getId());
		//System.out.println("失败次数"+user.getFailNumber());
		String sql2 = "update user set failNumber =? where id =?";
		DBHelper.update(sql2, user.getFailNumber()+1,user.getId());
		user = DBHelper.unique(sql, User.class, user.getAccount());
		//System.out.println("失败次数"+user.getFailNumber());
		return user;
	}

	public void clearFailNumber(User user) {
		String sql = "select * from user where account = ?";
		user = DBHelper.unique(sql, User.class, user.getAccount());
		String sql2 = "update user set failNumber =0 where id =?";
		DBHelper.update(sql2, user.getId());
	}
	
	public List<Map<String,Object>> pwd1(User user) throws BizException {
		if(user.getAccount()==null||user.getAccount().trim().isEmpty()){
			throw new BizException("请填写用户名!");
		}
		System.out.println(user.getAccount());
		return DBHelper.select("select * from user where account=?", user.getAccount());
	}
	
	public List<Map<String,Object>> pwd2(User user) throws BizException {

		if(user.getMailbox()==null||user.getMailbox().trim().isEmpty()){
			throw new BizException("请填写邮�?!");
		}
		System.out.println(user.getMailbox());
		return DBHelper.select("select * from user where mailbox=?", user.getMailbox());
	}
	
	public int pwd3(User user, String uppwd) throws BizException {
		System.out.println(user.getPwd()+"123");
		System.out.println(uppwd+"456");
		System.out.println(user.getMailbox()+"789");
		if(uppwd.equals(user.getPwd())){
			return DBHelper.update("update user set pwd=? where mailbox=?", user.getPwd(),user.getMailbox());
		}else{
			return 0;
		}
	}
}

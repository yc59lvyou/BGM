package Biz;

import com.yc.bean.User;
import com.yc.dao.DBHelper;



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

	public User fail(User user) {
		//失败次数加1
		//先查是哪个用户
		String sql = "select * from user where account = ?";
		///System.out.println("账号："+user.getAccount()+"---"+"密码："+user.getPwd());
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
		//System.out.println("测试");
		String sql = "select * from user where account = ?";
		user = DBHelper.unique(sql, User.class, user.getAccount());
		String sql2 = "update user set failNumber =0 where id =?";
		DBHelper.update(sql2, user.getId());
	}

}

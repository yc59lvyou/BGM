package Biz;

import com.yc.bean.User;
import com.yc.dao.DBHelper;



public class UserBiz {

	public User login(String username, String userpwd) throws BizException{
		if(username == null || username.trim().isEmpty()){
			throw new BizException("请填写用户名");
		}
		if(userpwd == null || userpwd.trim().isEmpty()){
			throw new BizException("请填写密码");
		}
		
		String sql = "select * from user where account = ? and pwd = ?";
		return DBHelper.unique(sql, User.class, username,userpwd);
		
		
		
	}

}

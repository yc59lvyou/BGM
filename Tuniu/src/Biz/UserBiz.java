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

	public void add(User user) throws BizException {
		if ( user.getName() == null || user.getName().trim().isEmpty()) {
			throw new BizException("请填写用户名!!");
		}else if( user.getAccount() == null || user.getAccount().trim().isEmpty()) {
			throw new BizException("请填写账号!!");
		}	
		
		String sql="insert into user (name,account,pwd,tel,email) values(?,?,?,?,?)";
		DBHelper.insert(sql, user.getName(),user.getAccount(),user.getPwd(),user.getTel(),user.getEmail());

		
	}



}

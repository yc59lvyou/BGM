package com.yc.ctroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.bean.User;
import com.yc.dao.BeanUtils;

import Biz.BizException;
import Biz.UserBiz;


/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/user.s")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserBiz ubiz = new UserBiz();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		if("login".equals(op)){
			login(request,response);
		}
	}

	
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//接收页面传回的参数
		//将参数加载到 user对象中
		User user = BeanUtils.asBean(request, User.class);
		
		//图片上的验证码
		String piccode = (String)request.getSession().getAttribute("piccode");
		//用户输入的验证码
		String code = request.getParameter("code");
		System.out.println(piccode);
		System.out.println(code);
		
		
		User user2 = null;
		try {
			user2 = ubiz.login(user);
		} catch (BizException e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
			//失败  
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		
		if(user2 == null){
			request.setAttribute("msg", "用户名或密码错误");
			//失败   跳到注册界面
			// 失败 -数据库失败次数+1
			//ubiz.fail(user);
			request.setAttribute("failNumber", ubiz.fail(user).getFailNumber());
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}else{
			if(code!=null){
				if(code.equals(piccode)){
					ubiz.clearFailNumber(user);
					request.getSession().setAttribute("loginedUser",user2);
					response.sendRedirect("index.jsp");
					return;
				}
			}
			
			if(code==null){
				//成功
				//将用户信息保存到会话中
				ubiz.clearFailNumber(user);
				request.getSession().setAttribute("loginedUser",user2);
				//重定向防止页面刷新的时候，表单数据重复提交
				response.sendRedirect("index.jsp");
				//request.getRequestDispatcher("index.jsp").forward(request, response);
				//System.out.println("成功");
				return;
			}
		}
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}

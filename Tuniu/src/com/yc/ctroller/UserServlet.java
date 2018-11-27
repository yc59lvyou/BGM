package com.yc.ctroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.bean.User;

import Biz.BizException;
import Biz.UserBiz;


/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/user.s")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		if("login".equals(op)){
			login(request,response);
		}
	}

	
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String username = request.getParameter("username");
		String userpwd = request.getParameter("userpwd");
		
		UserBiz ubiz = new UserBiz();
		User user = null;
		
		try {
			user = ubiz.login(username, userpwd);
		} catch (BizException e) {
			e.printStackTrace();
			//失败  
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		
		if(user == null){
			request.setAttribute("msg", "用户名或密码错误");
			//失败
			//request.setAttribute("error", "yes");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}else{
			//成功
			//将用户信息保存到会话中
			request.getSession().setAttribute("loginedUser",user);
			//重定向      防止页面刷新的时候，表单数据重复提交
			response.sendRedirect("index.jsp");
			//request.getRequestDispatcher("index.jsp").forward(request, response);
			//System.out.println("成功");
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}

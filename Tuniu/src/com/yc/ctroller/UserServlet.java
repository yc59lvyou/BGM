package com.yc.ctroller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.bean.User;
import com.yc.biz.BizException;
import com.yc.biz.UserBiz;
import com.yc.dao.BeanUtils;

@WebServlet("/user.s")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    private UserBiz ubiz = new UserBiz();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		if("login".equals(op)){
			login(request,response);
		}else if("registers".equals(op)){
			registers(request,response);
		}else if("Pwd1".equals(op)){
			Pwd1(request,response);
		}else if("Pwd2".equals(op)){
			Pwd2(request,response);
		}else if("Pwd3".equals(op)){
			Pwd3(request,response);
		}
	}
	private void Pwd3(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException{
		User user=BeanUtils.asBean(request, User.class);
		String uppwd=request.getParameter("uppwd");
		String msg="";
		try {
			int a=ubiz.pwd3(user, uppwd);
			if(a==1){
				msg="yes";
			}else{
				msg="no";
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		response.getWriter().append(msg);
	}

	private void Pwd2(HttpServletRequest request, HttpServletResponse response)
			throws ServletException,IOException{
		User user=BeanUtils.asBean(request, User.class);
		String msg="";
		try {
			List<Map<String,Object>> a=ubiz.pwd2(user);
			if(a.size()==1){
				msg="yes";
			}else{
				msg="no";
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		response.getWriter().append(msg);
	}

	private void Pwd1(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException{
		User user=BeanUtils.asBean(request, User.class);
		String msg="";
		try {
			List<Map<String,Object>> a=ubiz.pwd1(user);
			if(a.size()==1){
				msg="yes";
			}else{
				msg="no";
			}
		} catch (BizException e) {
			e.printStackTrace();
		}
		response.getWriter().append(msg);
	}

	//注册界面
	private void registers(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,IOException{
		User user=BeanUtils.asBean(request, User.class);
		try {
			ubiz.add(user);
		} catch (BizException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			response.sendRedirect("login.jsp");
		}
		
				
	}


	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//接收页面传回的参�?
		//将参数加载到 user对象�?
		User user = BeanUtils.asBean(request, User.class);
		
		//图片上的验证�?
		String piccode = (String)request.getSession().getAttribute("piccode");
		//用户输入的验证码
		String code = request.getParameter("code");
		//System.out.println(piccode);
		//System.out.println(code);
		
		
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
			// 失败 -数据库失败次�?+1
			//ubiz.fail(user);
			request.setAttribute("failNumber", ubiz.fail(user).getFailNumber());
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}else{
			//跳出验证�?
			if(code!=null){
				//输入正确的验证码    即登录成�?
				if(code.equals(piccode)){
					ubiz.clearFailNumber(user);
					request.getSession().setAttribute("loginedUser",user2);
					response.sendRedirect("index.jsp");
					return;
				}else{
					request.setAttribute("msg", "您输入的验证码有�?");
					request.setAttribute("failNumber", ubiz.fail(user).getFailNumber());
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			}
			
			//未跳出验证码  
			if(code==null){
				//成功
				//将用户信息保存到会话�?
				ubiz.clearFailNumber(user);
				request.getSession().setAttribute("loginedUser",user2);
				//重定向防止页面刷新的时�?�，表单数据重复提交
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

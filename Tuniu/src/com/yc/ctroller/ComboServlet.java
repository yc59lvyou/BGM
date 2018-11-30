package com.yc.ctroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.bean.Combo;
import com.yc.dao.BeanUtils;
import Biz.ComboBiz;

/**
 * Servlet implementation class ComboServlet
 */
@WebServlet("/combo.s")
public class ComboServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ComboBiz cbiz = new ComboBiz();
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		
		if("queryRecommend".equals(op)){
			//查找热门推荐的套餐
			queryRecommend(request,response);
		}else if("queryOnetour".equals(op)){
			//查找类型为一日游套餐
			queryOnetour(request,response);
		}
	}

	
	private void queryOnetour(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Combo combo = BeanUtils.asBean(request, Combo.class);
		request.setAttribute("comboList2", cbiz.findOnetour(combo));
		request.getRequestDispatcher("yiriyou.jsp").forward(request, response);
	}


	private void queryRecommend(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Combo combo = BeanUtils.asBean(request, Combo.class);
		request.setAttribute("comboList", cbiz.findRecommend(combo));
		request.getRequestDispatcher("gentuanyou.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}

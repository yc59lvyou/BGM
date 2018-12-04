package com.yc.ctroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yc.bean.Combo;
import com.yc.bean.ScenePhoto;
import com.yc.biz.ComboBiz;
import com.yc.dao.BeanUtils;

@WebServlet("/combo.s")
public class ComboServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ComboBiz cbiz = new ComboBiz();
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		if("queryRecommend".equals(op)){
			//查找热门推荐的套�?
			queryRecommend(request,response);
		}else if("queryOnetour".equals(op)){
			//查找类型为一日游套餐
			queryOnetour(request,response);
		}else if("add".equals(op)){
			Add(request,response);
		}else if("scadd".equals(op)){
			//查找图片�?
			Scadd(request,response);
		}else if("coadd".equals(op)){
			//查找套餐�?
			Coadd(request,response);
		}
	}

	private void Coadd(HttpServletRequest request, HttpServletResponse response) {
		Combo combo = BeanUtils.asBean(request, Combo.class);
		String a = request.getParameter("id");
		String pan = request.getParameter("pan");
		request.setAttribute("comboList", cbiz.coadd(combo, a));
		try {
			if(pan==null){
				request.getRequestDispatcher("order.jsp").forward(request, response);
			}else{
				request.getRequestDispatcher("tj-dingdang.jsp").forward(request, response);
			}
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void Scadd(HttpServletRequest request, HttpServletResponse response) {
		ScenePhoto sp = BeanUtils.asBean(request, ScenePhoto.class);
		String a = request.getParameter("id");
		request.setAttribute("scList", cbiz.scadd(sp, a));
		try {
			request.getRequestDispatcher("order.jsp").forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}


	private void Add(HttpServletRequest request, HttpServletResponse response) {
		Combo combo = BeanUtils.asBean(request, Combo.class);
		request.setAttribute("comboList2", cbiz.add(combo));
		try {
			request.getRequestDispatcher("zizhuyou.jsp").forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
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

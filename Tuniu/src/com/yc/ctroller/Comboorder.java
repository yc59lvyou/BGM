package com.yc.ctroller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.jmx.snmp.Timestamp;
import com.yc.bean.ComboOrder;
import com.yc.biz.ComboBiz;
import com.yc.biz.ComboorderBiz;
import com.yc.dao.BeanUtils;

@WebServlet("/comboorder.s")
public class Comboorder extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private ComboorderBiz cbiz = new ComboorderBiz();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = request.getParameter("op");
		if("add".equals(op)){
			//添加订单
			Add(request,response);
		}
	}

	private void Add(HttpServletRequest request, HttpServletResponse response) {
		ComboOrder comborder = BeanUtils.asBean(request, ComboOrder.class);
		System.out.println(comborder.getStattime()+"123456");
		System.out.println(comborder.getCid()+"654321");
		cbiz.coadd(comborder);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}

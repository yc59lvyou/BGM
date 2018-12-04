package com.yc.ctroller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONArray;
import com.yc.biz.BizException;
import com.yc.dao.DBHelper;

@WebServlet("/CodeServlet")
public class CodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public CodeServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html; charset=UTF-8");
			String account=(String) request.getParameter("account");
			String 	ms="";
			if(!"".equals(account)){
				List<Map<String,Object>> a=DBHelper.select("select * from user where account=?", account);
				if(a.size()==1){
					String codename=(String)request.getSession().getAttribute("piccode");
					String codepwd=request.getParameter("code");
					if(codename.equalsIgnoreCase(codepwd)){
						ms="yes";
					}else{
						ms="no";
					}
				}else{
					ms="yb";
				}
			}else{
				ms="yk";
			}
			response.getWriter().append(ms);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

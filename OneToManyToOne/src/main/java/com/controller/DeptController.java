package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Dept;
import com.bean.Emp;
import com.dao.DeptDao;

@WebServlet("/DeptController")
public class DeptController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		
		if(action.equalsIgnoreCase("insert dept"))
		{
			Dept d=new Dept();
			d.setDname(request.getParameter("dname"));
			d.setLoc(request.getParameter("loc"));
			DeptDao.insertDept(d);
			response.sendRedirect("dept.jsp");
		}
		else if(action.equalsIgnoreCase("insert emp"))
		{
			Emp e=new Emp();
			e.setFname(request.getParameter("fname"));
			e.setLname(request.getParameter("lname"));
			int did=Integer.parseInt(request.getParameter("dept"));
			Dept d=DeptDao.getDept(did);
			e.setDept(d);
			DeptDao.insertEmp(e);
			response.sendRedirect("emp.jsp");
		}
	}

}

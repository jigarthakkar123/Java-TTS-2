package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Employee;
import com.bean.EmployeePersonalInfo;
import com.dao.EmpDao;

@WebServlet("/EmpController")
public class EmpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("insert emp"))
		{
			EmployeePersonalInfo epinfo=new EmployeePersonalInfo();
			epinfo.setFname(request.getParameter("fname"));
			epinfo.setLname(request.getParameter("lname"));
			epinfo.setEmail(request.getParameter("email"));
			
			EmpDao.insertEmployeePersonalInfo(epinfo);
			
			Employee e=new Employee();
			e.setJob(request.getParameter("job"));
			e.setDept(request.getParameter("dept"));
			e.setSalary(Double.parseDouble(request.getParameter("salary")));
			e.setEpinfo(epinfo);
			
			EmpDao.insertEmployee(e);
			
			response.sendRedirect("show.jsp");
		}
		else if(action.equalsIgnoreCase("edit"))
		{
			int eid=Integer.parseInt(request.getParameter("eid"));
			Employee e=EmpDao.getEmployee(eid);
			request.setAttribute("e", e);
			request.getRequestDispatcher("update.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("updtae emp"))
		{
			EmployeePersonalInfo epinfo=new EmployeePersonalInfo();
			epinfo.setFname(request.getParameter("fname"));
			epinfo.setLname(request.getParameter("lname"));
			epinfo.setEmail(request.getParameter("email"));
			Employee e=new Employee();
			e.setJob(request.getParameter("job"));
			e.setDept(request.getParameter("dept"));
			e.setSalary(Double.parseDouble(request.getParameter("salary")));
			e.setEpinfo(epinfo);
			
			EmpDao.insertEmployee(e);
			
			response.sendRedirect("show.jsp");
		}
		else if(action.equalsIgnoreCase("delete emp"))
		{
			int eid=Integer.parseInt(request.getParameter("eid"));
			EmpDao.deleteEmployee(eid);
			response.sendRedirect("show.jsp");
		}
	}

}

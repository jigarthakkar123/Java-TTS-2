package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Employee;
import com.bean.EmployeePersonalInfo;
import com.util.EmpUtil;

public class EmpDao {

	public static void insertEmployeePersonalInfo(EmployeePersonalInfo e)
	{
		Session session=EmpUtil.createSession();
		Transaction tr=session.beginTransaction();
		session.saveOrUpdate(e);
		tr.commit();
		session.close();
	}
	public static void insertEmployee(Employee e)
	{
		Session session=EmpUtil.createSession();
		Transaction tr=session.beginTransaction();
		session.saveOrUpdate(e);
		tr.commit();
		session.close();
	}
	public static List<Employee> getAllEmployee()
	{
		Session session=EmpUtil.createSession();
		List<Employee> list=session.createQuery("from Employee").list();
		session.close();
		return list;
	}
	public static Employee getEmployee(int eid)
	{
		Session session=EmpUtil.createSession();
		Employee e=session.get(Employee.class,eid);
		session.close();
		return e;
	}
	public static void deleteEmployee(int eid)
	{
		Session session=EmpUtil.createSession();
		Transaction tr=session.beginTransaction();
		Employee e=session.get(Employee.class,eid);
		session.delete(e);
		tr.commit();
		session.close();
	}
}

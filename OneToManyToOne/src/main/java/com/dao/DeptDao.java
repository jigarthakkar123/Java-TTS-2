package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Dept;
import com.bean.Emp;
import com.util.DeptUtil;

public class DeptDao {

	public static void insertDept(Dept d)
	{
		Session session=DeptUtil.createSession();
		Transaction tr=session.beginTransaction();
		session.save(d);
		tr.commit();
		session.close();
	}
	public static void insertEmp(Emp e)
	{
		Session session=DeptUtil.createSession();
		Transaction tr=session.beginTransaction();
		session.save(e);
		tr.commit();
		session.close();
	}
	public static Dept getDept(int did)
	{
		Session session=DeptUtil.createSession();
		Dept d=session.get(Dept.class, did);
		session.close();
		return d;
	}
	public static List<Dept> getAllDept()
	{
		Session session=DeptUtil.createSession();
		List<Dept> list=session.createQuery("from Dept").list();
		session.close();
		return list;
	}
}

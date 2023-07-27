package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.Student;
import com.util.StudentUtil;

public class StudentDao {

	public static int insertStudent(Student s)
	{
		int result=0;
		try {
			Connection conn=StudentUtil.createConnection();
			String sql="insert into student(fname,lname,email,mobile) values(?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, s.getFname());
			pst.setString(2, s.getLname());
			pst.setString(3, s.getEmail());
			pst.setString(4, s.getMobile());
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}

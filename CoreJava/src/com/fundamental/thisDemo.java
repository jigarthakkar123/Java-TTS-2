package com.fundamental;

class Student
{
	int rno;
	String sname;
	public Student() {
		System.out.println("Default Constructor Called");
	}
	public Student(int rno,String sname) {
		this();
		this.rno=rno;
		this.sname=sname;
	}
	void show()
	{
		System.out.println("Roll No : "+this.rno);
		System.out.println("Student Name : "+this.sname);
	}
}

public class thisDemo {

	public static void main(String[] args) {
		Student s=new Student(1, "Jigar");
		s.show();
	}
}

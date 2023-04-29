package com.fundamental;

import java.util.Scanner;

public class StaticVariable {

	static int a;
	void setValue()
	{
		Scanner sc=new Scanner(System.in);
		System.out.print("Enter A:");
		a=sc.nextInt();
	}
	void putValue()
	{
		System.out.println("A  : "+a);
	}
	
	public static void main(String[] args) {
		StaticVariable s1=new StaticVariable();
		StaticVariable s2=new StaticVariable();
		StaticVariable s3=new StaticVariable();
		
		s1.setValue();
		s2.setValue();
		s3.setValue();
		
		s1.putValue();
		s2.putValue();
		s3.putValue();
	}
}

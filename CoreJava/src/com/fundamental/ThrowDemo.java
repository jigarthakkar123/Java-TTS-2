package com.fundamental;

import java.util.InputMismatchException;
import java.util.Scanner;

public class ThrowDemo {

	public static void demo() throws ArithmeticException,NullPointerException,InputMismatchException
	{
		int x;
		Scanner sc=new Scanner(System.in);
		
		System.out.print("Enter X : ");
		x=sc.nextInt();
		if(x>0)
		{
			System.out.println("Square Of "+x+" Is "+(x*x));
		}
		else
		{
			throw new ArithmeticException("Please Enter Positive Values Only");
		}
		
	}
	public static void main(String[] args) {
		try{
			demo();
		}catch (Exception e) {
			System.out.println(e);
		}finally {
			System.out.println("Finally Called");
		}
	}
}

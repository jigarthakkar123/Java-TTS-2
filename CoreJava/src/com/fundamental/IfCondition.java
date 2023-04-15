/*
 * If Condition
 * 1. Simple if
 * 2. if/else
 * 3. Nested if
 * 4. Ladder if/else
 * 
 * */

package com.fundamental;

import java.util.Scanner;

public class IfCondition {

	public static void main(String[] args) {
		int a,b,c;
		Scanner sc=new Scanner(System.in);
		System.out.print("Enter A :");
		a=sc.nextInt();
		System.out.print("Enter B :");
		b=sc.nextInt();
		System.out.print("Enter C :");
		c=sc.nextInt();
		if(a>b)
		{
			if(a>c)
			{
				System.out.println("A Is Greater Number");
			}
			else
			{
				System.out.println("C Is Greater Number");
			}
		}
		else if(b>c)
		{
			System.out.println("B Is Greater Number");
		}
		else
		{
			System.out.println("C Is Greater Number");
		}
	}
}

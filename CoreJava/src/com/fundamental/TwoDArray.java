package com.fundamental;

import java.util.Scanner;

public class TwoDArray {

	public static void main(String[] args) {
		int a[][]=new int[3][3];
		int i,j;
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter 2 D Array");
		for(i=0;i<a.length;i++)
		{
			for(j=0;j<a.length;j++)
			{
				System.out.print("Enter "+i+" Row & "+j+" Column : ");
				a[i][j]=sc.nextInt();
			}
		}
		System.out.println("2 D Array Is");
		for(i=0;i<a.length;i++)
		{
			for(j=0;j<a.length;j++)
			{
				//System.out.println("A["+i+"]["+j+"] = "+a[i][j]);
				System.out.print(" "+a[i][j]);
			}
			System.out.println();
		}
	}
}

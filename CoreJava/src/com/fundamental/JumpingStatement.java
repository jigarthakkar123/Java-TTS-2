package com.fundamental;

public class JumpingStatement {

	public static void main(String[] args) {
		int i;
		for(i=0;i<10;i++)
		{
			if(i==5)
			{
				continue;
			}
			else
			{
				System.out.println("I : "+i);
			}
		}
	}
}

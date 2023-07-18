package com.bean;

public class Phone {

	private String pno;

	
	
	public Phone(String pno) {
		this.pno = pno;
	}



	public void call() {
		System.out.println("Calling A Number...."+pno);
	}
}

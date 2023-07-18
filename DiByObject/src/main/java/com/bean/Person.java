package com.bean;

public class Person {

	private String pname;
	private Phone phone;
	
	public Person(String pname, Phone phone) {
		this.pname = pname;
		this.phone = phone;
	}

	public void callPhone() {
		System.out.println("Calling................ By "+pname);
		phone.call();
	}
}

package com.exception;

public class CheckingAccount {

	int acno;
	double balance;
	String cname;
	public CheckingAccount(int acno, double balance, String cname) {
		this.acno = acno;
		this.balance = balance;
		this.cname = cname;
		System.out.println("Hello "+this.cname+", Your Account Number "+this.acno+" Is Opened With "+this.balance);
	}
	public void despoit(double amount) {
		this.balance=this.balance+amount;
	}
	public void withdraw(double amount) throws InSufficientFund{
		if(amount<=this.balance) {
			this.balance=this.balance-amount;
		}else {
			double needs=amount-this.balance;
			throw new InSufficientFund(needs);
		}
	}
	public void checkBalance() {
		System.out.println("Current Balance : "+this.balance);
	}
	
	
	
}

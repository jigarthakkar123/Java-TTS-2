package com.thread;

class Callback
{
	public void call(String msg)
	{
		System.out.print("["+msg);
		try {
			Thread.sleep(3000);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("]");
	}
}
class Caller implements Runnable
{
	Thread t;
	Callback c;
	String msg;
	public Caller(Callback c,String msg) {
		this.c=c;
		this.msg=msg;
		t=new Thread(this);
		t.start();
	}
	public void run() {
		synchronized (c) {
			c.call(msg);
		}
		System.out.println("Tops");
	}
	
}
public class ThreadSynchronization {

	public static void main(String[] args) {
		Callback c=new Callback();
		Caller c1=new Caller(c, "Hello");
		Caller c2=new Caller(c, "World");
		Caller c3=new Caller(c, "Synchronization");
	}
}

package com.fundamental;

class Box
{
	double width,height,depth;
	Box()
	{
		System.out.println("Default Constructor Called");
		width=3;
		height=4;
		depth=5;
	}
	Box(double w,double d,double h)
	{
		System.out.println("Parameterized Constructor");
		width=w;
		height=h;
		depth=d;
	}
	Box(Box b)
	{
		System.out.println("Copy Constructor Called");
		width=b.width;
		height=b.height;
		depth=b.depth;
	}
	void volume()
	{
		System.out.println("Volume : "+(width*height*depth));
	}
}

public class ConstructorDemo {

	public static void main(String[] args) {
		Box b1=new Box();
		b1.volume();
		Box b2=new Box(4,5,6);
		b2.volume();
		Box b3=new Box(b2);
		b3.volume();
	}
}

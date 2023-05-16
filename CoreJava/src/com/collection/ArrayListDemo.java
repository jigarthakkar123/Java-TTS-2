package com.collection;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.ListIterator;

public class ArrayListDemo {

	public static void main(String[] args) {
		ArrayList al=new ArrayList();
		al.add(10);
		al.add(10.10);
		al.add("tops");
		al.add('t');
		al.add(true);
		//al.add(null);
		al.add(10);
		
		System.out.println(al);
		System.out.println(al.size());
		System.out.println(al.isEmpty());
		System.out.println(al.get(3));
		
		Iterator itr=al.iterator();
		while(itr.hasNext())
		{
			System.out.println(itr.next());
		}
		
		ListIterator litr=al.listIterator();
		while(litr.hasNext())
		{
			Object obj=litr.next();
			if(obj.equals("tops"))
			{
				litr.set(obj+" tops");
			}

		}
		System.out.println("From First To Last");
		litr=al.listIterator();
		while(litr.hasNext())
		{
			System.out.println(litr.next());
		}
		
		
		 System.out.println("From Last To First"); 
		 while(litr.hasPrevious()) 
		 {
			 System.out.println(litr.previous()); 
		 }
		
		
	}
}

package com.collection;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class HashMapDemo {

	public static void main(String[] args) {
		HashMap hm=new HashMap();
		hm.put(101,"Vishrut");
		hm.put(908,"Shreena");
		hm.put(675,"Neha");
		hm.put(345,"Charu");
		hm.put(565,"Shyam");
		hm.put(101, "Jigar");
		
		System.out.println(hm);
		System.out.println(hm.get(908));
		Set set=hm.entrySet();
		Iterator itr=set.iterator();
		while(itr.hasNext())
		{
			System.out.println(itr.next());
		}
	}
}

package com.controller;

import java.util.Scanner;

import com.dao.MyDao;
import com.model.person_info;

public class Insert 
{
	public static void main(String[] args)
	{
	
		Scanner sc =new Scanner(System.in);
		
		System.out.println("Enter Name");
		String name=sc.next();
		
		System.out.println("Enter Mobile Number");
		String mobile=sc.next();
		
		System.out.println("Enter Email");
		String email=sc.next();
		
		person_info p =new person_info();
		p.setPerson_name(name);
		p.setPerson_mobile(mobile);
		p.setPerson_email(email);
		
		new MyDao().Insert(p);
		
	}
}

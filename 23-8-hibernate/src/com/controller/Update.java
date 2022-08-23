package com.controller;

import java.util.Scanner;

import com.dao.MyDao;
import com.model.person_info;

public class Update 
{
	public static void main(String[] args) 
	{
		
		System.out.println("Enter your id");
		Scanner sc =new Scanner(System.in);
		int id=sc.nextInt();
		
		System.out.println("Enter your name");
		String name=sc.next();
		
		
		System.out.println("Enter your Mobile");
		String mobile=sc.next();
		
		System.out.println("Enter your email");
		String email=sc.next();
		
		person_info p =new person_info();
		p.setId(id);
		p.setPerson_name(name);
		p.setPerson_mobile(mobile);
		p.setPerson_email(email);
		
		new MyDao().Update(p);
	}
}

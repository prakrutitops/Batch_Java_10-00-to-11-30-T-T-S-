package com.controller;

import java.util.Scanner;

import com.dao.MyDao;
import com.model.person_info;

public class Delete 
{
	public static void main(String[] args) {
		
		System.out.println("Enter your id");
		
		Scanner sc =new Scanner(System.in);
		int id=sc.nextInt();
		
		person_info p =new person_info();
		p.setId(id);
		
		new MyDao().Delete(p);
		
	}
}

package com.controller;

import java.util.Iterator;
import java.util.List;

import com.dao.MyDao;
import com.model.person_info;

public class Select {
public static void main(String[] args) 
{

	List<person_info> list = new MyDao().viewRecords();
	
	System.out.println("ID\t|\tName\t|\tMobile|\tMobile");
	int i=0;
	for (person_info person : list) 
	{
		i++;
		System.out.println(person.getId()+"\t|\t"+person.getPerson_name()+"\t|\t"+person.getPerson_mobile()+"\t|\t"+person.getPerson_email());
	}
}
}

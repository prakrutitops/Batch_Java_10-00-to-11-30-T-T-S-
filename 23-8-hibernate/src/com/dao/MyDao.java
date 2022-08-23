package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.connect.Util;
import com.model.person_info;

public class MyDao 
{
	public void Insert(person_info p)
	{
		Session sess = new Util().getconnect();
		Transaction tr = sess.beginTransaction();
		sess.save(p);
		tr.commit();
		sess.close();
	}
	
	public void Delete(person_info p)
	{
		Session sess = new Util().getconnect();
		Transaction tr = sess.beginTransaction();
		sess.delete(p);
		tr.commit();
		sess.close();
	}
	
	public void Update(person_info p)
	{
		Session sess = new Util().getconnect();
		Transaction tr = sess.beginTransaction();
		sess.update(p);
		tr.commit();
		sess.close();
	}
	
	public List<person_info> viewRecords()
	{
		Session sess = new Util().getconnect();
		List<person_info> getall = sess.createQuery("from person_info").list();
		
		sess.close();
		return getall;
	}
}

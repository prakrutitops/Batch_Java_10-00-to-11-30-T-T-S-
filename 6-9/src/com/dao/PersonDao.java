package com.dao;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.Person;

public class PersonDao extends HibernateDaoSupport
{

	public void insert(Person p)
	{
		getHibernateTemplate().save(p);
	}
	
	public List<Person>getallperson()
	{
		List<Person> list=getHibernateTemplate().find("from Person");
		
		return list;
	}
	
	public void delete(int id)
	{
		HibernateTemplate template=getHibernateTemplate();
		Person p=template.get(Person.class,id);
		getHibernateTemplate().delete(p);
	}
	
	public void updatePerson(Person p)
	{
		getHibernateTemplate().update(p);
	}
	public Person getPersonById(int id)
	{
		HibernateTemplate template=getHibernateTemplate();
		Person p=template.get(Person.class,id);
		return p;
	}
	
}

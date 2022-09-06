package com.bo;

import java.util.List;

import com.dao.PersonDao;
import com.model.Person;

public class PersonBo 
{
	PersonDao persondao;

	public PersonDao getPersondao() {
		return persondao;
	}

	public void setPersondao(PersonDao persondao) {
		this.persondao = persondao;
	}
	

	public void insert(Person p)
	{
		persondao.insert(p);
	}
	public List<Person> getallperson()
	{
		return persondao.getallperson();
	}
	public void delete(int id)
	{
		persondao.delete(id);
	}
	public void updatePerson(Person p)
	{
		persondao.updatePerson(p);
	}
	public Person getPersonById(int id)
	{
		return persondao.getPersonById(id);
		
	}
	
}

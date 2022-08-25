package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="MyAddress")
public class Address 
{
			@OneToOne
		
		Person person;
		
		
	
	
		public Person getPerson() {
			return person;
		}

		public void setPerson(Person person) {
			this.person = person;
		}

		@Id
		@GeneratedValue(generator="increment")
		@GenericGenerator(name="increment",strategy="increment")
		@Column(name="aid")
		
	private int id;
		
	@Column(name="address")
	String p_address;

	public String getP_address() {
		return p_address;
	}

	public void setP_address(String p_address) {
		this.p_address = p_address;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
}

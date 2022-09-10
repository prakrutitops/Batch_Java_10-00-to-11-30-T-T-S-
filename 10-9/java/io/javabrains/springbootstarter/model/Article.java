package io.javabrains.springbootstarter.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Embeddable 
@Table(name="Article")

public class Article {
private int id;
private String name,des;

public int getId() {
	return id;
}
@Id
@GeneratedValue
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
@Column(name="name")
public void setName(String name) {
	this.name = name;
}
public String getDes() {
	return des;
}
@Column(name="des")
public void setDes(String des) {
	this.des = des;
}
}

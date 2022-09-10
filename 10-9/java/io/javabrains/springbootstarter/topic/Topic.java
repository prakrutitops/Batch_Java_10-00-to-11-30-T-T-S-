package io.javabrains.springbootstarter.topic;

public class Topic {
private String id;
private String name,description;
public Topic() {
	// TODO Auto-generated constructor stub
}
public Topic(String id,String name,String description)
{

	super();
	this.id=id;
	this.name=name;
	this.description=description;
	// TODO Auto-generated constructor stub
}

public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
}

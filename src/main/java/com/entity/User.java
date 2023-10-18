package com.entity;

public class User {

	private int id;
	private String name;
	private String qualification;

	private String email;
	private String password;
	private String role;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String name, String email, String password, String qualification, String role) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.qualification = qualification;
		this.role = role;
	}
	public User(int id, String name, String qualification, String email, String password) {
		super();
		this.id = id;
		this.name = name;
		this.qualification = qualification;
		this.email = email;
		this.password = password;
		this.role = role;
	}
	
	
	
	
}

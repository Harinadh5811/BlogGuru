package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;	
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="blogger_table")
public class Blogger 
{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name=" Blooger_id")
	private int id;
	@Column(name=" Blooger_name",nullable=false,length = 50)
	private String name;
	@Column(name=" Blooger_gender",nullable=false,length = 10)
	private String gender;
	@Column(name=" Blooger_dob",nullable=false,length = 20)
	private String dateofbirth;
	@Column(name=" Blooger_email",nullable=false,unique = true,length = 30)
	private String email;
	@Column(name=" Blooger_password",nullable=false,length = 30)
	private String password;
	@Column(name=" Blooger_location",nullable=false)
	private String location;
	@Column(name=" Blooger_contact",nullable=false,unique = true)
	private String contact;
	@Column(name=" Blooger_active",nullable=false)
	private boolean active; // true or false
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	@Override
	public String toString() {
		return "Blooger [id=" + id + ", name=" + name + ", gender=" + gender + ", dateofbirth=" + dateofbirth
				+ ", email=" + email + ", password=" + password + ", location=" + location + ", contact=" + contact
				+ ", active=" + active + "]";
	}
  
}
package com.wahkee.fruitStore.payload.response;

import java.util.Date;

public class UserProfileResponse {
	
	private String email;
	private String firstName;
	private String lastName;
	private String address;
	private String phone;
	private Date createdDate;
	private Date lastLoginDate;
	
	public UserProfileResponse() {
		super();
		// TODO Auto-generated constructor stub
	}



	public UserProfileResponse(String email, String firstName, String lastName, String address, String phone, Date createdDate) {
		super();
		this.email=email;
		this.firstName = firstName;
		this.lastName = lastName;
		this.address = address;
		this.phone = phone;
		this.createdDate = createdDate;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getFirstName() {
		return firstName;
	}



	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}



	public String getLastName() {
		return lastName;
	}



	public void setLastName(String lastName) {
		this.lastName = lastName;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public Date getCreatedDate() {
		return createdDate;
	}



	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}



	public Date getLastLoginDate() {
		return lastLoginDate;
	}



	public void setLastLoginDate(Date lastLoginDate) {
		this.lastLoginDate = lastLoginDate;
	}
	
	

}

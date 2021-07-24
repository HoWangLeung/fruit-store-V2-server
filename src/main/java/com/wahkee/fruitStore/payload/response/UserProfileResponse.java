package com.wahkee.fruitStore.payload.response;

public class UserProfileResponse {
	
	private String email;
	private String firstName;
	private String lastName;
	private String address;
	private String phone;
	
	
	
	public UserProfileResponse() {
		super();
		// TODO Auto-generated constructor stub
	}



	public UserProfileResponse(String email, String firstName, String lastName, String address, String phone) {
		super();
		this.email=email;
		this.firstName = firstName;
		this.lastName = lastName;
		this.address = address;
		this.phone = phone;
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
	
	

}

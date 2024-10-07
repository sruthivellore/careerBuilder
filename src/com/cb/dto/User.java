package com.cb.dto;

public class User {
	
	private int userId;
	private String fullName;
	private String userName;
	private String email;
	private String password;
	
	public User(){
		
	}
	
	public User(int userId, String fullName, String userName , String email, String password) {
		this.userId = userId;
		this.fullName = fullName;
		this.userName = userName;
		this.email = email;
		this.password = password;
	}

	@Override
	public String toString() {
		return "Customer [userId=" + userId + ", fullName=" + fullName + ", userName=" + userName + ", userName=" + email
		+ email + ", password=" + password + "]";
	}
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
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

}

package com.entity;

public class User {
	private String userid;
	private String username;
	private String email;
	private String password;
	private String role;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
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

	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username + ", email=" + email + ", password=" + password
				+ ", role="+role+"]";
	}

}
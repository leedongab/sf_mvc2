package com.exam.dto;

import java.util.Date;

public class UserDTO {
	private String id;
	private String name;
	private String password;
	private Date regdate;
	public UserDTO() {
		// TODO Auto-generated constructor stub
	}
	public UserDTO(String id, String name, String password, Date regdate) {

		this.id = id;
		this.name = name;
		this.password = password;
		this.regdate = regdate;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public boolean matchPassword(String password) {
		return this.password.equals(password);
	}


}

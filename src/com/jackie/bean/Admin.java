package com.jackie.bean;

public class Admin {
	private int id;// 管理员编号
	private String username;// 用户名
	private String pass;// 密码

	public Admin() {
	}

	public Admin(String username, String pass) {
		this.username = username;
		this.pass = pass;
	}
	
	public Admin(int id, String username, String pass) {
		this.id = id;
		this.username = username;
		this.pass = pass;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}

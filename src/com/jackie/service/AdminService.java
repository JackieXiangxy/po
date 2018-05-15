package com.jackie.service;

import java.util.List;

import com.jackie.bean.Admin;

public interface AdminService {
	public int addAdmin(Admin admin);
	public int delAdmin(int id);
	public int  updateAdmin(Admin admin);
	public List<Admin> findAdmins();
	public Admin findById(int id);
	public Admin login(Admin admin);

}

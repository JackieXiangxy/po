package com.jackie.service.impl;

import java.util.List;

import com.jackie.bean.Admin;
import com.jackie.dao.AdminDAO;
import com.jackie.dao.impl.AdminDAOImpl;
import com.jackie.service.AdminService;

public class AdminServiceImpl implements AdminService {
	private AdminDAO adminDao=new AdminDAOImpl();

	@Override
	public int addAdmin(Admin admin) {
		return 0;
	}

	@Override
	public int delAdmin(int id) {
		return 0;
	}

	@Override
	public int updateAdmin(Admin admin) {
		return 0;
	}

	@Override
	public List<Admin> findAdmins() {
		
		return adminDao.findAdmins();
	}

	@Override
	public Admin findById(int id) {
		return adminDao.findById(id);
	}

	/**
	 * 管理员登录
	 * @param admin Admin对象
	 */
	@Override
	public Admin login(Admin admin) {
		
		return adminDao.login(admin);
	}

}

package com.jackie.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jackie.bean.Admin;
import com.jackie.service.AdminService;
import com.jackie.service.impl.AdminServiceImpl;

@WebServlet("/admin")
public class AdminServlet extends HttpServlet {
	private AdminService adminService;
	private static final long serialVersionUID = 1L;
	
	
	
	public AdminServlet() {
		adminService=new AdminServiceImpl();
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action=request.getParameter("action");
		if (action.equals("adminquery")) {
			List<Admin> admins=adminService.findAdmins();
			HttpSession session=request.getSession();
			session.setAttribute("adminlist", admins);
			request.getRequestDispatcher("admin/adminList.jsp").forward(request, response);
		}else if (action.equals("adminlogin")) {
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			Admin admin=new Admin(username,password);
			Admin u=adminService.login(admin);
			HttpSession session=request.getSession();
			if (u==null) {
				session.setAttribute("errMsg", "用户名或密码错误,请检查后重新登录！！！");
				request.getRequestDispatcher("adminlogin.jsp").forward(request, response);
			}else {
				session.setAttribute("admin", u);
				request.getRequestDispatcher("admin/adminIndex.jsp").forward(request, response);
			}
			
			
			
		}
	
	}

}

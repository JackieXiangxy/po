package com.jackie.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jackie.bean.Course;
import com.jackie.service.CourseService;
import com.jackie.service.impl.CourseServiceImpl;

@WebServlet("/home")
public class CourseServlet extends HttpServlet {
	private CourseService sCourse = null;
	private static final long serialVersionUID = 1L;

	public CourseServlet() {
		sCourse = new CourseServiceImpl();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String action = req.getParameter("action");
		if (action.equals("query")) {
			List<Course> clist = sCourse.findAllCourse();//建立对象及查找所有对象
			HttpSession session = req.getSession();//获取前台的session值
			session.setAttribute("clist", clist);//向前端传出处理后的值
			req.getRequestDispatcher("courseList.jsp").forward(req, resp);//设定接收结果的页面 

		} else if (action.equals("del")) {
			String cno = req.getParameter("cno");
			int res = sCourse.delCourse(cno);
			if (res > 0) {
				req.getRequestDispatcher("home?action=query").forward(req, resp);
			} else {
				PrintWriter out = resp.getWriter();
				out.println("删除失败");
				out.close();

			}
		} else if (action.equals("edit")){
			String cno=req.getParameter("cno");
			Course css=sCourse.findById(cno);
			HttpSession session=req.getSession();
			session.setAttribute("cservice", css);
			req.getRequestDispatcher("edit.jsp").forward(req, resp);
			
		}else if (action.equals("update")) {
			String cno=req.getParameter("cno");
			String cname=new String(req.getParameter("cname"));
			String tno=new String(req.getParameter("tno"));
			Course cou=new Course(cno,cname,tno);
			int res=sCourse.updateCourse(cou);
			if (res>0) {
				req.getRequestDispatcher("home?action=query").forward(req, resp);
			}else {
				PrintWriter out=resp.getWriter();
				out.print("update fail");
				out.close();
			}
			
		}
	}
}

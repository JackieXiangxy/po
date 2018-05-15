package com.jackie.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jackie.bean.Course;
import com.jackie.dao.CourseDAO;
import com.jackie.util.DBCon;

public class CourseDAOImpl implements CourseDAO {
	private DBCon dbc = null;

	@Override
	public int addCourse(Course course) {
		dbc = new DBCon();
		String sql = "insert into course value(?,?,?)";
		int res = dbc.doUpdate(sql, new Object[] { course.getCno(), course.getCname(), course.getTno() });
		dbc.close();
		return res;
	}

	@Override
	public int delCourse(String cno) {
		dbc = new DBCon();
		String sql = "delete from course where id=?";
		int res = dbc.doUpdate(sql, new Object[] { cno });
		dbc.close();
		return res;
	}

	@Override
	public int updateCourse(Course course) {
		dbc = new DBCon();
		String sql = "update course set cno=?,cname=?,tno=?";
		int res = dbc.doUpdate(sql, new Object[] { course.getCno(), course.getCname(), course.getTno() });
		dbc.close();
		return res;
	}

	@Override
	public List<Course> findAllCourse() {

		List<Course> cList = new ArrayList<>();
		String sql = "select * from course ";
		try {
			dbc = new DBCon();
		 // ResultSet res = dbc.doQuery(sql, new Object[] {});
			ResultSet res = dbc.doQuery(sql, new Object[] {});
			while (res.next()) {
				Course course = new Course();
				course.setCno(res.getString("cno"));
				course.setCname(res.getString("cname"));
				course.setTno(res.getString("tno"));
				cList.add(course);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return cList;
	}

	@Override
	public Course findById(String cno) {
		Course course = null;
		dbc = new DBCon();
		String sql = "select * from course where cno =?";
		ResultSet res = dbc.doQuery(sql, cno);
		try {
			while (res.next()) {
				course = new Course();
				course.setCno(res.getString("cno"));
				course.setCname(res.getString("cname"));
				course.setTno(res.getString("tno"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		dbc.close();
		return course;
	}

}

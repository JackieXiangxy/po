package com.jackie.service.impl;

import java.util.List;

import com.jackie.bean.Course;
import com.jackie.dao.CourseDAO;
import com.jackie.dao.impl.CourseDAOImpl;
import com.jackie.service.CourseService;

public class CourseServiceImpl implements CourseService {
	private CourseDAO cDao = new CourseDAOImpl();

	@Override
	public int addCourse(Course course) {

		return cDao.addCourse(course);
	}

	@Override
	public int delCourse(String cno) {
		return cDao.delCourse(cno);
	}

	@Override
	public int updateCourse(Course course) {
		return cDao.updateCourse(course);
	}

	@Override
	public List<Course> findAllCourse() {
		return cDao.findAllCourse();
	}

	@Override
	public Course findById(String cno) {
		return cDao.findById(cno);
	}

}

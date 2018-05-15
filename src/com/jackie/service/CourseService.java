package com.jackie.service;

import java.util.List;

import com.jackie.bean.Course;

public interface CourseService {
	public int addCourse(Course course);// 增加课程

	public int delCourse(String cno);// 删除课程

	public int updateCourse(Course course);// 更改课程

	public List<Course> findAllCourse();// 查找全部课程

	public Course findById(String cno);// 通过ID查找课程

}

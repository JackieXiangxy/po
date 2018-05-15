package com.jackie.bean;

public class Student {
	private String sno;// 学号
	private String sname;// 姓名
	private String ssex;// 性别
	private String sbirthday;// 生日
	private String clazz;// 班级

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSsex() {
		return ssex;
	}

	public void setSsex(String ssex) {
		this.ssex = ssex;
	}

	public String getSbirthday() {
		return sbirthday;
	}

	public void setSbirthday(String sbirthday) {
		this.sbirthday = sbirthday;
	}

	public String getClazz() {
		return clazz;
	}

	public void setClazz(String clazz) {
		this.clazz = clazz;
	}

	public Student(String sno, String sname, String ssex, String sbirthday, String clazz) {
		this.sno = sno;
		this.sname = sname;
		this.ssex = ssex;
		this.sbirthday = sbirthday;
		this.clazz = clazz;
	}

	public Student() {
	}

}

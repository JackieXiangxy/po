package com.jackie.bean;

public class Teacher {
	private int tno;// 教室工号
	private String tname;// 教室姓名
	private String tsex;// 性别
	private String tbirthday;// 生日
	private String prof;// 职称
	private String dept;// 部门

	public Teacher() {
	}

	public Teacher(int tno, String tname, String tsex, String tbirthday, String prof, String dept) {
		this.tno = tno;
		this.tname = tname;
		this.tsex = tsex;
		this.tbirthday = tbirthday;
		this.prof = prof;
		this.dept = dept;
	}

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getTsex() {
		return tsex;
	}

	public void setTsex(String tsex) {
		this.tsex = tsex;
	}

	public String getTbirthday() {
		return tbirthday;
	}

	public void setTbirthday(String tbirthday) {
		this.tbirthday = tbirthday;
	}

	public String getProf() {
		return prof;
	}

	public void setProf(String prof) {
		this.prof = prof;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

}

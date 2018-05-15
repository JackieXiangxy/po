package com.jackie.bean;

public class Score {
	private int id;// 编号
	private String sno;// 学号
	private String cno;// 课程号

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public String getCno() {
		return cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
	}

	public Score(int id, String sno, String cno) {
		this.id = id;
		this.sno = sno;
		this.cno = cno;
	}

	public Score() {
	}

}

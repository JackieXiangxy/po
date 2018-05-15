package com.jackie.bean;

public class Grade {
	private int low;// 最低分
	private int upp;// 最高分
	private char rank;// 等级

	public int getLow() {
		return low;
	}

	public void setLow(int low) {
		this.low = low;
	}

	public int getUpp() {
		return upp;
	}

	public void setUpp(int upp) {
		this.upp = upp;
	}

	public char getRank() {
		return rank;
	}

	public void setRank(char rank) {
		this.rank = rank;
	}

	public Grade(int low, int upp, char rank) {
		this.low = low;
		this.upp = upp;
		this.rank = rank;
	}

	public Grade() {
	}

}

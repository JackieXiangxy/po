package com.jackie.util;

public class SafeTest {
	public static void main(String args[]) {

		try {
			Encryption rsa = new Encryption();
			rsa.generateKey();
			byte[] en = rsa.encrypt("admin".getBytes());
			System.out.println(en);
			byte[] de = rsa.decrypt(en);
			System.out.println(de);
			String str = new String(de);
			System.out.println(str);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}

}

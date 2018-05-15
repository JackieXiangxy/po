package com.jackie.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DBCon {
	private String username = "root";
	private String password = "admin";
	private String driver = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/home02?useUnicode=true&character=utf-8";
	private Connection conn ;

	// 加载驱动及建立连接
	public Connection getConn() {

		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,username, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	/**
	 * 执行查询
	 * 
	 * @param sql
	 *            sql语句
	 * @param params
	 *            对象集合
	 * @return
	 */
	public ResultSet doQuery(String sql, Object... params) {
		PreparedStatement pstmt = null;
		ResultSet res = null;
		conn = this.getConn();
		try {
			// 开启事务
//			 conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			for (int i = 0; i < params.length; i++) {
				pstmt.setObject(i + 1, params[i]);
			}
			res = pstmt.executeQuery();
			 //如果没有查找到，则回滚事务
//			 if (res== null) {
//			 conn.rollback();
//			 }
//			 conn.commit();//事务提交
		} catch (SQLException e) {
//			 try {
//			 conn.rollback();
//			 } catch (SQLException e1) {
//			 e1.printStackTrace();
//			 }
			e.printStackTrace();
		}finally {
//			try {
//				pstmt.close();
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
		}

		return res;
	}

	/**
	 * 执行查询
	 * 
	 * @param sql
	 *            sql语句
	 * @param params
	 *            对象集合
	 * @return
	 */
	public int doUpdate(String sql, Object... params) {
		int res = 0;
		conn = this.getConn();
		try {
			// 开启事务
			 conn.setAutoCommit(false);
			// 预编译sql语句
			PreparedStatement pstmt = conn.prepareStatement(sql);
			for (int i = 0; i < params.length; i++) {
				pstmt.setObject(i + 1, params[i]);
			}
			// 执行并得到结果
			res = pstmt.executeUpdate();
			// 判断是否更新成功
			 if (res==0) {
			 conn.rollback();
			 }
			 conn.commit();//事务提交
		} catch (SQLException e) {
			 try {
			 conn.rollback();//事务回滚
			 } catch (SQLException e1) {
			 e1.printStackTrace();
			 }
			e.printStackTrace();
		}
		return res;
	}

	public void close() {
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}

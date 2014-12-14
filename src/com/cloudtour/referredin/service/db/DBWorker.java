package com.cloudtour.referredin.service.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBWorker {
	Connection conn;
	Statement stmt;
	String url= "jdbc:mysql://localhost/referredin?useUnicode=true&characterEncoding=UTF-8";
	String user = "root";
	String password = "";
	
	public ResultSet query(DBTask task) {
		return task.query(conn);
	}
	
	public void update(DBTask task) {
		task.update(conn);
	}
	
	void getDirver() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("load driver error");
			e.printStackTrace();
		}
	}

	void connect() {
		try {
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			System.out.println("connect error");
			e.printStackTrace();
		}
	}

	void shutdown() {
		try {
			if (stmt != null) {
				stmt.close();
				stmt = null;
			}
			if (conn != null) {
				conn.close();
				conn = null;
			}
		} catch (Exception e) {
			System.out.println("close db error");
			// e.printStackTrace();
		}
	}

}

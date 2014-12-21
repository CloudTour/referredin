package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBGetFollows extends DBTask {
	private String uname;

	public DBGetFollows(String uname) {
		super();
		this.uname = uname;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "select following, firstname, lastname, birthdate, resume, skill "
				+ "from user u, follows f "
				+ "where f.following=u.uname and f.uname=?;";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		statement.setString(1, uname);
		System.out.println(uname);
	}

}

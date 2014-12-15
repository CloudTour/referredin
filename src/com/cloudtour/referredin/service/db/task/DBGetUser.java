package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBGetUser extends DBTask {
	private String name;
	
	public DBGetUser(String name) {
		super();
		this.name = name;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "select uname, password, firstname, lastname, birthdate, resume "
				+ "from user "
				+ (name == null || name.isEmpty() ? "" : "where uname=?");
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		if (name != null && !name.isEmpty())
			statement.setString(1, name);
	}

}

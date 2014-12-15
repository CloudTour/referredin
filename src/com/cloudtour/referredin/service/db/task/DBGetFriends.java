package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBGetFriends extends DBTask {
	private String uname;

	public DBGetFriends(String uname) {
		super();
		this.uname = uname;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "select friend from friendship where uname=?;";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		statement.setString(1, uname);

	}

}

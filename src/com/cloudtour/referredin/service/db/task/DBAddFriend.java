package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBAddFriend extends DBTask {
	private String uname;
	private String friend;

	public DBAddFriend(String uname, String friend) {
		super();
		this.uname = uname;
		this.friend = friend;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "insert into Friendship values(?, ?);";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		int i = 0;
		statement.setString(++i, uname);
		statement.setString(++i, friend);
	}

}

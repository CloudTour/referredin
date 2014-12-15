package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBDeleteFriend extends DBTask {
	private String uname;
	private String friend;

	public DBDeleteFriend(String uname, String friend) {
		super();
		this.uname = uname;
		this.friend = friend;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "delete from friendship where uname=? and friend=?;";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		int i = 0;
		statement.setString(++i, uname);
		statement.setString(++i, friend);
	}

}

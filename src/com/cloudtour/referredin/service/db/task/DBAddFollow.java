package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBAddFollow extends DBTask {
	private String uname;
	private String following;
	private String group;

	public DBAddFollow(String uname, String following, String group) {
		super();
		this.uname = uname;
		this.following = following;
		this.group = group;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "insert into Follows values(?, ?, ?);";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		int i = 0;
		statement.setString(++i, uname);
		statement.setString(++i, following);
		statement.setString(++i, group);
	}

}

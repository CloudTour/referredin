package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBGetLikeByUname extends DBTask {
	private String uname;

	public DBGetLikeByUname(String uname) {
		super();
		this.uname = uname;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "select * from UserLike where uname=?";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		statement.setString(1, uname);
	}

}

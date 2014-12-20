package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBDeleteUserskill extends DBTask {
	private String uname;
	private String skill;

	public DBDeleteUserskill(String uname, String skill) {
		super();
		this.uname = uname;
		this.skill = skill;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		String sql = "delete from userskill where uname=?";
		if (skill != null && !skill.isEmpty())
			sql += " and skill=?";
		return sql;
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		int i = 0;
		statement.setString(++i, uname);
		if (skill != null && !skill.isEmpty())
			statement.setString(++i, skill);
	}

}

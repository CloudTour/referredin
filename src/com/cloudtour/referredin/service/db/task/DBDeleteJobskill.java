package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBDeleteJobskill extends DBTask {
	private String jid;
	private String skill;

	public DBDeleteJobskill(String jid, String skill) {
		super();
		this.jid = jid;
		this.skill = skill;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		String sql = "delete from jobskill where jid=?";
		if (skill != null && !skill.isEmpty())
			sql += " and skill=?";
		return sql;
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		int i = 0;
		statement.setString(++i, jid);
		if (skill != null && !skill.isEmpty())
			statement.setString(++i, skill);
	}

}

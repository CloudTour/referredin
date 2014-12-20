package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBDeleteLike extends DBTask {
	private String uname;
	private String jid;

	public DBDeleteLike(String uname, String jid) {
		super();
		this.uname = uname;
		this.jid = jid;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		String sql = "delete from UserLike where uname=?";
		if (jid != null && !jid.isEmpty())
			sql += " and jid=?";
		return sql;
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		int i = 0;
		statement.setString(++i, uname);
		if (jid != null && !jid.isEmpty())
			statement.setString(++i, jid);
	}

}

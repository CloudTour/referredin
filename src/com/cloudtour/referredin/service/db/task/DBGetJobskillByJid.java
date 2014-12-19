package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBGetJobskillByJid extends DBTask {
	private String jid;

	public DBGetJobskillByJid(String jid) {
		super();
		this.jid = jid;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "select * from jobskill where uname=jid";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		statement.setString(1, jid);

	}

}

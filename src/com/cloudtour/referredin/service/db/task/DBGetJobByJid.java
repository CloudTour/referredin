package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBGetJobByJid extends DBTask {
	private String jid;

	public DBGetJobByJid(String jid) {
		super();
		this.jid = jid;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "select * from job where jid=?";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		statement.setString(1, jid);
	}

}

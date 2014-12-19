package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBDeleteJobByJid extends DBTask {
	private String jid;

	public DBDeleteJobByJid(String jid) {
		super();
		this.jid = jid;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "delete from job where jid = ?";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		int i = 0;
		statement.setString(++i, jid);
	}

}

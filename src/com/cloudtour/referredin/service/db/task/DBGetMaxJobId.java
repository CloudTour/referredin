package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBGetMaxJobId extends DBTask {

	public DBGetMaxJobId() {
		super();
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "select max(jid) as jid from job";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		return;
	}
}

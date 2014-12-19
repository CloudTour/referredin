package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBAddJobskill extends DBTask {
	private String jid; 
	private String skill; 
	
	public DBAddJobskill(String jid, String skill) {
		super();
		this.jid = jid;
		this.skill = skill;
	}

	@Override
	protected String makeSQL() {
		return "insert into jobskill values(?,?)";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		int i = 0;
		statement.setString(++i, jid);
		statement.setString(++i, skill);
	}

}

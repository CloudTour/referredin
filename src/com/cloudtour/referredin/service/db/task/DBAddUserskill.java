package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBAddUserskill extends DBTask {
	private String uname; 
	private String skill; 
	
	public DBAddUserskill(String uname, String skill) {
		super();
		this.uname = uname;
		this.skill = skill;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "insert into userskill values(?,?)";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		int i = 0;
		statement.setString(++i, uname);
		statement.setString(++i, skill);
	}

}

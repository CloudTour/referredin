package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBAddLike extends DBTask {
	private String uname; 
	private String jid; 
	
	public DBAddLike(String uname, String jid) {
		super();
		this.uname = uname;
		this.jid = jid;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "insert into UserLike values(?,?)";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		int i = 0;
		statement.setString(++i, jid);
		statement.setString(++i, uname);
	}

}

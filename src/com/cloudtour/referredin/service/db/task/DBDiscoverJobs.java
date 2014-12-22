package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBDiscoverJobs extends DBTask {
	private String uname;

	public DBDiscoverJobs(String uname) {
		super();
		this.uname = uname;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "select * "
				+ "from job "
				+ "where job.uname <> ? "
				+ "	and job.uname not in ( "
				+ "		select following "
				+ "		from follows f "
				+ "		where f.uname = ?)"
				+ "order by jpostdate desc "
				+ "limit 50;"
;
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		int i = 0;
		statement.setString(++i, uname);
		statement.setString(++i, uname);
	}

}

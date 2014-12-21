package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBGetUserskill extends DBTask {

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "select distinct(skill) from UserSkill";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub

	}

}

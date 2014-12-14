package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateUser extends DBTask {
	private String name;
	private String firstname;
	private String lastname;
	private String birthdate;
	private String resume;

	public UpdateUser(String name, String firstname, String lastname,
			String birthdate, String resume) {
		super();
		this.name = name;
		this.firstname = firstname;
		this.lastname = lastname;
		this.birthdate = birthdate;
		this.resume = resume;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "update User "
				+ "set firstname=?, lastname=?, birthdate=?, resume=? "
				+ "where uname=?";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		statement.setString(1, firstname);
		statement.setString(2, lastname);
		statement.setString(3, birthdate);
		statement.setString(4, resume);
		statement.setString(5, name);
	}

}

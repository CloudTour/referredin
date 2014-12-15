package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBUpdateUser extends DBTask {
	private String name;
	private String password;
	private String firstname;
	private String lastname;
	private String birthdate;
	private String resume;

	public DBUpdateUser(String name, String password, String firstname, String lastname,
			String birthdate, String resume) {
		super();
		this.name = name;
		this.password = password;
		this.firstname = firstname;
		this.lastname = lastname;
		this.birthdate = birthdate;
		this.resume = resume;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "update User "
				+ "set password=?, firstname=?, lastname=?, birthdate=?, resume=? "
				+ "where uname=?";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		int i = 0;
		statement.setString(++i, password);
		statement.setString(++i, firstname);
		statement.setString(++i, lastname);
		statement.setString(++i, birthdate);
		statement.setString(++i, resume);
		statement.setString(++i, name);
	}

}

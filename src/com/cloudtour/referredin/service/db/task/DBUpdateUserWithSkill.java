package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBUpdateUserWithSkill extends DBTask {
	private String name;
	private String password;
	private String firstname;
	private String lastname;
	private String birthdate;
	private String resume;
	private String skill;

	public DBUpdateUserWithSkill(String name, String password,
			String firstname, String lastname, String birthdate, String resume,
			String skill) {
		super();
		this.name = name;
		this.password = password;
		this.firstname = firstname;
		this.lastname = lastname;
		this.birthdate = birthdate;
		this.resume = resume;
		this.skill = skill;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		if (password == null || password.isEmpty())
			return "update User "
					+ "set firstname=?, lastname=?, birthdate=?, resume=?, skill=? "
					+ "where uname=?";
		else
			return "update User "
					+ "set password=?, firstname=?, lastname=?, birthdate=?, resumae=?, skill=? "
					+ "where uname=?";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		int i = 0;
		if (password != null && !password.isEmpty())
			statement.setString(++i, password);
		statement.setString(++i, firstname);
		statement.setString(++i, lastname);
		statement.setString(++i, birthdate);
		statement.setString(++i, resume);
		statement.setString(++i, skill);
		statement.setString(++i, name);

	}

}

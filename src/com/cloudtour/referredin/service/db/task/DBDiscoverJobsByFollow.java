package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBDiscoverJobsByFollow extends DBTask {
	private String uname;

	public DBDiscoverJobsByFollow(String uname) {
		super();
		this.uname = uname;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
		return "select distinct(j.jid) jid, j.uname uname, j.jtitle jtitle, "
				+ "j.jlocation jlocation, j.jcompany jcompany, "
				+ "j.jpostdate jpostdate, j.jtype jtype, j.jindustry jindustry, "
				+ "j.jwebsite jwebsite, j.jskill jskill, "
				+ "friend.firstname friendfirstname, friend.lastname friendlastname "
				+ "from user u1 natural join follows f1, follows f2, job j, user friend "
				+ "where u1.uname = ? and f1.following = f2.uname and friend.uname=f1.following"
				+ "	and f2.following <> u1.uname "
				+ "	and f2.following not in (" + "		select following "
				+ "		from user natural join follows "
				+ "		where uname=u1.uname) " + "	and j.uname = f2.following;";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		statement.setString(1, uname);
	}

}

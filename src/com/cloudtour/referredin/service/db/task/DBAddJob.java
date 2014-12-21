package com.cloudtour.referredin.service.db.task;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBAddJob extends DBTask {
	private String jid; 
	private String uname; 
	private String jtitle; 
	private String jlocation; 
	private String jcompany; 
	private String jyears;
	private String jsalary;
	private String jpostdate; 
	private String jtype; 
	private String jindustry; 
	private String jwebsite;
	private String jskill;
	
	public DBAddJob(String jid, String uname, String jtitle, String jlocation,
			String jcompany, String jyears, String jsalary, String jpostdate,
			String jtype, String jindustry, String jwebsite, String jskill) {
		super();
		this.jid = jid;
		this.uname = uname;
		this.jtitle = jtitle;
		this.jlocation = jlocation;
		this.jcompany = jcompany;
		this.jyears = jyears;
		this.jsalary = jsalary;
		this.jpostdate = jpostdate;
		this.jtype = jtype;
		this.jindustry = jindustry;
		this.jwebsite = jwebsite;
		this.jskill = jskill;
	}

	@Override
	protected String makeSQL() {
		// TODO Auto-generated method stub
//		return "insert into job"
//				+ "(uname,jtitle,jlocation,jcompany,jyears,"
//				+ "jsalary,jpostdate,jtype,jindustry,jwebsite) "
//				+ "values(?,?,?,?,?,?,?,?,?,?)";
		return "insert into job values(?,?,?,?,?,?,?,?,?,?,?,?)";
	}

	@Override
	protected void configure(PreparedStatement statement) throws SQLException {
		// TODO Auto-generated method stub
		int i = 0;
		statement.setString(++i, jid);
		statement.setString(++i, uname);
		statement.setString(++i, jtitle);
		statement.setString(++i, jlocation);
		statement.setString(++i, jcompany);
		statement.setString(++i, jyears);
		statement.setString(++i, jsalary);
		statement.setString(++i, jpostdate);
		statement.setString(++i, jtype);
		statement.setString(++i, jindustry);
		statement.setString(++i, jwebsite);
		statement.setString(++i, jskill);
	}

}

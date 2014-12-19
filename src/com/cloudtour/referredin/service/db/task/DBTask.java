package com.cloudtour.referredin.service.db.task;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public abstract class DBTask {
	public ResultSet query(Connection connection) {
		if (connection == null) {
			return null;
		}
		
		PreparedStatement statement;
		try {
			String sql = makeSQL();
			System.out.println(sql);
			statement = connection.prepareStatement(sql);
			configure(statement);
			return statement.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

	public int update(Connection connection) {
		if (connection == null) {
			return 0;
		}

		PreparedStatement statement;
		try {
			statement = connection.prepareStatement(makeSQL());
			configure(statement);
			statement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		return 1;
	}
	
	protected abstract String makeSQL();
	
	protected abstract void configure(PreparedStatement statement) throws SQLException;
}

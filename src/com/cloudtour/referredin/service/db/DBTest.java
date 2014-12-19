package com.cloudtour.referredin.service.db;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.cloudtour.referredin.service.db.task.*;

public class DBTest {
	public static void main(String[] args) {
		DBWorker worker = DBManager.getInstance().getWorker();
//
//		DBUpdateUser update = new DBUpdateUser("Zheng", "abc123", "Justin",
//				"Yang", "1982-1-7", "");
//		DBGetMaxJobId dBGetMaxJobId = new DBGetMaxJobId();
//		ResultSet rs = worker.query(dBGetMaxJobId);
//		int maxId = -1;
//		try {
//			while(rs.next()) {
//				maxId = Integer.parseInt(rs.getString("jid")) + 1;
//				//System.out.println(maxId);
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
//		DBAddJob dBAddJob = new DBAddJob(maxId +"","1","1","1","1","1","1",getNow(),"1","1","1");
//		worker.update(dBAddJob);
//		DBUpdateJobByJid dBUpdateJobByJid = new DBUpdateJobByJid("11","2","1","1","1","1","1",getNow(),"1","1","1");
//		worker.update(dBUpdateJobByJid);
		DBDeleteJobByJid DBDeleteJobByJid = new DBDeleteJobByJid("11");
		worker.update(DBDeleteJobByJid);
	}

	public static String getNow() {
		java.util.Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		return sdf.format(dt);
	}
}

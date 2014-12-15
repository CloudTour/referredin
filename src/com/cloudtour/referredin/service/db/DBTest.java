package com.cloudtour.referredin.service.db;

import com.cloudtour.referredin.service.db.task.DBUpdateUser;

public class DBTest {
	public static void main(String[] args) {
		DBWorker worker = DBManager.getInstance().getWorker();

		DBUpdateUser update = new DBUpdateUser("Zheng", "abc123", "Justin",
				"Yang", "1982-1-7", "");
		worker.update(update);
	}

}

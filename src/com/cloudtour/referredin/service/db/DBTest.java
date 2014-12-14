package com.cloudtour.referredin.service.db;

import com.cloudtour.referredin.service.db.task.UpdateUser;

public class DBTest {
	public static void main(String[] args) {
		DBWorker worker = DBManager.getInstance().getWorker();
		
		UpdateUser update = new UpdateUser("Zheng", "Justin", "Yang", "1982-1-7", "");
		worker.update(update);
	}

}

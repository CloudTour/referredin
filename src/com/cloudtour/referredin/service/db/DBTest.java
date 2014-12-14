package com.cloudtour.referredin.service.db;

import com.cloudtour.referredin.service.db.task.Register;

public class DBTest {
	public static void main(String[] args) {
		DBWorker worker = DBManager.getInstance().getWorker();
		
		Register register = new Register("Zheng", "Zheng", "Yang", "1982-1-7", "");
		worker.update(register);
	}

}

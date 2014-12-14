package com.cloudtour.referredin.service.db;

public class DBManager {
	private static DBManager instance;
	
	private DBManager() { }
	
	public static DBManager getInstance() {
		if (instance == null) {
			synchronized(DBManager.class) {
				if (instance == null) {
					instance = new DBManager();
				}
			}
		}
		return instance;
	}
	
	// need to improve connection pool.
	public synchronized DBWorker getWorker() {
		DBWorker worker = new DBWorker();
		worker.getDirver();
		worker.connect();
		return worker;
	}

	public synchronized void releaseWorker(DBWorker worker) {
		if (worker != null) {
			worker.shutdown();
		}
	}

}

package com.dboperation;

public class IdGenerator {
	private static String prefix = "CCDM";
	private static int count = 100;
	static DbOperations db = new DbOperations();

	public static String getID() {
		int c = db.getUserCount();
		int totalCount = count;
		if (c == 0) {
			return prefix + (totalCount + 1);
		} else {
			return prefix + (totalCount + c + 1);
		}
	}
}

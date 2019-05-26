package com.credit.mailer;

import com.credit.domain.Mail;
import com.dboperation.DbOperations;

public class MailService {

	private static DbOperations db = new DbOperations();

	public static boolean sendMailService(String recipientmailaddress, String message, String mailSubject) {
		Mail mail = db.getMailAuthentication();
		int msgid = (int) (Math.random() * 1234 + 599); // Random Message ID
		if (mail != null) {
			return Mailer.sendMail(mail, recipientmailaddress, message, mailSubject + (" #" + msgid));
		} else {
			return false;
		}
	}

}
package com.smart.service;

import org.springframework.stereotype.Service;

import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@Service
public class EmailService {

	public boolean sendEmail(String subject, String message, String to) {
		// rest of code
		boolean f = false;
		String from = "lehiep4325@gmail.com";

		// Variable for gmail
		String host = "smtp.gmail.com";

		// get the system properties
		Properties properties = System.getProperties();
		System.out.println("PROPERTIES " + properties);

		// setting important information to properties object

		// host set
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", 465);
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.auth", "true");

		// **Enable Less Secure Apps**
		properties.put("mail.smtp.starttls.enable", "true");

		// step 1: to get the session object
		Session session = Session.getInstance(properties, new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("lehiep4325@gmail.com", "ofxk fcdv qocp dots");
			}

		});

		session.setDebug(true);

		// Step 2: compose the message [test, multi media]
		MimeMessage m = new MimeMessage(session);

		try {
			// from email
			m.setFrom(from);

			// adding recipient to message
			m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

			// add subject to message
			m.setSubject(subject);

			// adding text to message
			/* m.setText(message); */
			m.setContent(message,"text/html");

			// send

			// Step 3: send the message using Transport class
			Transport.send(m);

			System.out.println("Sent success.............");
			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}

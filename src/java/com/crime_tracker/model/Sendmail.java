/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crime_tracker.model;

import java.util.Properties;
import java.util.Random;
import javax.mail.*;
import javax.mail.internet.*;


/**
 *
 * @author admin
 */
public class Sendmail {
    
    public static void send(String to, String sub, String msg, final String user, final String pass) {
        Properties props=new Properties();
        
        props.put("mail.smtp.host", "smtp.gmail.com");
		
		
        props.put("mail.smtp.port", "587");
	props.put("mail.smtp.auth", "true");
	props.put("mail.smtp.starttls.enable", "true");
                
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, pass);
			}
	});
        
        try {

			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject(sub);
			message.setText(msg);

			Transport.send(message);
                        

		} catch (Exception e) {
			e.printStackTrace();
                        System.out.println(e);
		}


    }
    public static int code()
    {
        Random rand=new Random();
        int n=rand.nextInt(9998)+1;
        return n;
    }
    
}

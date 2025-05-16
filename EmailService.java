package bharatdarshan.service;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

@Service
public class EmailService 
{
    public boolean sendEmail(String subject,String message,String to) {
    	
    	boolean f=false;
    	
    	String from ="bharatdarshan17s@gmail.com";
    	//variable for g mail host
    	String host="smtp.gmail.com";
    	
    	//get the system properties
       Properties properties =	System.getProperties();
       
       //setting important information to properties object
       
       //setting host
       properties.put("mail.smtp.host", host);
       properties.put("mail.smtp.port", "465");
       properties.put("mail.smtp.ssl.enable", "true");
       properties.put("mail.smtp.auth", "true");
       
       
       //step 1: get the session object
      Session session= Session.getInstance(properties, new Authenticator() {
    	   @Override
    	protected PasswordAuthentication getPasswordAuthentication() {
    		   
    		//return new PasswordAuthentication("bharatdarshan36@gmail.com", "avdkfojkxluzmirw");
    		   return new PasswordAuthentication("bharatdarshan17s@gmail.com", "lvyapuioudmqveny");
    	}
    	   
	  });
       
         session.setDebug(true);
      
       //step 2: compose the message
        MimeMessage mimeMessage = new  MimeMessage(session);
       
        try {
         //from 
         mimeMessage.setFrom(from);
         
         //adding recepiant to message 
         mimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
         
         //adding subject  to message
         mimeMessage.setSubject(subject);
         
         //adding text to message
       //  mimeMessage.setText(message);
         mimeMessage.setContent(message,"text/html");
         
         //step 3: send the message using transport class
         Transport.send(mimeMessage);
         f=true;
        }catch(Exception e) {
        	e.printStackTrace();
        }
        return f;
    }
}

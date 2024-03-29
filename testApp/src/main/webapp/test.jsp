<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
   String result;
   // Recipient's email ID needs to be mentioned.
   String to = "ivineesha@gmail.com";

   // Sender's email ID needs to be mentioned
   String from = "ivineesha@gmail.com";

   // Assuming you are sending email from localhost
   String host = "smtp.gmail.com";

   // Get system properties object
   Properties properties = System.getProperties();

   // Setup mail server
   properties.setProperty("mail.smtp.auth", "true");
   properties.setProperty("mail.smtp.starttls.enable", "true");
   properties.setProperty("mail.smtp.host", host);
   properties.setProperty("mail.smtp.port", "587");

   // Get the default Session object.
   /*Session mailSession = Session.getInstance(properties, 
		   	new javax.mail.Autheticator(){
	   
   });*/
   Session mailSession = Session.getInstance(properties);
   try{
      // Create a default MimeMessage object.
      MimeMessage message = new MimeMessage(mailSession);
      // Set From: header field of the header.
      message.setFrom(new InternetAddress(from));
      // Set To: header field of the header.
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      // Set Subject: header field
      message.setSubject("This is the Subject Line!");
      // Now set the actual message
      message.setText("This is actual message");
      // Send message
      Transport.send(message);
      result = "Sent message successfully....";
   }catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
   }
%>
<html>
<head>
<title>Send Email using JSP</title>
</head>
<body>
<center>
<h1>Send Email using JSP</h1>
</center>
<p align="center">
<% 
   out.println("Result: " + result + "\n");
%>
</p>
</body>
</html>
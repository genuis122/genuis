package com.chinasoft.myweb.util;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

/**
 * 发送邮件：
 * 	1.获取session对象
 * 	2.获取邮件对象(MimeMessage),并设置相应的属性
 * 	3.发送邮件：TransPort.send(msg);
 * 
 *
 */
public class EmailUtils {
	public static void sendMail(String to,String token ) {
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.163.com");//配置发件服务器
		props.put("mail.smtp.auth", "true");//设置该邮箱需要验证
		Authenticator authenticator = new Authenticator() {
			//验证用户名、密码
			protected PasswordAuthentication getPasswordAuthentication() {
				//邮箱名+授权码（我的授权码是：wjl753）
				return new PasswordAuthentication("genius_wjl", "wjl753");
			}
		};
		
		//获取Session对象
		Session session = Session.getInstance(props, authenticator);
		MimeMessage msg = new MimeMessage(session);
		try {
			msg.setFrom(new InternetAddress("genius_wjl@163.com"));
			msg.setRecipients(Message.RecipientType.TO,to);
			msg.setSubject("激活邮件--中软国际");
			msg.setSentDate(new Date());
			msg.setContent(
					"<a href=\"http://localhost:8080/mavenDao/activate?token="+token+"\">"
							+ "点击激活:http://localhost:8080/mavenDao/activate?token="+token+"</a>","text/html;charset=utf-8");
			Transport.send(msg);
			System.out.println("发送完成");
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		
	}
	
}

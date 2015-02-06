package com.go.email;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service("sendMail")
public class SendEmail{
	@Resource(name="mailSender")
	JavaMailSenderImpl sender;
	
	/**
	 * 发送电子邮件
	 * @param email 接收邮件邮箱
	 * @param title 邮件邮箱标题
	 * @param text 邮件邮箱内容
	 * @throws Exception
	 */
	public void sendEmail(String email,String title,String text) throws Exception{
		MimeMessage mime=new JavaMailSenderImpl().createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(mime,true,"utf-8");  //设置utf-8或GBK编码，否则邮件会有乱码  
		messageHelper.setTo(email);//接收邮件邮箱
		messageHelper.setFrom(sender.getUsername());//发送邮件邮箱
		messageHelper.setSubject(title);//标题
		messageHelper.setText(text, true);
		sender.send(mime);
	}
}

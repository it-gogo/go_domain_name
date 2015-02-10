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
	public void sendEmail(final String email,final String title,final String text) throws Exception{
		Runnable r = new Runnable() {
			@Override
			public void run() {
				try {
					MimeMessage mime=new JavaMailSenderImpl().createMimeMessage();
					MimeMessageHelper messageHelper = new MimeMessageHelper(mime,true,"utf-8");  //设置utf-8或GBK编码，否则邮件会有乱码  
					messageHelper.setTo(email);//接收邮件邮箱
					messageHelper.setFrom(sender.getUsername());//发送邮件邮箱
					messageHelper.setSubject(title);//标题
					messageHelper.setText(text, true);
					sender.send(mime);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		};
		Thread t=new Thread(r);
		t.start();
	}
}

package com.yc.dao;
/*package com.yc.dao;

import java.awt.Dimension;
import java.awt.Toolkit;
import java.io.UnsupportedEncodingException;
import java.util.Collections;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MyUtils {
	public String achieveCode() {
		String[] beforeShuffle= new String[] { "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F",
		"G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a",
		"b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v",
		"w", "x", "y", "z" };
		List list = Arrays.asList(beforeShuffle);
		Collections.shuffle(list);
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < list.size(); i++) {
		sb.append(list.get(i));
		}
		String afterShuffle = sb.toString();
		String result = afterShuffle.substring(3, 9);
		System.out.print(result);
		return result;
		}

		//(2).发�?�验证码至邮�?

		   

		// 发�?�验证码
		public String sendEamilCode(String eamil) {
		HtmlEmail send = new HtmlEmail();
		// 获取随机验证�?
		String resultCode = achieveCode();
		try {
		send.setHostName("smtp.qq.com");
		send.setSmtpPort(465); //端口�?
		send.setSSLOnConnect(true);//�?启SSL加密
		send.setCharset("utf-8");
		send.addTo(eamil); //接收者的QQEamil
		send.setFrom("19XXXXXXX@qq.com", "XX");//第一个参数是发�?��?�的QQEamil   第二个参数是发�?��?�QQ昵称
		send.setAuthentication("19XXXXXXX@qq.com", "yszsozustfjsjaaj"); //第一个参数是发�?��?�的QQEamil   第二个参数是刚刚获取的授权码
		send.setSubject(checkAmOrPm() + ",小渣渣特给您送上验证�?");//Eamil的标�?  第一个参数是我写的判断上下午，删掉即�?
		send.setMsg("HelloWorld!欢迎大大光临，特此�?�上验证:   " + resultCode + "   请大大签�?"); //Eamil的内�?


		send.send();//发�??
		} catch (EmailException e) {
		e.printStackTrace();
		}
		return resultCode;        //同等验证�?
		}
}
*/
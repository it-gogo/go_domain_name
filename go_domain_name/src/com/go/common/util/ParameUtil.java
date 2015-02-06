package com.go.common.util;

import java.io.InputStream;
import java.util.Properties;



public class ParameUtil {
	private static Properties p;
	static{
		try{
			InputStream stream = ParameUtil.class.getClassLoader().getResourceAsStream("parame.properties");
			p = new Properties();
		    p.load(stream);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	public  static String getParame(String parame){
		 return p.getProperty(parame);
	}
	public static void main(String[] args) {
	}
}

package com.test.begin.di3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {

	public static void main(String[] args) {
		
		//Hong 객체 생성하기
		//1. 개발자가 직접 생성
		//Hong hong = new Hong();
		
		//2. 스프링을 통해서 생성 > 빈 생성
		//- di3.xml 환경 설정을 읽어오기
		
		//ApplicationContext context = new ClassPathXmlApplicationContext("file:/src/main/java/com/test/begin/di3/di3.xml");
		
		ApplicationContext context = new ClassPathXmlApplicationContext("com/test/begin/di3/di3.xml");
		
		Hong hong = (Hong)context.getBean("hong");
		//hong.coding();
		
		//스프링에서 의존 주입 구현
		Service service = (Service)context.getBean("service");
		
		//service.setHong(hong);
		
		service.work();
		
	}
	
}









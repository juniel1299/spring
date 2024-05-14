package com.test.begin.di3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {

	public static void main(String[] args) {
		
		//Hong ��ü �����ϱ�
		//1. �����ڰ� ���� ����
		//Hong hong = new Hong();
		
		//2. �������� ���ؼ� ���� > �� ����
		//- di3.xml ȯ�� ������ �о����
		
		//ApplicationContext context = new ClassPathXmlApplicationContext("file:/src/main/java/com/test/begin/di3/di3.xml");
		
		ApplicationContext context = new ClassPathXmlApplicationContext("com/test/begin/di3/di3.xml");
		
		Hong hong = (Hong)context.getBean("hong");
		//hong.coding();
		
		//���������� ���� ���� ����
		Service service = (Service)context.getBean("service");
		
		//service.setHong(hong);
		
		service.work();
		
	}
	
}









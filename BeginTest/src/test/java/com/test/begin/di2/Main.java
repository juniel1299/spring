package com.test.begin.di2;

public class Main {

	public static void main(String[] args) {
		
		Hong hong = new Hong();
		
		Service service = new Service(hong);
		service.work();
		
	}
	
}









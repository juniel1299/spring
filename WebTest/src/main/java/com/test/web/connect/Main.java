package com.test.web.connect;

public class Main {

	public static void main(String[] args) {
		
		//Main > Service > Hong
		
		
		//*** 계층과 계층간 연결에서 > 클래스 X , 인터페이스 사용 O > 권장 사항 
		Service service = new Service();
		service.work();
	}
}

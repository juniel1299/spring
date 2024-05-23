package com.test.websocket.server;

import java.util.ArrayList;
import java.util.List;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/chatserver.do")
public class ChatServer {

	//현재 채팅 서버에 접속한 클라이언트 세션 
	private static List<Session> sessionList = new ArrayList<Session>();
	
	@OnOpen
	public void handleOpen(Session session) {
	
		System.out.println("클라이언트가 접속했습니다.");
		sessionList.add(session);
	}
	@OnMessage
	public void handleMessage(String msg) {
		System.out.println(msg);
		
		for (Session s : sessionList) {
			try {
				s.getBasicRemote().sendText(msg);
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}
		}
	}
	@OnClose
	public void handleClose() {
	System.out.println("클라이언트와 접속 종료되었습니다.");	
	}
	@OnError
	public void handleError(Throwable e) {
		
	}
}

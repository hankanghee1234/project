package org.team.handler;

import java.util.HashSet;
import java.util.Set;
 
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;
 
public class SocketHandler extends TextWebSocketHandler implements InitializingBean {
 
       private final Logger logger = LogManager.getLogger(getClass());
       private Set<WebSocketSession> sessionSet = new HashSet<WebSocketSession>();
 
       
      //소스 설명
/*
Set을 이용하여 클라이언트에서 접속 Session 을 유지한다.
Thread로 현재 서버 시각을 클라이언트로 주기적으로 전송한다.
[출처] Spring 4 WebSocket 샘플 구현|작성자 완전컴맹
Override 함수 설명

afterConnectionEstablished
WebSocket 연결이 열리고 사용이 준비될 때 호출
afterConnectionClosed
WebSocket 연결이 닫혔을 때 호출
handleMessage
클라이언트로부터 메시지가 도착했을 때 호출
handleTransportError
전송 에러 발생할 때 호출
supportsPartialMessages
WebSocketHandler가 부분 메시지를 처리할 때 호출
[출처] Spring 4 WebSocket 샘플 구현|작성자 완전컴맹


*/
       public SocketHandler (){
             super();
             this.logger.info("create SocketHandler instance!");
       }
 
       @Override
       public void afterConnectionClosed(WebSocketSession session,
                    CloseStatus status) throws Exception {
             super.afterConnectionClosed(session, status);
 
             sessionSet.remove(session);
             this.logger.info("remove session!");
       }
 
       @Override
       public void afterConnectionEstablished(WebSocketSession session)
                    throws Exception {
             super.afterConnectionEstablished(session);
 
             sessionSet.add(session);
             this.logger.info("add session!");
       }
 
       @Override
       public void handleMessage(WebSocketSession session,
                    WebSocketMessage<?> message) throws Exception {
             super.handleMessage(session, message);
            
             this.logger.info("receive message:"+message.toString());
       }
 
       @Override
       public void handleTransportError(WebSocketSession session,
                    Throwable exception) throws Exception {
             this.logger.error("web socket error!", exception);
       }
 
       @Override
       public boolean supportsPartialMessages() {
             this.logger.info("call method!");
            
             return super.supportsPartialMessages();
       }
      
       public void sendMessage (String message){
             for (WebSocketSession session: this.sessionSet){
                    if (session.isOpen()){
                           try{
                                 session.sendMessage(new TextMessage(message));
                           }catch (Exception ignored){
                                 this.logger.error("fail to send message!", ignored);
                           }
                    }
             }
       }
 
       @Override
       public void afterPropertiesSet() throws Exception {
 
             Thread thread = new Thread(){
 
                    int i=0;
                    @Override
                    public void run() {
                           while (true){
 
                                 try {
                                        sendMessage ("send message index "+i++);
                                        Thread.sleep(1000);
                                 } catch (InterruptedException e) {
                                        e.printStackTrace();
                                        break;
                                 }
                           }
                    }
 
             };
 
             thread.start();
       }
 
}
 

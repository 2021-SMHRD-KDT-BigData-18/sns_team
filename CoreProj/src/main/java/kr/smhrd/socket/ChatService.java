package kr.smhrd.socket;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import kr.smhrd.dao.T_CHATTINGDAO;
import kr.smhrd.entity.T_CHATTING;

import java.util.*;

@ServerEndpoint(value="/broadcasting/{roomId}")
public class ChatService {
    private static Set<Session> sessionSet = Collections.synchronizedSet(new HashSet<Session>());
    private static Map<Integer, ArrayList<Session>> sessionMap = Collections.synchronizedMap(new HashMap<Integer, ArrayList<Session>>());
    //private final ChatRoomService chatRoomService;

    @OnOpen
    public void onOpen(Session s, @PathParam("roomId") int roomId ) {

        // 방 처음 들어왔으면 해당 방 세션리스트생성
        if(!sessionMap.containsKey(roomId)){
            sessionMap.put(roomId, new ArrayList<>());
        }

        //방에 아무도 없다면 해당 방 세션리스트생성 & 추가, 있다면 추가만
        if(sessionMap.get(roomId).size()==0){
            sessionMap.put(roomId, new ArrayList<>());
            sessionMap.get(roomId).add(s);
        }else{
            sessionMap.get(roomId).add(s);
        }

        if(!sessionSet.contains(s)) {
            sessionSet.add(s);
            System.out.println("세션 열림 : " + s);
        }else {
        	System.out.println("이미 연결된 세션");
        }

        System.out.println("*******방마다 세션 객체 불러오기*******");
        for(Integer key: sessionMap.keySet()){
        	System.out.println(key+"번방 : ");
            for(int j=0; j<sessionMap.get(key).size();j++){
            	System.out.println(String.valueOf(sessionMap.get(key).get(j)));
            }
        }
    }
    
    @OnMessage
    public void onMessage(String msg, Session s, @PathParam("roomId") int roomId) throws Exception{
        //사용자가 어느 방에 있는지 찾기
        Integer findkey = -1;
        for(int key: sessionMap.keySet()){
            for(int j=0; j<sessionMap.get(key).size();j++){
                if(sessionMap.get(key).get(j).equals(s)){
                    findkey = key;
                }
            }
        }
        // 방에 있는 세션 모두 tmpSessionSet에 저장
        Set<Session> tmpSessionSet = Collections.synchronizedSet(new HashSet<Session>());
        for(int j=0;j<sessionMap.get(findkey).size();j++){
            tmpSessionSet.add(sessionMap.get(findkey).get(j));
        }
        // roomId => 방 시퀀스
//        String str = "ABCDEFG,!,HIJKLMN,!,OPQRSTU,!,VWXYZ";
//		String[] ArraysStr = str.split(",!,");
//		for(String ds : ArraysStr) {
//			System.out.println(ds);}
//		System.out.println("-----------");
        
        
        String[] message = msg.split(",!,");
        System.out.println(msg);
        System.out.println("-----------");
        for(int i =0;i<message.length;i++) {
        	System.out.println(i);
        	System.out.println(message[i]);
        }
        String sender = message[0];
        String content = message[1];
        
        T_CHATTING dto = new T_CHATTING();
        T_CHATTINGDAO dao = new T_CHATTINGDAO();
        dto.setCHAT_CONTENT(content);
        dto.setCR_SEQ(roomId);
        //dto.setCR_SEQ(1);
        dto.setTALKER(sender);
        
        int res = dao.chat(dto);
        if(res!=0)
        	System.out.println("OK!");

        //같은 방에 있는 사람에게만 보낸다.
        for(Session session : tmpSessionSet) {
        	System.out.println("전송 메세지 : " + msg);
            session.getBasicRemote().sendText(msg);
        }
        System.out.println("----------------------------");
    }

    @OnClose
    public void onClose(Session s) {
    	System.out.println("세션 닫힘 : " + s);
        sessionSet.remove(s);

        Integer findkey = -1;
        for(int key: sessionMap.keySet()){
            for(int j=0; j<sessionMap.get(key).size();j++){
                if(sessionMap.get(key).get(j).equals(s)){
                    findkey = key;
                }
            }
        }
        sessionMap.get(findkey).remove(s);

        //방인원 -1
        //ChatRoom chatRoom = chatRoomService.decreaseExist(findkey);

    }
}

































//@ServerEndpoint("/broadcasting/{roomid}")
//public class WebSocket {
//    private static Set<Session> clients = Collections.synchronizedSet(new HashSet<Session>());
//    
//    @OnMessage
//    public void onMessage(String message, Session session) throws IOException {
//    	System.out.println("send::");
//        System.out.println(message);
//        synchronized(clients) {
//            for(Session client : clients) {
//                if(!client.equals(session)) {
//                    client.getBasicRemote().sendText(message);
//                }
//            }
//        }
//    }
//    
//    @OnOpen
//    public void onOpen(Session session) {
//        System.out.println(session);
//        clients.add(session);
//    }
//    
//    @OnClose
//    public void onClose(Session session) {
//        clients.remove(session);
//    }
//}
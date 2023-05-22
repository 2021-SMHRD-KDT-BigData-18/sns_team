package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.smhrd.dao.T_CHATROOMDAO;
import kr.smhrd.dao.T_FRIENDDAO;
import kr.smhrd.entity.T_CHATTING;
import kr.smhrd.entity.T_FRIEND;
import kr.smhrd.entity.T_USER;

public class LoadChatListCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		T_FRIENDDAO dao = new T_FRIENDDAO();
		T_CHATROOMDAO dao2 = new T_CHATROOMDAO();
		PrintWriter out = response.getWriter();
		
		//내 정보 가져옴
		T_USER user = (T_USER)session.getAttribute("user");
		// 내 친구 목록 가져옴
		List<T_FRIEND> list = dao.friendSelect(user.getU_ID());
		
		List<LastChat> chats = new ArrayList<LastChat>();
		
		
		//request.setAttribute("friendSelect", list);
		
		//친구 목록 돌면서 마지막 채팅 챙기기
		for(T_FRIEND val : list) {
			int roomId = dao2.searchRoom(user.getU_ID(), val.getF_ID());
			T_CHATTING tempChat = dao2.loadLastChat(roomId);
			LastChat lastChat = new LastChat();
			
			if(tempChat==null) {
			lastChat.setChat_content("");
			lastChat.setChat_dt("");
			}
			else {
				lastChat.setChat_content(tempChat.getCHAT_CONTENT());				
				lastChat.setChat_dt(tempChat.getCHAT_DT());
			}
			lastChat.setChat_id(val.getF_ID());
			
			chats.add(lastChat);
		}
		
		
		Gson gson = new Gson();
		String json = gson.toJson(chats);

		System.out.println(json);
		out.print(json);
	
		return null;
	}
	
	
	class LastChat{
		private String chat_id;
		private String chat_content;
		private String chat_dt;
		
		public LastChat() {}
		public String getChat_id() {
			return chat_id;
		}
		public void setChat_id(String f_id) {
			this.chat_id = f_id;
		}
		public String getChat_content() {
			return chat_content;
		}
		public void setChat_content(String chat_content) {
			this.chat_content = chat_content;
		}
		public String getChat_dt() {
			return chat_dt;
		}
		public void setChat_dt(String chat_dt) {
			this.chat_dt = chat_dt;
		}
		
		
	}
	

}

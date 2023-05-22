package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.smhrd.dao.T_CHATROOMDAO;
import kr.smhrd.dao.T_CHATTINGDAO;
import kr.smhrd.dao.T_FRIENDDAO;
import kr.smhrd.entity.T_USER;

public class DelFriendCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		T_FRIENDDAO dao = new T_FRIENDDAO();
		PrintWriter out = response.getWriter();
		T_USER user = (T_USER)session.getAttribute("user");
		
		dao.delFriend(user.getU_ID(), request.getParameter("f_id"));
		
		T_CHATROOMDAO dao2 = new T_CHATROOMDAO();
		T_CHATTINGDAO dao3 = new T_CHATTINGDAO();
		
		int CR_SEQ = dao2.searchRoom(user.getU_ID(), request.getParameter("f_id"));
		dao3.delAllChat(CR_SEQ);
		dao2.delChatroom(user.getU_ID(), request.getParameter("f_id"));
		
		out.print("ok");
		
		
		
		return null;
	}

}

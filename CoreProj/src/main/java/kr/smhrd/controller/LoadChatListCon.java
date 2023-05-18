package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.smhrd.dao.T_FRIENDDAO;
import kr.smhrd.entity.T_FRIEND;
import kr.smhrd.entity.T_USER;

public class LoadChatListCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");
		
		T_FRIENDDAO dao = new T_FRIENDDAO();
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		T_USER user = (T_USER)session.getAttribute("user");
		
		List<T_FRIEND> list = dao.friendSelect(user.getU_ID());
		
		//request.setAttribute("friendSelect", list);
		
		
		Gson gson = new Gson();
		String json = gson.toJson(list);

		System.out.println(json);
		out.print(json);
		
		
		
		return null;
	}

}

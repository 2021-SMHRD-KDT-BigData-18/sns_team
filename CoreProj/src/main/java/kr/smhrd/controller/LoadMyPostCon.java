package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.smhrd.dao.T_POSTDAO;
import kr.smhrd.entity.T_FRIEND;
import kr.smhrd.entity.T_POST;
import kr.smhrd.entity.T_USER;

public class LoadMyPostCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		T_POSTDAO dao = new T_POSTDAO();
		PrintWriter out = response.getWriter();
		//T_USER user = (T_USER)session.getAttribute("user");
		String u_id = request.getParameter("u_id");
		List<T_POST> list = dao.loadMyPost(u_id);
		
		Gson gson = new Gson();
		String json = gson.toJson(list);

		System.out.println(json);
		out.print(json);
		
		return null;
	}

}

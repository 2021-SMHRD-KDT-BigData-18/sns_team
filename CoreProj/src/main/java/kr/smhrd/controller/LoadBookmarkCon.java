package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.smhrd.dao.T_BOOKMARKDAO;
import kr.smhrd.entity.T_POST;
import kr.smhrd.entity.T_USER;

public class LoadBookmarkCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		T_BOOKMARKDAO dao = new T_BOOKMARKDAO();
		String u_id = ((T_USER)request.getSession().getAttribute("user")).getU_ID();
		List<T_POST> list = dao.loadBookmark(u_id);
		
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		String json = gson.toJson(list);
		System.out.println(json);
		out.print(json);
		
		
		
		return null;
	}

}

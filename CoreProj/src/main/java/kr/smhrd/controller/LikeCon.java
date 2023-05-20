package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.dao.T_BOOKMARKDAO;
import kr.smhrd.dao.T_FAVORITESDAO;
import kr.smhrd.entity.T_USER;

public class LikeCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		T_FAVORITESDAO dao = new T_FAVORITESDAO();
		
		String p_id = request.getParameter("p_id");
		String u_id = ((T_USER)request.getSession().getAttribute("user")).getU_ID();
		
		System.out.println(p_id+u_id);
		
		int res = dao.addFavorites(p_id, u_id);
		
		PrintWriter out = response.getWriter();
		
		if(res==1) {
			out.print("added");
		}else {
			out.print("deleted");
		}
		
		
		return null;
	}

}

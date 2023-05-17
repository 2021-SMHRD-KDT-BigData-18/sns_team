package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.dao.T_POSTDAO;
import kr.smhrd.entity.T_POST;

public class GoPostDetailCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int p_id = Integer.parseInt(request.getParameter("p_id"));
		System.out.println("p_id = "+p_id);
		
		T_POSTDAO dao = new T_POSTDAO();
		T_POST dto = dao.searchWithId(p_id);
		request.setAttribute("post", dto);
		return "postDetail";
	}

}

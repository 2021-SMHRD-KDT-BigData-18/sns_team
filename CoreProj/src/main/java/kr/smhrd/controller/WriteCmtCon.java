package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.smhrd.dao.T_COMMENTDAO;
import kr.smhrd.entity.T_COMMENT;
import kr.smhrd.entity.T_USER;

public class WriteCmtCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		T_COMMENT dto = new T_COMMENT();
		T_USER user = (T_USER) session.getAttribute("user");
		T_COMMENTDAO dao = new T_COMMENTDAO();
		
		System.out.println(user.getU_ID());
		System.out.println(request.getParameter("cmt"));
		System.out.println(request.getParameter("p_id"));
		
		
		dto.setU_ID(user.getU_ID());
		dto.setCMT_CONTENT(request.getParameter("cmt"));
		dto.setP_SEQ(Integer.parseInt(request.getParameter("p_id")));

		int res = dao.cmtWrite(dto);
		
		response.getWriter().print(res);
		
		return null;
	}

}

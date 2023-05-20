package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.dao.T_COMMENTDAO;
import kr.smhrd.entity.T_COMMENT;
import kr.smhrd.entity.T_USER;

public class DelCmtCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		T_COMMENTDAO dao = new T_COMMENTDAO();
		
		T_COMMENT dto = dao.searchCmt(Integer.parseInt(request.getParameter("cmt_id")));
		
		int res;
		String user = ((T_USER)request.getSession().getAttribute("user")).getU_ID();
		PrintWriter out = response.getWriter();
		
		if(dto.getU_ID().equals(user)) {
			res=dao.deleteCmt(Integer.parseInt(request.getParameter("cmt_id")));
		}else {
			res=2;
		}
		out.print(res);
		
		return null;
	}

}

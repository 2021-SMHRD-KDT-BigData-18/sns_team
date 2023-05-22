package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.dao.T_POSTDAO;

public class WriteDeleteCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int P_SEQ = Integer.parseInt(request.getParameter("P_SEQ"));

		T_POSTDAO dao = new T_POSTDAO();

		int row = dao.writeDelete(P_SEQ);

		String nextView = "redirect:/goMain.do";

		return nextView;
	}

}

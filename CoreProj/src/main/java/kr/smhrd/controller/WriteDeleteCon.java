package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.smhrd.dao.T_FAVORITESDAO;
import kr.smhrd.dao.T_POSTDAO;

public class WriteDeleteCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int P_SEQ = Integer.parseInt(request.getParameter("P_SEQ"));
		
		T_FAVORITESDAO dao2 = new T_FAVORITESDAO();
		T_POSTDAO dao1 = new T_POSTDAO();
		
		int row2 = dao2.deleteP_SEQ(P_SEQ);
		int row1 = dao1.writeDelete(P_SEQ);

		String nextView = "redirect:/goMain.do";
		
		return nextView;
		//return null;
	}

}

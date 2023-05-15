package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.smhrd.dao.T_USERDAO;
import kr.smhrd.entity.T_USER;

public class GoLoginCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String U_ID = request.getParameter("U_ID");
		String U_PW = request.getParameter("U_PW");
		
		T_USER dto = new T_USER();
		dto.setU_ID(U_ID);
		dto.setU_PW(U_PW);
		
		T_USERDAO dao = new T_USERDAO();
		
		T_USER user = dao.login(dto);
		
		String nextView = "";
		
		if(user != null) {
			System.out.println("로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			nextView = "redirect:/goMain.do";
		}else {
			System.out.println("로그인 실패");
			nextView = "login";
		}
		
		return nextView;
	}

}

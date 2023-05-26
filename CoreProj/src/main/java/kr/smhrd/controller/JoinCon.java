package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.dao.T_USERDAO;
import kr.smhrd.entity.T_USER;

public class JoinCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. 데이터 수집
		request.setCharacterEncoding("UTF-8");

		String U_ID = request.getParameter("U_ID");
		String U_PW = request.getParameter("U_PW");
		String U_NICK = request.getParameter("U_NICK");
		String U_PROFILE_IMG = "새싹 누끼.png";//request.getParameter("U_PROFILE_IMG");

		T_USER dto = new T_USER();
		System.out.println(U_ID);
		System.out.println(U_PW);
		System.out.println(U_NICK);

		T_USERDAO dao = new T_USERDAO();

		dto.setU_ID(U_ID);
		dto.setU_PW(U_PW);
		dto.setU_NICK(U_NICK);
		dto.setU_PROFILE_IMG(U_PROFILE_IMG);
		
		boolean isSuccess = dao.join(dto);

		System.out.println(isSuccess);
		response.getWriter().print(isSuccess);

		return null;
	}

}

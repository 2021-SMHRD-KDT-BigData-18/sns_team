package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.dao.T_USERDAO;
import kr.smhrd.entity.T_USER;

public class DupIDCheckCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("U_ID");
		System.out.println(id);

		response.setCharacterEncoding("UTF-8");

		PrintWriter out = response.getWriter();

		// 회원 전체 목록을 json 형식
		T_USERDAO dao = new T_USERDAO();

		T_USER user = dao.dup_check(id);

		if (user== null) {
			out.print("OK");
			System.out.println("OK");

		} else {
			out.print("NO");
		}

		return null;
	}

}

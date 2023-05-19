package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.entity.T_USER;

public class GoMypageCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getSession().getAttribute("user") != null) {
			String me = ((T_USER)(request.getSession().getAttribute("user"))).getU_ID();
			String friend = request.getParameter("u_id");
			if(me.equals(friend)) {
				return "mypage";
			}
			else
				return "other_mypage";
		} else
			return "login";
	}

}

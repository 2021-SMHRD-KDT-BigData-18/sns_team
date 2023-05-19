package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.dao.T_FRIENDDAO;
import kr.smhrd.entity.T_USER;

public class FollowCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		T_FRIENDDAO dao = new T_FRIENDDAO();
		String u_id = ((T_USER)request.getSession().getAttribute("user")).getU_ID();
		dao.follow(u_id , request.getParameter("f_id"));
		
		return null;
	}

}

package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.dao.T_EVENTDAO;
import kr.smhrd.entity.T_EVENT;

public class AddEventCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String event = request.getParameter("title");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		System.out.println("---------------------");
		System.out.println(request.getParameter("pl_id"));
		System.out.println(request.getParameter("title"));
		System.out.println(request.getParameter("start"));
		int pl_id = Integer.parseInt(request.getParameter("pl_id"));
		T_EVENT dto = new T_EVENT();
		dto.setEVENT(event);
		dto.setDT_START(start);
		dto.setDT_END(end);
		dto.setPL_SEQ(pl_id);
		
		T_EVENTDAO dao = new T_EVENTDAO();
		dao.addEvent(dto);
		
		
		return null;
	}

}

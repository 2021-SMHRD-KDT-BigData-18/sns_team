package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.dao.T_PLANTDAO;
import kr.smhrd.dao.T_POSTDAO;
import kr.smhrd.entity.T_PLANT;
import kr.smhrd.entity.T_POST;

public class GoPlantDetailCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int pl_id = Integer.parseInt(request.getParameter("pl_id"));
		System.out.println("pl_id = "+pl_id);
		
		T_PLANTDAO dao = new T_PLANTDAO();
		T_PLANT dto = dao.searchPlantWithId(pl_id);
		
		request.setAttribute("plant", dto);
		return "plantpage";
	}

}

package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.smhrd.dao.T_POSTDAO;
import kr.smhrd.entity.T_POST;

public class LikeUpdateMinusCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int P_SEQ = Integer.parseInt(request.getParameter("dto"));
		
		T_POST dto = new T_POST();
		dto.setP_SEQ(P_SEQ);
		
		T_POSTDAO dao = new T_POSTDAO(); 
		
		int P_LIKES = dao.likeUpdatePlus(dto);
		
		Gson gson = new Gson();
		
		String json = gson.toJson(P_LIKES);
		
		return null;
	}

}

package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.smhrd.dao.T_PLANTDAO;
import kr.smhrd.dao.T_POSTDAO;
import kr.smhrd.entity.T_POST;
import kr.smhrd.entity.T_USER;

public class LoadMyPlantCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		T_PLANTDAO dao = new T_PLANTDAO();
		PrintWriter out = response.getWriter();
		T_USER user = (T_USER)session.getAttribute("user");
		List<T_POST> list = dao.loadMyPlant(user.getU_ID());
		
		Gson gson = new Gson();
		String json = gson.toJson(list);

		System.out.println(json);
		out.print(json);
		
		
		return null;
	}

}

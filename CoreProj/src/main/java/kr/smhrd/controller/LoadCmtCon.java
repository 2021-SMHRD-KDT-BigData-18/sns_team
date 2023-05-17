package kr.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.smhrd.dao.T_COMMENTDAO;
import kr.smhrd.entity.T_COMMENT;
import kr.smhrd.entity.T_POST;

public class LoadCmtCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
response.setCharacterEncoding("UTF-8");
		
		T_COMMENTDAO dao = new T_COMMENTDAO();
		PrintWriter out = response.getWriter();

		// 회원 전체 목록을 json 형식
		List<T_COMMENT> list = dao.cmtLoad();
//		request.setAttribute("posts", list);

		// Java 객체를 Json으로 변환시키기위한 Gson 라이브러리
		// 1) Gson 객체 생성
		Gson gson = new Gson();
//
//		// 2) Java Object를 JSON
		String json = gson.toJson(list);
//
		System.out.println(json);
//		// json 데이터를 응답하기.
//		// String json = "{\"key\":\"value\"}";
		out.print(json);	
		
		return null;
	}

}

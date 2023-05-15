package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.smhrd.dao.T_POSTDAO;
import kr.smhrd.entity.T_POST;


public class GoMainPost implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		T_POSTDAO dao = new T_POSTDAO();
		
		List<T_POST> list = dao.list();
		
		request.setAttribute("list", list);		
		
		return null;
	}

}

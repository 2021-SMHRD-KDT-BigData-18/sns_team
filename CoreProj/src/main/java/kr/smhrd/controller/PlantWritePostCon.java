package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.smhrd.dao.T_POSTDAO;
import kr.smhrd.entity.T_POST;
import kr.smhrd.entity.T_USER;

public class PlantWritePostCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String path = request.getServletContext().getRealPath("P_FILE");
		
		int maxSize = 10 * 1024 * 1024;
		
		String encoding = "UTF-8";
		
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);
		String P_TITLE = request.getParameter("P_TITLE");
		String P_CONTENT = request.getParameter("P_CONTENT");
		String P_DT = request.getParameter("P_DT");
		String U_ID = ((T_USER)request.getSession().getAttribute("user")).getU_ID();
		
		String P_FILE = multi.getFilesystemName("filename");
		
		HttpSession session = request.getSession();
		T_POST user = (T_POST) session.getAttribute("user");

		T_POST dto = new T_POST();
		dto.setP_TITLE(P_TITLE);
		dto.setP_CONTENT(P_CONTENT);
		dto.setP_FILE(P_FILE);
		dto.setP_DT(P_DT);
		
		T_POSTDAO dao = new T_POSTDAO();

		int row = dao.writeUpdate(dto);

		String nextView = "";
		
		if (row > 0) {
			nextView = "redirect:/goPostDetail.do?u_id=" + U_ID;
			session.setAttribute("user", dto);
		} else {
			nextView = "redirect:/goPostDetail.do?u_id=" + U_ID;
		}

		return nextView;
	}

}

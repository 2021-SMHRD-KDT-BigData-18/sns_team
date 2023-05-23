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

public class WriteUpdateCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String path = request.getServletContext().getRealPath("P_FILE");
		System.out.println(path);

		int maxSize = 10 * 1024 * 1024;
		
		String encoding = "UTF-8";
		
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);
		
		
		String P_TITLE = multi.getParameter("title");
		System.out.println(multi.getParameter("title"));
		String P_CONTENT = multi.getParameter("content");
		System.out.println(multi.getParameter("content"));
		//String P_DT = request.getParameter("P_DT");

		int p_id = Integer.parseInt(request.getParameter("p_id"));
		System.out.println(Integer.parseInt(request.getParameter("p_id")));
		
		HttpSession session = request.getSession();
		T_USER user = (T_USER)session.getAttribute("user");
		String U_ID = user.getU_ID();
		
		T_POST dto = new T_POST();
		dto.setP_TITLE(P_TITLE);
		dto.setP_SEQ(p_id);
		dto.setP_CONTENT(P_CONTENT);
		//dto.setP_DT(P_DT);
		dto.setU_ID(U_ID);
		
		T_POSTDAO dao = new T_POSTDAO();

		int row = dao.writeUpdate(dto);

		String nextView = "";
		
		if (row > 0) {
			nextView = "redirect:/goPostDetail.do?p_id=" + p_id;
		} else {
			nextView = "redirect:/goPostDetail.do?p_id=" + p_id;
		}
		//session.setAttribute("user", dto);
		
		return nextView;
	}

}

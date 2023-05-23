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

public class WritePostCon implements Controller {

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
		String P_CONTENT = multi.getParameter("content");
		String U_ID = ((T_USER)request.getSession().getAttribute("user")).getU_ID();
		
		String P_FILE = multi.getFilesystemName("filename");
//		if(multi.getParameter("filename")==null) {
//			P_FILE=null;
//		}
		if(multi.getFilesystemName("filename")==null) {
			P_FILE=null;
		}
		
		T_POST dto = new T_POST();
		dto.setP_TITLE(P_TITLE);
		dto.setP_CONTENT(P_CONTENT);
		dto.setP_FILE(P_FILE);
		dto.setU_ID(U_ID);
		
		T_POSTDAO dao = new T_POSTDAO();
		
		dao.write(dto);
				
		return "redirect:/goMain.do";
	}

}

package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.smhrd.dao.T_USERDAO;
import kr.smhrd.entity.T_POST;
import kr.smhrd.entity.T_USER;

public class ChangeProfCon implements Controller {

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
		
		T_USER user = (T_USER)request.getSession().getAttribute("user");
		String nick = multi.getParameter("nick");
		String pw = multi.getParameter("pw");
		String U_ID = user.getU_ID();
		String P_FILE = multi.getFilesystemName("filename");
		if(multi.getFilesystemName("filename")==null) {
			P_FILE=null;
		}
		
		T_USER dto = new T_USER();
		if(nick==null) {
			dto.setU_NICK(user.getU_NICK());
		}
		else {
			dto.setU_NICK(nick);			
		}
		if(pw==null) {
			dto.setU_PW(user.getU_PW());
		}
		else {
			dto.setU_PW(pw);			
		}
		if(P_FILE==null) {
			dto.setU_PROFILE_IMG(user.getU_PROFILE_IMG());
		}
		else {
			dto.setU_PROFILE_IMG(P_FILE);			
		}
		dto.setU_ID(U_ID);
		
		T_USERDAO dao = new T_USERDAO();
		
		int res = dao.changeProf(dto);
		
		if(res!=0) {
			request.getSession().setAttribute("user", dto);
		}
		
		
		String u_id=((T_USER)request.getSession().getAttribute("user")).getU_ID();
		return "redirect:/goMypage.do?u_id="+u_id;
	}

}

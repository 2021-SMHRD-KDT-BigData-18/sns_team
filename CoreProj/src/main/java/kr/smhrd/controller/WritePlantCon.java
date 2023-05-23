package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.smhrd.dao.T_PLANTDAO;
import kr.smhrd.dao.T_POSTDAO;
import kr.smhrd.entity.T_PLANT;
import kr.smhrd.entity.T_POST;
import kr.smhrd.entity.T_USER;

public class WritePlantCon implements Controller {

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
		
		String PL_NAME = multi.getParameter("title");
		String PL_DESC = multi.getParameter("content");
		String PL_CATE = multi.getParameter("pl_cate");
		String PL_START = multi.getParameter("start_dt");
		String U_ID = ((T_USER)request.getSession().getAttribute("user")).getU_ID();
		
		String PL_FILE = multi.getFilesystemName("filename");
		if(multi.getFilesystemName("filename")==null) {
			PL_FILE=null;
		}
		
		T_PLANT dto = new T_PLANT();
		dto.setPL_NAME(PL_NAME);
		dto.setPL_DESC(PL_DESC);
		dto.setPL_IMG(PL_FILE);
		dto.setU_ID(U_ID);
		dto.setPL_CATE(PL_CATE);
		dto.setPL_START_DT(PL_START);
		
		T_PLANTDAO dao = new T_PLANTDAO();
		
		int res = dao.writePlant(dto);

		return "redirect:/goMypage.do?u_id="+U_ID;
	}

}

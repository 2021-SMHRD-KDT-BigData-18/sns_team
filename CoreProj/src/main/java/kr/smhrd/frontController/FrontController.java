package kr.smhrd.frontController;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.smhrd.controller.Controller;
import kr.smhrd.controller.GoMainCon;
import kr.smhrd.controller.GoStartCon;

// 모든 요청을 받을 수 있도록 url-mapping을 *로 지정
// @WebServlet("*.do") ---> .do로 끝나는 모든 요청
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	
	private HashMap<String, Controller> mappings;
	
	@Override
	public void init() throws ServletException {
		// Servlet이 메모리에 할당 됐을 때,
		// 단 1번 실행
		// Servlet에서 필요한 변수를 세팅, 내부 값 초기화
		
		// URL-Mapping <--> POJO
		// HashMap 자료구조 (python dict)
		// key : value
		// URL-Mapping : POJO
		
		mappings = new HashMap<String, Controller>();
		
		// hashmap에 데이터 집어넣기
//		mappings.put("/goMain.do", new GoMainCon());
//		mappings.put("/goSuccess.do", new GoSuccessCon());
//		mappings.put("/join.do", new JoinCon());
//		mappings.put("/login.do", new LoginCon());
//		mappings.put("/logout.do", new LogoutCon());
		mappings.put("/goMain.do", new GoMainCon());
		mappings.put("/goStart.do", new GoStartCon());
	}
	
	
	
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// http://localhost:8081/MessageSystem/join

		// 1. 요청 구분
		// /MessageSystem/join
		String uri = request.getRequestURI();

		// /MessageSystem
		String cpath = request.getContextPath();

		// /join
		// String.subString(); ---> 슬라이싱
		// 안녕하세요.
		// String.subString(2); ---> ("하세요.")
		// String.subString(2,3); ---> ("하")
		String command = uri.substring(cpath.length());

		System.out.println(command);

		// =================================================

		String nextView = null;
		Controller con = null; // 업캐스팅을 이용한 중복제거

		// 2. 요청에 따라서 기능을 실행
		// 각 url mapping에 따라 알맞는 POJO를 찾기
		
		con = mappings.get(command);


		// ===============================================================

		if (con != null) {

			nextView = con.execute(request, response);

		}

		// 3. 페이지 이동
		// 예외처리용
		if (nextView != null) {
			// redirect / forward 구분하기 위해서 규칙필요
			// 앞으로 redirect 요청은 반드시 앞에 redirect:/를 붙이자.
			// goMain.do --> redirect:/goMain.do
			if (nextView.contains("redirect:/")) {
				response.sendRedirect(nextView.split(":/")[1]);
			} else {
//				RequestDispatcher rd = request.getRequestDispatcher(nextView + ".jsp");
				RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/" + nextView + ".jsp");
				rd.forward(request, response);
			}

		}

	}

}

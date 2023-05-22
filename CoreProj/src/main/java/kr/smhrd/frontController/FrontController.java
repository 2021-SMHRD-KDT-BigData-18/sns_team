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

import kr.smhrd.controller.BookmarkCon;
import kr.smhrd.controller.Controller;
import kr.smhrd.controller.DelCmtCon;
import kr.smhrd.controller.DelFriendCon;
import kr.smhrd.controller.DupIDCheckCon;
import kr.smhrd.controller.FollowCon;
import kr.smhrd.controller.FriendSelectCon;
import kr.smhrd.controller.GoChatCon;
import kr.smhrd.controller.GoChatListCon;
import kr.smhrd.controller.GoLoginCon;
import kr.smhrd.controller.GoMainCon;
import kr.smhrd.controller.GoMainPostCon;
import kr.smhrd.controller.GoMypageCon;
import kr.smhrd.controller.GoPlantPageCon;
import kr.smhrd.controller.GoPostDetailCon;
import kr.smhrd.controller.GoProfileUpdateCon;
import kr.smhrd.controller.GoSavePostCon;
import kr.smhrd.controller.GoWritePlantCon;
import kr.smhrd.controller.GoWritePostCon;
import kr.smhrd.controller.WritePostCon;
import kr.smhrd.controller.WriteUpdateCon;
import kr.smhrd.controller.JoinCon;
import kr.smhrd.controller.LikeCon;
import kr.smhrd.controller.LikeUpdateMinusCon;
import kr.smhrd.controller.LikeUpdatePlusCon;
import kr.smhrd.controller.LoadBookmarkCon;
import kr.smhrd.controller.LoadChatListCon;
import kr.smhrd.controller.LoadCmtCon;
import kr.smhrd.controller.LoadMyPlantCon;
import kr.smhrd.controller.LoadMyPostCon;
import kr.smhrd.controller.LoginCon;
import kr.smhrd.controller.LogoutCon;
import kr.smhrd.controller.WriteCmtCon;
import kr.smhrd.controller.WriteDeleteCon;
import kr.smhrd.controller.WritePlantCon;

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
		mappings.put("/goLogin.do", new GoLoginCon());
		mappings.put("/login.do", new LoginCon());
		mappings.put("/join.do", new JoinCon());
		mappings.put("/goMain.do", new GoMainCon());
		mappings.put("/goMypage.do", new GoMypageCon());
		mappings.put("/goChatList.do", new GoChatListCon());
		mappings.put("/check.do", new DupIDCheckCon());
		mappings.put("/join.do.do", new JoinCon());
		mappings.put("/goMainPost.do", new GoMainPostCon());
		mappings.put("/goWritePost.do", new GoWritePostCon());
		mappings.put("/writePost.do", new WritePostCon());
		mappings.put("/goPostDetail.do", new GoPostDetailCon());
		mappings.put("/logout.do", new LogoutCon());
		mappings.put("/friendSelect.do", new FriendSelectCon());
		mappings.put("/loadChatList.do", new LoadChatListCon());
		mappings.put("/loadCmt.do", new LoadCmtCon());
		mappings.put("/writeCmt.do", new WriteCmtCon());
		mappings.put("/goChat.do", new GoChatCon());
		mappings.put("/likeUpdatePlus.do", new LikeUpdatePlusCon());
		mappings.put("/likeUpdateMinus.do", new LikeUpdateMinusCon());
		mappings.put("/follow.do", new FollowCon());
		mappings.put("/goProfileUpdate.do", new GoProfileUpdateCon());
		mappings.put("/bookmark.do", new BookmarkCon());
		mappings.put("/loadBookmark.do", new LoadBookmarkCon());
		mappings.put("/like.do", new LikeCon());
		mappings.put("/delCmt.do", new DelCmtCon());
		mappings.put("/goSavePost.do", new GoSavePostCon());
		mappings.put("/goWritePlant.do", new GoWritePlantCon());

		mappings.put("/goPlantPage.do", new GoPlantPageCon());

		mappings.put("/loadMyPost.do", new LoadMyPostCon());
		mappings.put("/loadMyPlant.do", new LoadMyPlantCon());
		mappings.put("/delFriend.do", new DelFriendCon());
		mappings.put("/writeDelete.do", new WriteDeleteCon());
		mappings.put("/writeUpdate.do", new WriteUpdateCon());

		mappings.put("/writePlant.do", new WritePlantCon());
		
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

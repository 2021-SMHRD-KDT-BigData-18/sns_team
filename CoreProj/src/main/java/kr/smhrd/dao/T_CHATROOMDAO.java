package kr.smhrd.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.smhrd.entity.T_CHATTING;

public class T_CHATROOMDAO {

	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	public int searchRoom(String u_id, String f_id) {

		SqlSession session = factory.openSession(true);

		Map<String,String>map = new HashMap<String,String>();
		map.put("U_ID", u_id);
		map.put("F_ID", f_id);
		
		int search_res = session.selectOne("searchRoom",map);
		if(search_res==0) {
			session.insert("createCR",map);
		}
		int res = session.selectOne("selectRoom",map);
		

		session.close();
		
		return res;


	}
	
	public T_CHATTING loadLastChat(int roomId) {
		SqlSession session = factory.openSession(true);

		T_CHATTING dto = session.selectOne("loadLastChat",roomId);

		session.close();
		
		return dto;
	}
	
	
	public void delChatroom(String u_id, String f_id) {
		SqlSession session = factory.openSession(true);
		
		Map<String,String>map = new HashMap<String,String>();
		map.put("U_ID", u_id);
		map.put("F_ID", f_id);

		session.delete("delCR",map);

		session.close();
	}
	
	
}

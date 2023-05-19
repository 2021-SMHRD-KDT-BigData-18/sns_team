package kr.smhrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.smhrd.entity.T_CHATTING;

public class T_CHATTINGDAO {
	
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	public List<T_CHATTING> list(int roomId) {

		SqlSession session = factory.openSession(true);

		List<T_CHATTING> list = session.selectList("loadChat",roomId);

		session.close();

		return list;

	}
	
	public int chat(T_CHATTING dto) {
		SqlSession session = factory.openSession(true);

		int res = session.insert("chat",dto);

		session.close();

		return res;
	}
}

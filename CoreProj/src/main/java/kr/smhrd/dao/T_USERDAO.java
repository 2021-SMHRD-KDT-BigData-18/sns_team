package kr.smhrd.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.smhrd.entity.T_USER;

public class T_USERDAO {

	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public void join(T_USER dto) {
		SqlSession session = factory.openSession(true);
		
		
	}
	
	public T_USER login(T_USER dto) {
		SqlSession session = factory.openSession(true);
		T_USER user = session.selectOne("login", dto);
		session.close();
		return user;
		
	}
	
}

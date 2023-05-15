package kr.smhrd.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.smhrd.entity.T_USER;

public class T_USERDAO {

	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public boolean join(T_USER dto) {
		SqlSession session = factory.openSession(true);
		
		int row = session.insert("join",dto);
		
		session.close();
		
		if(row!=0) {
			return true;
		}
		else {
			return false;
		}
		
	}
	
	public T_USER login(T_USER dto) {
		SqlSession session = factory.openSession(true);
		T_USER user = session.selectOne("login", dto);
		session.close();
		return user;
		
	}
	
	public T_USER dup_check(String U_ID) {
		SqlSession session = factory.openSession(true);
		T_USER user = session.selectOne("search", U_ID);
		session.close();
		return user;
	}
	
}

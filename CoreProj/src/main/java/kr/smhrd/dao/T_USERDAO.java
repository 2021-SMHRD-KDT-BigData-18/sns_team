package kr.smhrd.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.smhrd.entity.T_USER;

public class T_USERDAO {

	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public boolean join(T_USER dto) {
		SqlSession session = factory.openSession(true);
		
		int row = session.insert("join",dto);
		
		if(row!=0) {
			return true;
		}
		else {
			return false;
		}
	}

}

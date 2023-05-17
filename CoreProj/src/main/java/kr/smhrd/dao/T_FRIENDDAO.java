package kr.smhrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.smhrd.entity.T_FRIEND;

public class T_FRIENDDAO {
	
	
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	public List<T_FRIEND> friendSelect(String U_ID) {

		SqlSession session = factory.openSession(true);
		List<T_FRIEND> list = session.selectList("friendSelect", U_ID);
		session.close();
		return list;
	}
}

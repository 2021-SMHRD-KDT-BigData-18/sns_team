package kr.smhrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.smhrd.entity.T_POST;

public class T_POSTDAO {

	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	public List<T_POST> list() {
		
		SqlSession session = factory.openSession(true);
		
		List<T_POST> list = session.selectList("list");
		
		session.close();
		
		return list;
		
	}
	
	
	
}

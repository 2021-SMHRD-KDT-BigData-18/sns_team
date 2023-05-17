package kr.smhrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.smhrd.entity.T_COMMENT;

public class T_COMMENTDAO {

	
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	public List<T_COMMENT> cmtLoad() {

		SqlSession session = factory.openSession(true);

		List<T_COMMENT> list = session.selectList("cmtLoad");

		session.close();

		return list;

	}
	
	public int cmtWrite(T_COMMENT dto) {
		SqlSession session = factory.openSession(true);

		int res = session.insert("cmtWrite",dto);

		session.close();

		return res;
	}
	
}

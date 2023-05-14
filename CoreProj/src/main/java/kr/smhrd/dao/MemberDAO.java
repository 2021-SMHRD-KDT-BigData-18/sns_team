package kr.smhrd.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.smhrd.entity.Member;

public class MemberDAO {

	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public void join(Member dto) {
		SqlSession session = factory.openSession();
		
		
	}

}

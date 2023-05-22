package kr.smhrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.smhrd.entity.T_POST;

public class T_PLANTDAO {

	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public List<T_POST> loadMyPlant(String u_id) {

		SqlSession session = factory.openSession(true);
		List<T_POST> list = session.selectList("loadMyPlant", u_id);

		session.close();

		return list;
	}

}

package kr.smhrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.smhrd.entity.T_PLANT;
import kr.smhrd.entity.T_POST;

public class T_PLANTDAO {

	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	
	public int writePlant(T_PLANT dto) {

		SqlSession session = factory.openSession(true);
		int res = session.insert("writePlant", dto);

		session.close();

		return res;
	}
	
	public T_PLANT searchPlantWithId(int pl_id) {

		SqlSession session = factory.openSession(true);
		T_PLANT res = session.selectOne("searchPlantWithId", pl_id);

		session.close();

		return res;
	}
	
	

	public List<T_PLANT> loadMyPlant(String u_id) {

		SqlSession session = factory.openSession(true);
		List<T_PLANT> list = session.selectList("loadMyPlant", u_id);

		session.close();

		return list;
	}

}

package kr.smhrd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.smhrd.entity.T_POST;

public class T_POSTDAO {

	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public List<T_POST> list() {

		SqlSession session = factory.openSession(true);

		List<T_POST> list = session.selectList("loadPosts");

		session.close();

		return list;

	}

	public int write(T_POST dto) {

		SqlSession session = factory.openSession(true);

		int row = session.insert("write", dto);

		session.close();

		return row;
	}

	public T_POST searchWithId(int p_id) {

		SqlSession session = factory.openSession(true);

		T_POST post = session.selectOne("searchWithId", p_id);

		session.close();

		return post;
	}
	
	public int likeUpdatePlus(T_POST dto) {
		
		SqlSession session = factory.openSession(true);
		
		int row = session.update("likeUpdatePlus", dto);
		
		session.close();
		
		return row;
	}
	
	public int likeUpdateMinus(T_POST dto) {
		
		SqlSession session = factory.openSession(true);
		
		int row = session.update("likeUpdateMinus", dto);
		
		session.close();
		
		return row;
	}
	
	public int checkPlus(int p_id) {
		
		SqlSession session = factory.openSession(true);
		
		int row = session.update("checkPlus", p_id);
		
		session.close();
		
		return row;
	}

	public int writeUpdate(T_POST dto) {
		
		SqlSession session = factory.openSession(true);
		
		int row = session.update("writeUpdate", dto);
		
		session.close();
		
		return row;
	} 
	
	public int writeDelete(String P_SEQ) {
		
		SqlSession session = factory.openSession(true);
		
		int row = session.delete("writeDelete", P_SEQ);
		
		session.close();
		
		return row;
	}
	
	public List<T_POST> loadMyPost(String u_id){
		
		SqlSession session = factory.openSession(true);
		List<T_POST> list = session.selectList("loadMyPost", u_id);
		
		session.close();
		
		return list;
	}
}

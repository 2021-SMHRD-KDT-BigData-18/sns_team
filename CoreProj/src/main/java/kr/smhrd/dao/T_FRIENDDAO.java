package kr.smhrd.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.smhrd.entity.T_FRIEND;

public class T_FRIENDDAO {
	
	
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	public List<T_FRIEND> friendSelect(String U_ID){

		SqlSession session = factory.openSession(true);
		List<T_FRIEND> list = session.selectList("friendSelect", U_ID);
		session.close();
		if(U_ID == null) {
			return null;
		}else {	
			return list;			
		}
	}
	
	public boolean checkFollow(String u_id,String f_id) {
		SqlSession session = factory.openSession(true);
		Map<String,String>map = new HashMap<String,String>();
		map.put("U_ID", u_id);
		map.put("F_ID", f_id);
		int res = session.selectOne("checkFollow",map);
		session.close();
		
		if(res==0) {
			return false;
		}
		else {
			return true;
		}
	}
	
	
	public void follow(String U_ID, String F_ID) {
		SqlSession session = factory.openSession(true);
		Map<String,String>map = new HashMap<String,String>();
		map.put("U_ID", U_ID);
		map.put("F_ID", F_ID);
		int l = session.insert("follow",map);
		int r = session.insert("followR",map);
		if(l!=0&&r!=0) {
			System.out.println("follow ok!");
		}
		session.close();
	}
}

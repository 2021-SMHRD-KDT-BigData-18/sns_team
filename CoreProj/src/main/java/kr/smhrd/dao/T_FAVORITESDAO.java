package kr.smhrd.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class T_FAVORITESDAO {
	
	
	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	public int addFavorites(String p_id, String u_id) {

		SqlSession session = factory.openSession(true);

		Map<String,String>map = new HashMap<String,String>();
		map.put("P_ID", p_id);
		map.put("U_ID", u_id);
		int res;
		
		int search_res = session.selectOne("checkFavorites",map);
		if(search_res==0) {
			session.insert("addFavorites",map);
			res=1;
		}else {
			session.delete("deleteFavorites",map);
			res=2;
		}
		session.close();
		
		return res;

	}
	
}

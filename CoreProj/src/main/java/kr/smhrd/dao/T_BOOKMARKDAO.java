package kr.smhrd.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.smhrd.entity.T_POST;

public class T_BOOKMARKDAO {
	
private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	public int addBookmark(String p_id, String u_id) {

		SqlSession session = factory.openSession(true);

		Map<String,String>map = new HashMap<String,String>();
		map.put("P_ID", p_id);
		map.put("U_ID", u_id);
		int res;
		
		int search_res = session.selectOne("checkBookmark",map);
		if(search_res==0) {
			session.insert("addBookmark",map);
			res=1;
		}else {
			session.delete("deleteBookmark",map);
			res=2;
		}
		session.close();
		
		return res;

	}
	
	public List<T_POST> loadBookmark(String u_id){
		
		SqlSession session = factory.openSession(true);

		List<T_POST> list = session.selectList("loadBookmark",u_id);

		session.close();

		return list;
		
	}
	
	
}

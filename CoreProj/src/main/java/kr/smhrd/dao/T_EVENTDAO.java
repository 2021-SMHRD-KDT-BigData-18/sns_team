package kr.smhrd.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.google.gson.Gson;

import kr.smhrd.entity.LoadedEvent;
import kr.smhrd.entity.T_EVENT;

public class T_EVENTDAO {

	private SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	public int addEvent(T_EVENT dto) {
		SqlSession session = factory.openSession(true);

		int res = session.insert("addEvent",dto);
		
		session.close();
		
		return res;
	}
	
	public String getEvents(int pl_id) {
		SqlSession session = factory.openSession(true);

		List<T_EVENT> res = session.selectList("getEvent",pl_id);
		
		session.close();
		
		List<LoadedEvent> list = new ArrayList<>();
		
		for(T_EVENT vo : res) {
			LoadedEvent evt = new LoadedEvent();
			evt.setTitle(vo.getEVENT());
			evt.setStart(vo.getDT_START().split(" ")[0]);
			evt.setEnd(vo.getDT_END().split(" ")[0]);
			list.add(evt);
		}
		
		Gson gson = new Gson();
		String json = gson.toJson(list);

		System.out.println(json);
		
		
		return json;
	}
	
}

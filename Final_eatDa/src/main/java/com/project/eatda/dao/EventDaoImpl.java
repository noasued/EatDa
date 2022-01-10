package com.project.eatda.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.eatda.dto.EventDto;

@Repository
public class EventDaoImpl implements EventDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<EventDto> eventList() {
		List<EventDto> list = new ArrayList<EventDto>();
		try {
			list = sqlSession.selectList(NAMESPACE+"eventList");
		} catch (Exception e) {
			System.out.println("[error] : event list");
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public EventDto selectOne(int event_no) {
		EventDto dto = null;
		try {
			dto = sqlSession.selectOne(NAMESPACE+"eventDetail", event_no);
		} catch (Exception e) {
			System.out.println("[error] : event detail");
			e.printStackTrace();
		}
		return dto;
	}
	
	@Override
	public int insert(EventDto dto) {
		int res = 0;
		try {
			res = sqlSession.insert(NAMESPACE+"eventInsert",dto);
		} catch (Exception e) {
			System.out.println("[error] : insert");
			e.printStackTrace();
		}
		return res;
	}
	
	@Override
	public int update(EventDto dto) {
		int res = 0;
		try {
			res = sqlSession.update(NAMESPACE+"eventUpdate",dto);
			System.out.println("update dao : update event where event_no : "+dto.getEvent_no());
		} catch (Exception e) {
			System.out.println("[error] : update");
			e.printStackTrace();
		}
		return res;
	}
	
	@Override
	public int selectEventNo(String event_title) {
		EventDto dto = null;
		try {
			dto = sqlSession.selectOne(NAMESPACE+"selectEventNo",event_title);
		} catch (Exception e) {
			System.out.println("[error] : selectEventNo");
			e.printStackTrace();
		}
		return dto.getEvent_no();
	}
	
	@Override
	public int delete(int event_no) {
		int res = 0;
		try {
			res = sqlSession.delete(NAMESPACE+"eventDelete",event_no);
			System.out.println("delete dao : delete event where event_no:"+event_no);
		} catch (Exception e) {
			System.out.println("[error] : delete");
			e.printStackTrace();
		}
		return res;
	}

	
	/* 관리자 이벤트 진행 현황 */
	@Override
	public int adminEventStatus(EventDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.update(NAMESPACE+"adminEventStatus",dto);
		} catch (Exception e) {
			System.out.println("[error] : event status update");
			e.printStackTrace();
		}
		return res;
	}
}

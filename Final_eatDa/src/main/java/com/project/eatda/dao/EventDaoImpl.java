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
}

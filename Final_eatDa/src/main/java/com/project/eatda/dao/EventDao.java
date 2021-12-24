package com.project.eatda.dao;

import java.util.List;

import com.project.eatda.dto.EventDto;

public interface EventDao {
	String NAMESPACE = "event.";
	public List<EventDto> eventList();
	public EventDto selectOne(int event_no);
	public int insert(EventDto dto);
	public int delete(int event_no);
	
	
	public int selectEventNo(String event_title);
}

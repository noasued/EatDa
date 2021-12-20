package com.project.eatda.biz;

import java.util.List;

import com.project.eatda.dto.EventDto;

public interface EventDao {
	String NAMESPACE = "event.";
	public List<EventDto> eventList();
}

package com.project.eatda.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.eatda.biz.EventBiz;
import com.project.eatda.dto.EventDto;

@Controller
public class EventController {
	private Logger logger = LoggerFactory.getLogger(EventController.class);
	
	@Autowired
	private EventBiz biz;
	
	// 이벤트 메인 겸 리스트
	@RequestMapping("/event.do")
	public String list(Model model) {
		logger.info("Event list page");
		model.addAttribute("list", biz.eventList());
		return "/event/event-main";
	}
	
	// 이벤트 상세 보기
	@RequestMapping("/event-detail.do")
	public String detail(Model model, int event_no) {
		logger.info("Event detail page");
		System.out.println("event.do : "+event_no);
		model.addAttribute("dto", biz.selectOne(event_no));
		return "/event/event-detail";
	}
	
	// 글 작성 페이지
	@RequestMapping(value="/event-writeform.do", method=RequestMethod.GET)
	public String write() {
		logger.info("Event write form page");
		return "/event/event-write";
	}
	
	@RequestMapping("/event-write.do")
	public String write(EventDto dto) {
		logger.info("Event write page - post");
		System.out.println(dto.toString());
		biz.insert(dto);
		int res = biz.selectEventNo(dto.getEvent_title());
		
		return "redirect:event-detail.do?event_no="+res;
		
	}
	
	// 글 수정 페이지
	@RequestMapping("/event-update.do")
	public String eventUpdate() {
		System.out.println("event-update page");
		return "/event/event-update";
	}
	
	// 글 삭제
	@RequestMapping(value="/event-delete.do", method=RequestMethod.GET)
	public String delete(int event_no) {
		logger.info("Event delete: event_no -> "+event_no);
		biz.delete(event_no);
		return "redirect:event.do";
	}

}

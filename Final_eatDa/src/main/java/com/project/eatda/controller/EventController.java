package com.project.eatda.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.eatda.biz.EventBiz;

@Controller
public class EventController {
	private Logger logger = LoggerFactory.getLogger(EventController.class);
	
	@Autowired
	private EventBiz biz;
	
	@RequestMapping("/event.do")
	public String list(Model model) {
		logger.info("Event list page");
		model.addAttribute("list", biz.eventList());
		return "/event/event-main";
	}
	
	@RequestMapping("/event-detail.do")
	public String eventDetail() {
		System.out.println("event-detail page");
		return "/event/event-detail";
	}
	
	@RequestMapping("/event-update.do")
	public String eventUpdate() {
		System.out.println("event-update page");
		return "/event/event-update";
	}
	
	@RequestMapping("/event-write.do")
	public String eventWrite() {
		System.out.println("event-write page");
		return "/event/event-write";
	}
	

}

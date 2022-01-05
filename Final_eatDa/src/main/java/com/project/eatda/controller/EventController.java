package com.project.eatda.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		int eventNo = biz.selectEventNo(dto.getEvent_title());
		
		return "redirect:event-detail.do?event_no=" + eventNo;
		
	}
	
	// 글 수정 페이지
	@RequestMapping(value="/event-updateform.do", method=RequestMethod.GET)
	public String updateForm(Model model, int event_no) {
		logger.info("Event update form page");
		System.out.println("update -> "+event_no);
		EventDto dto = biz.selectOne(event_no);
		model.addAttribute("dto", dto);
		System.out.println(dto.toString());
		return "/event/event-update";
	}
	
	@RequestMapping(value="/event-update.do",method=RequestMethod.GET)
	public String update(EventDto dto) {
		logger.info("Event update result - post");
		System.out.println(dto.toString());
		biz.update(dto);
		
		return "redirect:event-detail.do?event_no="+dto.getEvent_no();
	}
	
	// 글 삭제
	@RequestMapping(value="/event-delete.do", method=RequestMethod.GET)
	public String delete(int event_no) {
		logger.info("Event delete: event_no -> "+event_no);
		biz.delete(event_no);
		return "redirect:event.do";
	}
	
	// 관리자 이벤트 리스트 삭제
	@RequestMapping(value="/adminEventDelete.do", method=RequestMethod.GET)
	public String adminReplyDelete(Model model, HttpServletRequest httpServletRequest){
		System.out.println("admin event delete");
		
		String[] chk  = httpServletRequest.getParameterValues("RowCheck[]");
		System.out.println(chk);
		String rss = "";
		int chk_length = chk.length;
		System.out.println(chk_length);
		
		for(int i = 0; i < chk_length; i++) {
			System.out.println(chk[i]);
			biz.delete(Integer.parseInt(chk[i]));
		}
		
		return "redirect:/adminPostEvent.do";
	}

}

package com.project.eatda.controller;

import java.util.concurrent.ExecutionException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.eatda.biz.MemberBiz;
import com.project.eatda.dto.UserDto;

@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
	MemberBiz memberBiz;
	
	//회원가입 폼
	@RequestMapping("/regist_form.do")
	public String mypageMain() {
		System.out.println("regist_form page");
		return "/login/login_regist_form";
	}
	
	//아이디 중복체크
	@ResponseBody
	@RequestMapping(value="/idCheck.do", method=RequestMethod.POST)
	public int idCheck(UserDto dto) throws Exception{
		System.out.println("id_check");
		int result = memberBiz.idCheck(dto);
		return result;
	}
	
	//회원가입
	@RequestMapping("/regist.do")
	public String regist() {
		return null;
	}
	
	//로그인
	@RequestMapping("/loginCheck.do")
	public ModelAndView loginCheck(@ModelAttribute UserDto dto, HttpSession session) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		UserDto dto2 = memberBiz.loginCheck(dto, session);
		
		//로그인 실패
		if(dto2 == null) {	
			
			mav.setViewName("../../index");
			mav.addObject("msg", "fail");
			
		//사용자
		}else if(dto2.getUser_role().equals("USER")) {
			session.setAttribute("member", dto2);
			mav.setViewName("../../index");
			mav.addObject("msg", "success");
		
		//관리자
		}else if(dto2.getUser_role().equals("ADMIN")){
			session.setAttribute("member", dto2);
			mav.setViewName("/admin/adminMain");
		}
		
		return mav;
	}
	
	//로그아웃
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session) {
		memberBiz.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("../../index");
		mav.addObject("msg", "logout");
		
		return mav;
	}

	

}

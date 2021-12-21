package com.project.eatda.biz;

import javax.servlet.http.HttpSession;

import com.project.eatda.dto.UserDto;

public interface MemberBiz {
	
	//로그인
	public UserDto loginCheck(UserDto dto, HttpSession session) throws Exception;
	
	//로그아웃
	public void logout(HttpSession session);

}

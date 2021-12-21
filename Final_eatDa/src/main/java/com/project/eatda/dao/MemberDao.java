package com.project.eatda.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.eatda.dto.UserDto;

public interface MemberDao {
String NAMESPACE_MEMBER = "mymember.";
	
	//로그인 체크
	public UserDto loginCheck(UserDto dto) throws Exception;

	//로그아웃
	public void logout(HttpSession session);
}

package com.project.eatda.biz;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.project.eatda.dao.MemberDao;
import com.project.eatda.dto.UserDto;

@Service
public class MemberBizImpl implements MemberBiz{

	@Inject
	MemberDao memberDao;

	//로그인
	@Override
	public UserDto loginCheck(UserDto dto, HttpSession session) throws Exception {	
		
		return memberDao.loginCheck(dto);
	}

	//로그아웃
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

	//아이디 중복체크
	@Override
	public int idCheck(UserDto dto) throws Exception {
		return memberDao.idCheck(dto);
	}
	
	
	

}

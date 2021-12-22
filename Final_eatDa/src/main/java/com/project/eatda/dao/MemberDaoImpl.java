package com.project.eatda.dao;


import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.eatda.dto.UserDto;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Inject
	SqlSession sqlSession;

	//로그인
	@Override
	public UserDto loginCheck(UserDto dto) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE_MEMBER + "loginCheck", dto);
	}

	//로그아웃
	@Override
	public void logout(HttpSession session) {
		
	}
	

}

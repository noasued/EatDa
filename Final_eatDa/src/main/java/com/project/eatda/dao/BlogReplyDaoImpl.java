package com.project.eatda.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.eatda.dto.BlogReplyDto;

@Repository
public class BlogReplyDaoImpl implements BlogReplyDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 댓글 목록
	@Override
	public List<BlogReplyDto> list(int blog_no) {
		System.out.println("[dao] reply list");
		return sqlSession.selectList(NAMESPACE+"listReply", blog_no);
	}
	
	// 댓글 작성
	@Override
	public int insert(BlogReplyDto dto) {
		int res = 0;
		System.out.println("[dao] reply insert");
		try {
			res = sqlSession.insert(NAMESPACE+"insertReply", dto);
			System.out.println("[dao] insert result : "+dto);
		} catch (Exception e) {
			System.out.println("[error] : insert reply");
			e.printStackTrace();
		}
		return res;
	}
	
	// 댓글 수정
	@Override
	public void update(BlogReplyDto dto) {
		
	}
	
	// 댓글 삭제
	@Override
	public void delete(int reply_no) {
		
	}


}

package com.project.eatda.dao;

import java.util.List;

import com.project.eatda.dto.BlogReplyDto;

public interface BlogReplyDao {
	String NAMESPACE = "reply.";
	
	public List<BlogReplyDto> list(int blog_no);		// 댓글 목록
	public void insert(BlogReplyDto dto);			// 댓글 입력
	public void update(BlogReplyDto dto);			// 댓글 수정
	public void delete(int reply_no);				// 댓글 삭제
	
}
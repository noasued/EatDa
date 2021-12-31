package com.project.eatda.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.eatda.dao.BlogReplyDao;
import com.project.eatda.dto.BlogReplyDto;

@Service
public class BlogReplyBizImpl implements BlogReplyBiz{
	
	@Autowired
	public BlogReplyDao replyDao;
	
	// 댓글 목록
	@Override
	public List<BlogReplyDto> list(int blog_no) {
		return replyDao.list(blog_no);
	}
	
	// 댓글 작성
	@Override
	public void insert(BlogReplyDto dto) {
		replyDao.insert(dto);
	}

	// 댓글 수정
	@Override
	public void update(BlogReplyDto dto) {
		
	}
	
	// 댓글 삭제
	@Override
	public void delete(int reply_no) {
		
	}

	/* 관리자 댓글 리스트 (전체 조회) */
	@Override
	public List<BlogReplyDto> adminReplyList() {
		return replyDao.adminReplyList();
	}

}

package com.project.eatda.biz;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.eatda.dao.BlogLikeDao;
import com.project.eatda.dto.BlogLikeDto;

@Service
public class BlogLikeBizImpl implements BlogLikeBiz{
	
	@Autowired
	private BlogLikeDao likeDao;
	
	@Override
	public int countLike(HashMap hashMap) {
		int count = likeDao.countLike(hashMap);
		return count;
	}

	@Override
	public int create(HashMap hashMap) {
		int count = likeDao.create(hashMap);
		return count;
	}

	@Override
	public int like_check(HashMap hashMap) {
		int count = likeDao.like_check(hashMap);
		return count;
	}

	@Override
	public int like_check_cancel(HashMap hashMap) {
		int count = likeDao.like_check_cancel(hashMap);
		return count;
	}

	@Override
	public BlogLikeDto read(HashMap hashMap) {
		BlogLikeDto likeDto = likeDao.read(hashMap);
		return likeDto;
	}

	@Override
	public int deletebyBlogno(int blog_no) {
		int count = likeDao.deletebyBlogno(blog_no);
		return count;
	}

	@Override
	public int deletebyUserid(String user_id) {
		int count = likeDao.deletebyUserid(user_id);
		return count;
	}
	
}

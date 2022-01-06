package com.project.eatda.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.eatda.dto.BlogLikeDto;

@Repository
public class BlogLikeDaoImpl implements BlogLikeDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int countLike(HashMap hashMap) {
		int count = sqlSession.selectOne(BLOGLIKE_NAMESPACE+"countLike", hashMap);
		return count;
	}

	@Override
	public int create(HashMap hashMap) {
		int count = sqlSession.insert(BLOGLIKE_NAMESPACE+"create",hashMap);
		return count;
	}

	@Override
	public int like_check(HashMap hashMap) {
		int count = sqlSession.update(BLOGLIKE_NAMESPACE+"like_check",hashMap);
		return count;
	}

	@Override
	public int like_check_cancel(HashMap hashMap) {
		int count = sqlSession.update(BLOGLIKE_NAMESPACE+"like_check_cancel",hashMap);
		return count;
	}

	@Override
	public BlogLikeDto read(HashMap hashMap) {
		BlogLikeDto likeDto = sqlSession.selectOne(BLOGLIKE_NAMESPACE+"read",hashMap);
		return likeDto;
	}

	@Override
	public int deletebyBlogno(int blog_no) {
		int count = sqlSession.delete(BLOGLIKE_NAMESPACE+"deletebyBlogno",blog_no);
		return count;
	}

	@Override
	public int deletebyUserid(String user_id) {
		int count = sqlSession.delete(BLOGLIKE_NAMESPACE+"deletebyUserid",user_id);
		return count;
	}

}

package com.project.eatda.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.eatda.dto.BlogLikeDto;

@Repository
public class BlogLikeDaoImpl implements BlogLikeDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int count(int blog_no) {
		int likeCount = 0;
		try {
			likeCount = sqlSession.selectOne(BLOGLIKE_NAMESPACE+"countLike", blog_no);
			System.out.println("like count dao!");
		} catch (Exception e) {
			System.out.println("[error] like count dao");
			e.printStackTrace();
		}
		return likeCount;
	}

	@Override
	public int clickLike(BlogLikeDto likeDto) {
		int click = 0;
		try {
			click = sqlSession.insert(BLOGLIKE_NAMESPACE+"clickLike",likeDto);
			System.out.println("click like dao!");
		} catch (Exception e) {
			System.out.println("[error] click like dao");
			e.printStackTrace();
		}
		return click;
	}
	

}

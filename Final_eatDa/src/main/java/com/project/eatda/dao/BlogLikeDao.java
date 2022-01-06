package com.project.eatda.dao;

import java.util.HashMap;

import com.project.eatda.dto.BlogLikeDto;

public interface BlogLikeDao {
	
	String BLOGLIKE_NAMESPACE = "like.";
	
	public int countLike(HashMap hashMap);
	public int create(HashMap hashMap);
	
	//like 체크 여부 확인 (0->1)
	public int like_check(HashMap hashMap);
	
	//like 체크 여부 확인 (1->0)
	public int like_check_cancel(HashMap hashMap);
	
	//조회
	public BlogLikeDto read(HashMap hashMap);
	
	//게시판 좋아요 삭제
	public int deletebyBlogno(int blog_no);
	
	//사용자 좋아요 삭제
	public int deletebyUserid(String user_id);
}

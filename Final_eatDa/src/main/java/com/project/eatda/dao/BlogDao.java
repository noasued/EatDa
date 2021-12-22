package com.project.eatda.dao;

import java.util.List;

import com.project.eatda.dto.BlogDto;

public interface BlogDao {
	String NAMESPACE = "blog.";
	public List<BlogDto> blogList();
	public BlogDto selectOne(int blog_no);
	public int update(BlogDto dto);
	public int insert(BlogDto dto);
}

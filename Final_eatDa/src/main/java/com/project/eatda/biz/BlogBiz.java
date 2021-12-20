package com.project.eatda.biz;

import java.util.List;

import com.project.eatda.dto.BlogDto;

public interface BlogBiz {
	public List<BlogDto> blogList();
	public BlogDto selectOne(int blog_no);
}

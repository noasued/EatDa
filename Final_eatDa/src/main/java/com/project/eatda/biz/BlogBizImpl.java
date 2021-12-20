package com.project.eatda.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.eatda.dao.BlogDao;
import com.project.eatda.dto.BlogDto;

@Service
public class BlogBizImpl implements BlogBiz{
	
	@Autowired
	public BlogDao dao;
	
	@Override
	public List<BlogDto> blogList() {
		return dao.blogList();
	}

	
}

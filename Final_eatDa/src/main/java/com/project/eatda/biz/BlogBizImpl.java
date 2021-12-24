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
	
	@Override
	public BlogDto selectOne(int blog_no) {
		return dao.selectOne(blog_no);
	}
	
	@Override
	public int insert(BlogDto dto) {
		return dao.insert(dto);
	}
	
	@Override
	public int update(BlogDto dto) {
		System.out.println("update biz");
		return dao.update(dto);
	}
	
	@Override
	public int selectBlogNo(String blog_title) {
		return dao.selectBlogNo(blog_title);
	}
	
	@Override
	public int delete(int blog_no) {
		System.out.println("delete biz");
		return dao.delete(blog_no);
	}
}

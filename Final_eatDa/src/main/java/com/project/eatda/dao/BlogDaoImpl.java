package com.project.eatda.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.eatda.dto.BlogDto;

@Repository
public class BlogDaoImpl implements BlogDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<BlogDto> blogList(){
		List<BlogDto> list = new ArrayList<BlogDto>();
		try {
			list = sqlSession.selectList(NAMESPACE+"blogList");
		} catch (Exception e) {
			System.out.println("[error]: blog list");
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public BlogDto selectOne(int blog_no) {
		BlogDto dto = null;
		try {
			dto = sqlSession.selectOne(NAMESPACE+"blogDetail",blog_no);
		} catch (Exception e) {
			System.out.println("[error] : blog detail");
			e.printStackTrace();
		}
		return dto;
	}
	
	@Override
	public int insert(BlogDto dto) {
		int res = 0;
		try {
			res = sqlSession.insert(NAMESPACE+"blogInsert",dto);
		} catch (Exception e) {
			System.out.println("[error] : insert");
			e.printStackTrace();
		}
		return res;
	}
	
	@Override
	public int update(BlogDto dto) {
		int res = 0;
		try {
			res = sqlSession.update(NAMESPACE+"blogUpdate",dto);
			System.out.println("update dao : update blog where blog_no :"+dto.getBlog_no());
		} catch (Exception e) {
			System.out.println("[error] : update");
			e.printStackTrace();
		}
		return res;
	}
	
	@Override
	public int selectBlogNo(String blog_title) {
		BlogDto dto = null;
		try {
			dto = sqlSession.selectOne(NAMESPACE+"selectBlogNo",blog_title);
			System.out.println(dto.toString());
		} catch (Exception e) {
			System.out.println("[error] : selectBlogNo");
			e.printStackTrace();
		}
		return dto.getBlog_no();
	}
	
	@Override
	public int delete(int blog_no) {
		int res = 0;
		try {
			res = sqlSession.delete(NAMESPACE+"blogDelete",blog_no);
			System.out.println("delete dao : delete blog where blog_no :"+blog_no);
		} catch (Exception e) {
			System.out.println("[error] : delete");
			e.printStackTrace();
		}
		return res;
	}
}

package com.project.eatda.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.eatda.dto.BlogDto;
import com.project.eatda.dto.BlogReplyDto;
import com.project.eatda.dto.OrderAdminDto;
import com.project.eatda.dto.ProductDto;
import com.project.eatda.dto.ReportDto;
import com.project.eatda.dto.UserDto;

@Repository
public class AdminDaoImpl implements AdminDao{

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<ProductDto> adminProductList() {
		List<ProductDto> adminProductList = new ArrayList<ProductDto>();
		
		try {
			adminProductList = sqlSession.selectList(NAMESPACE+"adminProductList");
		} catch (Exception e) {
			System.out.println("[error] : admin product List");
			e.printStackTrace();
		}
		return adminProductList;
	}
	
	@Override
	public List<OrderAdminDto> adminOrderList() {
		List<OrderAdminDto> adminOrderList = new ArrayList<OrderAdminDto>();
		
		try {
			adminOrderList = sqlSession.selectList(NAMESPACE+"adminOrderList");
		} catch (Exception e) {
			System.out.println("[error] : admin order list");
			e.printStackTrace();
		}
		return adminOrderList;
	}

	@Override
	public List<UserDto> adminUserList() {
		List<UserDto> adminUserList = new ArrayList<UserDto>();
		
		try {
			adminUserList = sqlSession.selectList(NAMESPACE+"adminUserList");
		} catch (Exception e) {
			System.out.println("[error] : admin user List");
			e.printStackTrace();
		}
		return adminUserList;
	}

	
	@Override
	public List<ReportDto> adminReportList(){
		List<ReportDto> adminReportList = new ArrayList<ReportDto>();
		
		try {
			adminReportList = sqlSession.selectList(NAMESPACE+"adminReportList");
		} catch (Exception e) {
			System.out.println("[error : admin report list]");
			e.printStackTrace();
		}
		return adminReportList;
	}
	
}

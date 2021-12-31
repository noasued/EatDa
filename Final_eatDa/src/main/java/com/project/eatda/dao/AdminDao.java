package com.project.eatda.dao;

import java.util.List;

import com.project.eatda.dto.BlogDto;
import com.project.eatda.dto.BlogReplyDto;
import com.project.eatda.dto.OrderAdminDto;
import com.project.eatda.dto.ProductDto;
import com.project.eatda.dto.ReportDto;
import com.project.eatda.dto.UserDto;

public interface AdminDao {
	String NAMESPACE="admin.";
	
	// 상품 리스트 조회
	public List<ProductDto> adminProductList();
	
	// 주문 리스트 조회
	public List<OrderAdminDto> adminOrderList();
	
	// 회원 리스트 조회
	public List<UserDto> adminUserList();
	
	/* 관리자 신고 리스트 (전체 조회) */
	public List<ReportDto> adminReportList();
	
}

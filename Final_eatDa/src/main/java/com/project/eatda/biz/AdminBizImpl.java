package com.project.eatda.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.eatda.dao.AdminDao;
import com.project.eatda.dto.BlogDto;
import com.project.eatda.dto.BlogReplyDto;
import com.project.eatda.dto.OrderAdminDto;
import com.project.eatda.dto.ProductDto;
import com.project.eatda.dto.ReportDto;
import com.project.eatda.dto.UserDto;

@Service
public class AdminBizImpl implements AdminBiz{

	/* 댓글 리스트 */
		@Autowired
		public AdminDao replyDao;
		
		@Override
		public List<BlogReplyDto> adminReplyList() {
			return replyDao.adminReplyList();
		}
	
	/* 상품 리스트 */
		@Autowired
		public AdminDao productDao;
		
		@Override
		public List<ProductDto> adminProductList() {
			return productDao.adminProductList();
		}
	
	/* 주문 리스트 */
		@Autowired
		public AdminDao orderDao;
		
		@Override
		public List<OrderAdminDto> adminOrderList() {
			return orderDao.adminOrderList();
		}
	
	/* 회원 리스트 */	
		@Autowired
		public AdminDao userDao;
		
		@Override
		public List<UserDto> adminUserList() {
			return userDao.adminUserList();
		}
	
	
	/* 신고 리스트 */
		@Autowired
		public AdminDao reportDao;
		
		@Override
		public List<ReportDto> adminReportList(){
			return reportDao.adminReportList();
		}

}

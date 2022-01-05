package com.project.eatda.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.eatda.dao.AdminDao;
import com.project.eatda.dao.EventDao;
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
		
		// 댓글 리스트 삭제
		@Override
		public int adminReplyDelete(int reply_no) {
			return replyDao.adminReplyDelete(reply_no);
		}
		
	/* 블로그 삭제 */	
		@Autowired
		public AdminDao blogDao;
		
		@Override
		public int adminBlogDelete(int blog_no) {
			return blogDao.adminBlogDelete(blog_no);
		}
		
	/* 상품 리스트 */
		@Autowired
		public AdminDao productDao;
		
		@Override
		public List<ProductDto> adminProductList() {
			return productDao.adminProductList();
		}
		
		@Override
		public String selectPid(String p_id) {
			return productDao.selectPid(p_id);
		}
		
		// 상품 등록
		@Override
		public int p_insert(ProductDto dto) {
			return productDao.p_insert(dto);
		}
		
		// 상품 수정
		@Override
		public int p_update(ProductDto dto) {
			return productDao.p_update(dto);
		}
		
		// 상품 삭제
		@Override
		public int p_delete(String p_id) {
			return productDao.p_delete(p_id);
		}
		
		
	/* 주문 리스트 */
		@Autowired
		public AdminDao orderDao;
		
		@Override
		public List<OrderAdminDto> adminOrderList() {
			return orderDao.adminOrderList();
		}
		
		// 주문 리스트 삭제
		@Override
		public int adminOrderDelete(String order_id) {
			return orderDao.adminOrderDelete(order_id);
		}

		
	/* 회원 리스트 */	
		@Autowired
		public AdminDao userDao;
		
		@Override
		public List<UserDto> adminUserList() {
			return userDao.adminUserList();
		}
		
		// 회원 리스트 삭제
		@Override
		public int adminUserDelete(String user_id) {
			// TODO Auto-generated method stub
			return 0;
		}
	
	
	/* 신고 리스트 */
		@Autowired
		public AdminDao reportDao;
		
		@Override
		public List<ReportDto> adminReportList(){
			return reportDao.adminReportList();
		}
		
		// 신고 리스트 삭제
		@Override
		public int adminPostReportDelete(int report_no) {
			return reportDao.adminPostReportDelete(report_no);
		}



}

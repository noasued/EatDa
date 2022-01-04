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
	
	/* 댓글 리스트 */
	public List<BlogReplyDto> adminReplyList();
	public int adminReplyDelete(int reply_no);
	
	/* 블로그  삭제 */
	public int adminBlogDelete(int blog_no);
	
	/* 레시피 삭제 */
	//public int adminRecipeDelete(int recipe_no);
	
	/* 상품 리스트 */
	public List<ProductDto> adminProductList();
	public String selectPid(String p_id);

	public int p_insert(ProductDto dto);
	public int p_update(ProductDto dto);
	public int p_delete(String p_id);
	
	/* 주문 리스트 */
	public List<OrderAdminDto> adminOrderList();
	public int adminOrderDelete(String order_id);
	
	/* 회원 리스트 */
	public List<UserDto> adminUserList();
	public int adminUserDelete(String user_id);
	
	/* 신고 리스트 */
	public List<ReportDto> adminReportList();
	public int adminPostReportDelete(int report_no);

	
}

package com.project.eatda.biz;

import java.util.List;

import com.project.eatda.dto.BlogDto;
import com.project.eatda.dto.BlogReplyDto;
import com.project.eatda.dto.OrderAdminDto;
import com.project.eatda.dto.ProductDto;
import com.project.eatda.dto.ReportDto;
import com.project.eatda.dto.UserDto;

public interface AdminBiz {

	public List<ProductDto> adminProductList();
	
	public List<OrderAdminDto> adminOrderList();

	public List<UserDto> adminUserList();
	
	public List<ReportDto> adminReportList();


}

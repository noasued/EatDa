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
	
	/* 댓글 리스트 */
	@Override
	public List<BlogReplyDto> adminReplyList() {
		List<BlogReplyDto> adminReplyList = new ArrayList<BlogReplyDto>();
		try {
			adminReplyList = sqlSession.selectList(NAMESPACE+"adminReplyList");
		} catch (Exception e) {
			System.out.println("[error] : admin reply list");
			e.printStackTrace();
		}
		return adminReplyList;
	}
	
	/* 댓글 삭제*/
	@Override
	public int adminReplyDelete(int reply_no) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"adminReplyDelete",reply_no);
		} catch (Exception e) {
			System.out.println("[error] : admin reply delete");
			e.printStackTrace();
		}
		return res;
	}
	
	/* 블로그 삭제 */
	@Override
	public int adminBlogDelete(int blog_no) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"adminBlogDelete",blog_no);
		} catch (Exception e) {
			System.out.println("[error] : admin blog delete");
			e.printStackTrace();
		}
		return res;
	}
	
	/* 상품 리스트 */
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
	public String selectPid(String p_id) {
		ProductDto dto = null;
		
		try {
			dto=sqlSession.selectOne(NAMESPACE+"selectPid",p_id);
		} catch (Exception e) {
			System.out.println("[error] : selectPid");
			e.printStackTrace();
		}
		return dto.getP_id();
		
	}
	
	// 상품 등록
	@Override
	public int p_insert(ProductDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE+"productInsert",dto);
		} catch (Exception e) {
			System.out.println("[error] : product insert");
			e.printStackTrace();
		}
		return res;
	}
	
	// 상품 수정
	@Override
	public int p_update(ProductDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE+"productUpdate",dto);
		} catch (Exception e) {
			System.out.println("[error] : product update");
			e.printStackTrace();
		}
		return res;
	}
	
	// 상품 삭제
	@Override
	public int p_delete(String p_id) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"productDelete",p_id);
		} catch (Exception e) {
			System.out.println("[error] : product delete");
			e.printStackTrace();
		}
		return res;
	}
	
	/* 주문 리스트 */
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
	
	// 주문 삭제
	@Override
	public int adminOrderDelete(String order_id) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"adminOrderDelete",order_id);
		} catch (Exception e) {
			System.out.println("[error] : order delete");
			e.printStackTrace();
		}
		return res;
	}

	
	/* 회원 리스트 */
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
	public int adminUserDelete(String user_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	/* 신고 리스트 */
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
	
	@Override
	public int adminPostReportDelete(int report_no) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"reportDelete",report_no);
		} catch (Exception e) {
			System.out.println("[error] : report delete");
			e.printStackTrace();
		}
		return res;
	}


	
	
}

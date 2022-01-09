package com.project.eatda.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.eatda.dto.BlogReplyDto;
import com.project.eatda.dto.OrderAdminDto;
import com.project.eatda.dto.OrderDto;
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
	
	/* 댓글 삭제 */
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
	
	// 상품 등록
	@Override
	public int adminProductInsert(ProductDto dto) {
		int res = 0;
		
		ProductDto temp = sqlSession.selectOne(NAMESPACE+"getLastProductNum");
		String p_id = "P"+temp.getP_no();
		int p_no = temp.getP_no();
		dto.setP_id(p_id);
		dto.setP_no(p_no);
		
		System.out.println("dto"+dto);
		
		try {
			res = sqlSession.insert(NAMESPACE+"adminProductInsert",dto);
			System.out.println("res ="+res);
		} catch (Exception e) {
			System.out.println("[error] : product insert");
			e.printStackTrace();
		}
		return res;
	}
	
	// 상품 수정
	@Override
	public int adminProductUpdate(ProductDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE+"adminProductUpdate",dto);
		} catch (Exception e) {
			System.out.println("[error] : product update");
			e.printStackTrace();
		}
		return res;
	}
	
	// 상품 삭제
	@Override
	public int adminProductDelete(String p_id) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"adminProductDelete",p_id);
		} catch (Exception e) {
			System.out.println("[error] : product delete");
			e.printStackTrace();
		}
		return res;
	}
	
	/* 주문 리스트 */
	@Override
	public List<OrderDto> adminOrderList() {
		List<OrderDto> adminOrderList = new ArrayList<OrderDto>();
		
		try {
			adminOrderList = sqlSession.selectList(NAMESPACE+"adminOrderList");
		} catch (Exception e) {
			System.out.println("[error] : admin order list");
			e.printStackTrace();
		}
		return adminOrderList;
	}
	
	// 모달 리스트
	public OrderDto orderSelectOne(String order_id) {
		OrderDto dto = null;
		
		try {
			dto=sqlSession.selectOne(NAMESPACE+"orderSelectOne",order_id);
		} catch (Exception e) {
			System.out.println("[error]: order select one");
			e.printStackTrace();
		}
		return dto;
	}
	
	// 주문 추가(무통장입금 : default=결제대기)
	@Override
	public int adminOrderInsert(OrderDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE+"adminOrderInsert",dto);
		} catch (Exception e) {
			System.out.println("[error] : order insert");
			e.printStackTrace();
		}
		return res;
	}
	
	// 주문 추가(무통장입금 이외 결제 : default=결제완료)
		@Override
		public int adminOrderInsert2(OrderDto dto) {
			int res = 0;
			
			try {
				res = sqlSession.insert(NAMESPACE+"adminOrderInsert2",dto);
			} catch (Exception e) {
				System.out.println("[error] : order insert");
				e.printStackTrace();
			}
			return res;
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
	
	public List<UserDto> adminUserModal(int user_no) {
		List<UserDto> adminUserModal = new ArrayList<UserDto>();
		
		try {
			adminUserModal = sqlSession.selectList(NAMESPACE+"adminUserModal",user_no);
		} catch (Exception e) {
			System.out.println("[error] : admin user modal");
			e.printStackTrace();
		}
		return adminUserModal;
	}
	
	// 회원 활성화 여부 update
	@Override
	public int adminUserUpdate(UserDto dto) {
		int res =0;
		
		try {
			res = sqlSession.update(NAMESPACE+"adminUserUpdate",dto);
		} catch (Exception e) {
			System.out.println("[error] : admin user update");
			e.printStackTrace();
		}
		return res;
	}
	
	// 회원 삭제
	@Override
	public int adminUserDelete(String user_id) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"adminUserDelete",user_id);
		} catch (Exception e) {
			System.out.println("[error] : admin user delete");
			e.printStackTrace();
		}
		return res;
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
	public int adminReportDelete(int report_no) {
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

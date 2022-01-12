<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to EatDa</title>

  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <link href="resources/admin/css/write.css" rel="stylesheet">
  <style type="text/css">
  	#p_category{
	    width: 200px;
	    height: 30px;
	    padding-left: 10px;
	    font-size: 14px;
	    margin-left: 10%;
  	}
	#p_price,#p_short_desc,#p_cal,#p_amount,#seller_desc{
	    width: 840px;
	    height: 40px;
	    padding-left: 10px;
	    font-size: 16px;
	    margin-left: 10%;
	    margin-top:2%;
    }
  	.product-write__top h2{ display: inline;}

	.product-write__top-txt h2{
		margin-left: 20px;
		font-size: 15px;
	}
		@font-face {
			font-family: 'Nanum Gothic', serif; 
			src: url('http://fonts.googleapis.com/earlyaccess/nanumgothic.css') format('opentype');
		}
		@font-face {
	    font-family: 'MaruBuri';
	    font-weight: 400;
    	font-style: normal;
	    src: url('https://cdn.jsdelivr.net/gh/webfontworld/naver/MaruBuri-Regular.woff2') format('woff2');
		}
		
		textarea{
			width: 840px;
	    	height: 200px;
		    padding-left: 10px;
		    font-size: 16px;
		    margin-left: 10%;
		    margin-top:2%;
		}
  </style>
</head>
<body style="margin-top:155px;">
  <main class="write">
    <div class="write__content">
      <div class="write__content-title">
        <h2>상품 수정</h2>
      </div>
      <div class="write__content-article">
        <form action="adminProductUpdateRes.do" onsubmit="return check_frm();" method="POST">
        <input type="hidden" name="p_id" value="${dto.p_id}">
				<div class="p_category">
		          	<strong>CATEGORY&nbsp;|&nbsp;</strong>
					<label><input type="radio" name="p_category" value="한식" <c:if test="${dto.p_category eq '한식'}"> checked </c:if>> 한식</label>
					<label><input type="radio" name="p_category" value="일식" <c:if test="${dto.p_category eq '일식'}"> checked </c:if>> 일식</label>
					<label><input type="radio" name="p_category" value="중식" <c:if test="${dto.p_category eq '중식'}"> checked </c:if>> 중식</label>
					<label><input type="radio" name="p_category" value="양식" <c:if test="${dto.p_category eq '양식'}"> checked </c:if>> 양식</label>
					<label><input type="radio" name="p_category" value="비건" <c:if test="${dto.p_category eq '비건'}"> checked </c:if>> 야식</label>
					<label><input type="radio" name="p_category" value="고기만" <c:if test="${dto.p_category eq '고기만'}"> checked </c:if>> 비건</label>
		          	<label><input type="radio" name="p_category" value="해산물" <c:if test="${dto.p_category eq '해산물'}"> checked </c:if>> 기타</label>
		          	<label><input type="radio" name="p_category" value="스페인" <c:if test="${dto.p_category eq '스페인'}"> checked </c:if>> 기타</label>
		          	<label><input type="radio" name="p_category" value="기타" <c:if test="${dto.p_category eq '기타'}"> checked </c:if>> 기타</label>
		          	<br><br>
	         	</div> 	
	          	<label><input type="text" name="p_name" id="p_name" placeholder="상품명을 입력하세요" value="${dto.p_name}" required><br></label>
	          	<label><input type="text" name="p_short_desc" id="p_short_desc" placeholder="간략한 설명을 입력하세요" value="${dto.p_short_desc}" required><br></label>
	          	<label><textarea cols="80" rows="10" name="p_description" id="p_description" placeholder="상품 설명을 입력하세요" value="${dto.p_description}" required></textarea></label>
	          	<label><input type="text" name="p_price" id="p_price" placeholder="상품 가격을 입력하세요" value="${dto.p_price}" required><br></label>
	          	<label><input type="text" name="p_cal" id="p_cal" placeholder="상품의 칼로리를 입력하세요" value="${dto.p_cal}" required><br></label>
	          	<label><input type="text" name="p_amount" id="p_amount" placeholder="상품의 gram(그램)을 입력하세요" value="${dto.p_amount}" required></label>
	          	<label><input type="text" name="seller_desc" id="seller_desc" placeholder="판매자의 설명을 입력하세요" value="${dto.seller_desc}" required> </label>
	          	<div class="file_input">
		          	<input type="file" name="file" id="img_path" value="${dto.img_path}">
	    	      	<div class="select_img"><img src=""></div>
	          	</div>
				
			<div class="product-write__content-article__btns">
				<input type="submit" name="write-submit-btn" value="수 정">
				<input type="button" name="write-cancel-btn" value="취 소" onclick="location.href='adminProductList.do'">
        	</div>
        </form>
      </div>
    </div>
  </main>
  
  <script type="text/javascript">
	function check_frm(){
	    	 if(confirm('수정한 내용으로 등록하시겠습니까?')==true){
	    		 return true;
	    	 }else{
	    		 return false;
	    	 }
	     }
	</script>
	
</body>
</html>
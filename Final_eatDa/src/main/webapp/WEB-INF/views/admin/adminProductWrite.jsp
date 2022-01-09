<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        <h2>상품 등록</h2>
      </div>
      <div class="write__content-article">
        <form action="adminProductInsert.do" id="chkFrm" name="chkFrm" onsubmit="return check_frm();">
	          	<select id="p_category" name="p_category" style="display:block;">
			          <option selected>--카테고리 선택--</option>
			          <option>한식</option>
			          <option>양식</option>
			          <option>중식</option>
			          <option>일식</option>
			          <option>비건</option>
			          <option>고기만</option>
			          <option>해산물</option>
			          <option>스페인</option>
			    </select><br>
	          	<input type="text" name="p_name" id="p_name" placeholder="상품명을 입력하세요"><br>
	          	<input type="text" name="p_short_desc" id="p_short_desc" placeholder="간략한 설명을 입력하세요"><br>
				<textarea cols="80" rows="10" name="p_description" placeholder="상품 설명을 입력하세요"></textarea>
				<input type="text" name="p_price" id="p_price" placeholder="상품 가격을 입력하세요"><br>
				<input type="text" name="p_cal" id="p_cal" placeholder="상품의 칼로리를 입력하세요"><br>
				<input type="text" name="p_amount" id="p_amount" placeholder="상품의 gram(그램)을 입력하세요"> 
				<input type="hidden" name="seller_desc" id="seller_desc"> 
				<input type="hidden" name="img_path" id="img_path"> 
			<div class="product-write__content-article__btns">
				<input type="submit" name="write-submit-btn" value="등 록">
				<input type="button" name="write-cancel-btn" value="취 소" onclick="location.href='adminProductList.do'">
        	</div>
        </form>
      </div>
    </div>
  </main>
  
  <script type="text/javascript">
	function check_frm(){
	    	 if(confirm('작성하신 상품을 등록하시겠습니까?')==true){
	    		 return true;
	    	 }else{
	    		 return false;
	    	 }
	     }
	</script>
	
</body>
</html>
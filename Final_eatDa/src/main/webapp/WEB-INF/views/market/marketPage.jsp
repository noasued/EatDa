<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style type="text/css">
span {
	line-height:27px;
}
#wrap {
	margin-top: 25px;
	margin-bottom: 100px;
	width: 100%;
	height: 1500px;
}

.top-section {
	width: 65%;
	height: 550px;
	margin: 0 auto;
}

.top-left-section {
	width: 47%;
	height: 90%;
	float: left;
	padding: 2px;
}

#img {
	width: 100%;
	height: 100%;
}

.top-right-section {
	width: 48%;
	height: 90%;
	float: right;
	padding: 2px;
}
</style>
<style type="text/css">
.tap-section {
	width: 50%;
	height: auto;
	margin: 0 auto;
	text-align: center;
	margin-top: 40px;
}

.tap-button {
	margin-left: -5px;
	margin-right: -5px;
	width: 24%;
	height: 55px;
}
</style>
<style type="text/css">
.bottom-section {
	width: 50%;
	height: auto;
	margin: 0 auto;
	/*
            background-color: rgb(247, 244, 239);
            box-shadow:3px 3px 3px 3px rgb(247, 244, 239);
            */
}

.detail-wrap {
	width: 60%;
	height: 300px;
	margin: 0 auto;
	background-color: darkgray;
}
</style>
<style type="text/css">
.review-wrap {
	width: 90%;
	height:auto;
	margin: 0 auto;
	margin-top: 20px;
}

ul {
	padding-left: 20px;
	padding-right: 20px;
}

ul>li {
	list-style: none;
}

.review-top {
	width:100%;
	border-bottom: 1px solid;
	padding-bottom: 5px;
}

.review-box {
	border-bottom: 1px solid;
	padding: 5px;
	height: 70px;
}

.review-top>span {
	font-size: larger;
	padding: 1px;
}

em {
	padding-top: 10px;
	float: right;
	font-size: x-small;
}

.profile-img {
	float: left;
}

.profile {
	width: 50px;
	height: 50px;
}

.review-text-div {
	margin-left: 70px;
}
</style>
<!-- 상단 상세 css -->
<style type="text/css">
.div-top-section {
	padding: 5px 10px 10px 10px;
	border-bottom: 1px solid;
	margin: 0 10px 10px 10px;
}

.short-desc {
	font-size: small;
	color: rgb(172, 167, 167);
	margin: 0 0 0 3px;
}

.title {
	font-size: x-large;
	letter-spacing: 3px;
	font-weight: bolder;
}

.button-wrap {
	border: 0;
	text-align: center;
}

.top-button {
	width: 32%;
	height: 40px;
}

.seller-div {
	height: 27%;
	padding-bottom:5%;
}

.right-info-title {
	width: 30%;
	height: 30px;
	font-weight: bold;
	color: rgb(89, 86, 86);
	font-size: larger;
}

.right-info-desc {
	width: 100%;
	height: fit-content;
	font-size: small;
	margin-top: 5px;
	margin-left: 15px;
	letter-spacing: 1px;
}
</style>
<style type="text/css">
.desc-wrap {
	padding-top: 40px;
	margin-bottom: 80px;
}

.product-desc {
	height: 60px;
	width: 55%;
	margin: 0 auto;
	padding: 20px;
	border-bottom: 1px dotted;
}

.desc-title {
	letter-spacing: 1px;
	font-weight: bold;
	color: olive;
	font-size: larger;
	margin-left: 10px;
}

.desc-info {
	margin-left: 30px;
	font-size: medium;
	color: rgb(152, 144, 144);
	letter-spacing: 1px;
}
</style>
<style type="text/css">
.modal-img-section {
	width: 20%;
	float: left;
	text-align: center;
}

.product-img {
	width: 90px;
	height: 90px;
	border-radius: 4px;
}

.modal-info-section {
	width: 80%;
	height: 90px;
	float: right;
}

#left-Button:hover {
	cursor: pointer;
}

#right-Button:hover {
	cursor: pointer;
}

.modal-info-title {
	width: 60%;
	height: 90px;
	float: left;
	padding-top: 35px;
	font-size: small;
	font-weight: lighter;
	letter-spacing: 1px;
	padding-left: 10px;
}

.modal-info-quantity {
	width: 20%;
	height: 90px;
	float: left;
	padding-top: 30px;
	font-weight: bold;
	font-size: larger;
}

.modal-info-price {
	width: 20%;
	height: 90px;
	float: left;
	padding-top: 30px;
	font-weight: bold;
	font-size: large;
}

/* fixed-banner */
.fixed-Banner {
	right: 0px;
	position: fixed;
	width: 100px;
	margin: 5% 5% 1% 1%;
	height: auto;
	padding: 10px;
	box-shadow: 0 5px 5px grey;
	border-radius: 9px;
	border: 1px gray solid;
}

.like-title {
	font-size: small;
	text-align: center;
	font-weight: bold;
}

.like-img-div {
	margin-top: 10px;
	padding: 1%;
	text-align: center;
	border-bottom: 1px dotted gray;
}

.like-img {
	border-radius: 10px;
	width: 60px;
	height: 60px;
}
.like-img:hover {
	cursor:pointer;
}
</style>
<script type="text/javascript">

	function leftButton(object) {
		let quantity = Number($(object).siblings('#quantity').text());
		let priceSpan = $(object).parents('.modal-info-quantity').siblings('.modal-info-price').children('#price');
		
		let price = Number($(priceSpan).text());
		
		if (quantity == 1) {
			alert('한 개 이상을 선택해주세요.');
			return;
		} else {
			$(object).siblings('#quantity').text('');
			$(object).siblings('#quantity').text(quantity-1);
			
			$(priceSpan).text('');
			$(priceSpan).text(price-(price/quantity));
		}
	}
	
	function rightButton(object) {
		let quantity = Number($(object).siblings('#quantity').text());
		
		let priceSpan = $(object).parents('.modal-info-quantity').siblings('.modal-info-price').children('#price');
		
		let price = Number($(priceSpan).text());
		
		if (quantity == 9) {
			alert('한 상품은 한번에 10개 이하 주문 가능합니다.');
			return;
		} else {
			$(object).siblings('#quantity').text('');
			$(object).siblings('#quantity').text(quantity+1);
			
			$(priceSpan).text('');
			$(priceSpan).text(price+(price/quantity));
		}
	}

</script>
</head>
<body style="margin: 0; min-width: 1400px;">
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>

	<div class="fixed-Banner">
		<div class="like-title">내가 찜한 상품</div>
		<!-- 이미지만 리스트로 -->
		<div class="like-img-div">
			<img class="like-img" src="resources/images/market/shot.png" onclick="">
		</div>

		<div class="like-img-div">
			<img class="like-img" src="resources/images/market/list.png" onclick="">
		</div>
	</div>


	<!-- modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">구매하시는 상품의 수량을
						선택해주세요.</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="product-body">
						<div class="modal-img-section">
							<img class="product-img" src="resources/images/market/list.png"
								alt="상품">
						</div>
						<div class="modal-info-section">
							<div class="modal-info-title">
								<span>든든한 한우 우거지탕</span>
							</div>
							<div class="modal-info-quantity" align="center">
								<div>
									<!-- 숫자 늘리거나 줄이면 가격에도 반영하도록 구현 -->
									<span id="left-Button" onclick="leftButton(this)">&laquo;</span>&nbsp;
									<span id="quantity" style="font-weight: lighter;">1</span>&nbsp;
									<span id="right-Button" onclick="rightButton(this)">&raquo;</span>
								</div>
							</div>
							<div class="modal-info-price" align="center">
								<span id="price">9000</span> <span>원</span>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer" align="center">
					<button type="button" class="btn btn-primary">장바구니에 담기</button>
					<button type="button" class="btn btn-primary">바로 구매하기</button>
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">쇼핑 계속하기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- paging navi -->
	<div style="width: 67%; height: 40px; margin: 0 auto; padding: 10px; margin-top: 15px;">
		<span style="color: rgb(148, 148, 32); font-size: larger;">
			HOME > MARKET > PRODUCT </span>
	</div>

	<!-- 상품 페이지 시작 -->
	<div id="wrap">
		<div class="top-section">
			<div class="top-left-section">
				<!-- 이미지 -->
				<div class="img-wrap" style="height: 100%;">
					<img id="img" src="resources/images/market/list.png" alt="list">
				</div>
			</div>
			<div class="top-right-section">
				<!-- short desc, title -->
				<div class="div-top-section" style="margin-bottom: 0;">
					<span class="short-desc">한우 뼈를 그대로 갈아넣었어요~</span><br>
					<span class="title">소고기 우거지탕</span>
				</div>

				<div class="div-top-section" style="margin-top: 10px;">
					<div class="right-info-title">가격</div>
					<div class="right-info-desc">
						<span>14000</span>
					</div>
				</div>

				<!-- delivery -->
				<div class="div-top-section">
					<div class="right-info-title">배송 정보</div>
					<div class="right-info-desc" style="margin-bottom: 20px;">
						<span>일반배송 : 3000원</span><br> <span>새벽배송 : 준비중입니다.</span>
					</div>
				</div>

				<!-- 판매자 정보 -->
				<div class="div-top-section seller-div">
					<div class="right-info-title">판매자 정보</div>
					<div class="right-info-desc">
						<span>판매자 ~~ 입니다. 저희는 항상 아침마다 일찍 일어나서 최상의 재료를 준비해요~ 한우 뼈를
							그대로 갈아넣어서 그런지 한입 할 때 마다 뼈가 씹히는 기분이 일품이에요 빠끄~</span>
					</div>
				</div>

				<!--좋아요, 장바구니, 구매 버튼-->
				<div class="div-top-section button-wrap">
					<button class="btn btn btn-outline-danger top-button" onclick="">찜하기</button>
					<button class="btn btn-outline-primary top-button"
						data-bs-toggle="modal" data-bs-target="#exampleModal">장바구니</button>
					<button class="btn btn-outline-success top-button"
						data-bs-toggle="modal" data-bs-target="#exampleModal">구매하기</button>
				</div>
			</div>
		</div>

		<hr style="box-shadow: 0px 0px 3px 0px gray; margin:5% 17%">
		
<script type="text/javascript">

	function ready() {
		alert('준비중입니다.');
	}
	
	function changeColorBtn() {
		for (var i = 0; i < 4; i++) {
			$('.tap-button').eq(i).removeClass('btn-primary').addClass('btn-secondary');
		}		
	}
	
	function reviewTap() {
		changeColorBtn()
		$('#reviewButton').removeClass('btn-secondary').addClass('btn-primary');
		$('.bottom-section').html('');
							
		$('.bottom-section').append(
				"<div class='review-wrap'>" +
				"<ul><li><div class='review-top'>" +
				"<span>전체(</span> <span>10</span><span>)</span>" +
				"<em>※ 일부 후기는 구매자의 주관적인 소견이며 개인별로 상이할 수 있습니다.</em>" +
				"</div></li></ul>" +
				"<ul><li>" +
				"<div class='review-box'>" +
				"<div class='profile-img'>" +
				"<img src='resources/images/market/profile.png' alt='프로필' class='profile'>" +
				"</div>" +
				"<div class='review-text-div'>" +
				"<span>리뷰를 남겨주세요. 리뷰를 남겨주세요. 리뷰를 남겨주세요. 리뷰를 남겨주세요.</span><br>" +
				"<span>이름+아이디 </span> <span>작성시각</span>" +
				"</div></div></li></ul></div>"
		);
							
	}
	
	function detailTap() {
		changeColorBtn();
		$('#detailButton').removeClass('btn-secondary').addClass('btn-primary');
		$('.bottom-section').html('');
		$('.bottom-section').append(
				"<div class='bottom-section>'" +
				"<div class='changeTap'>" +
				"<div class='desc-wrap'>" +
				"<div class='product-desc'>" +
				"<span class='desc-title'>종&nbsp;&nbsp;&nbsp;류</span>" +
				"<span class='desc-info'>든든한 국밥</span>" +
				"</div>" +
				"<div class='product-desc'>" +
				"<span class='desc-title'>용&nbsp;&nbsp;&nbsp;량</span>" +
				"<span class='desc-info'>600g</span>" +
				"</div>" +
				"<div class='product-desc'>" +
				"<span class='desc-title'>칼로리</span>" +
				"<span class='desc-info'>맛있게 먹으면 0 칼로리</span>" +
				"</div>" +
				"<div class='product-desc'>" +
				"<span class='desc-title'>원산지</span>" +
				"<span class='desc-info'>우리집</span>" +
				"</div></div>" +
				"<div class='detail-wrap>'"+
				"</div></div>"
		);
	}
	
	
	
	
	
</script>
		
		
		<div class="tap-section">
			<!-- 버튼 2개 active 일 때 색상 다르게 -->
			<!-- 탭 2개 : 상품정보, 리뷰 -->
			<button id="detailButton" class="btn btn-lg btn-primary tap-button" onclick="detailTap()">상품 상세정보</button>
			<button class="btn btn-lg btn-secondary tap-button" onclick="ready()">상품 문의하기</button>
			<button class="btn btn-lg btn-secondary tap-button" onclick="ready()">상품 관리하기</button>
			<button id="reviewButton" class="btn btn-lg btn-secondary tap-button" onclick="reviewTap()">리뷰</button>
		</div>


		<div class="bottom-section">
			<!-- 상품정보, 리뷰 default 상품정보 -->
			<div class="changeTap">
				<div class="desc-wrap">
					<!-- 제품 디테일 란 -->
					<div class="product-desc">
						<span class="desc-title">종&nbsp;&nbsp;&nbsp;류</span>
						<span class="desc-info">든든한 국밥</span>
					</div>
					<div class="product-desc">
						<span class="desc-title">용&nbsp;&nbsp;&nbsp;량</span> 
						<span class="desc-info">600g</span>
					</div>
					<div class="product-desc">
						<span class="desc-title">칼로리</span> 
						<span class="desc-info">맛있게 먹으면 0칼로리</span>
					</div>
					<div class="product-desc">
						<span class="desc-title">원산지</span> 
						<span class="desc-info">우리집</span>
					</div>
				</div>

				<!-- 제품소개 -->
				<div class="detail-wrap">
					<!-- 여기엔 대충 이미지가 들어가야 하지 않을까 .. -->
				</div>
			</div>
		</div>
	</div>

	<div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="resources/css/market/marketPage.css">
</head>
<script type="text/javascript">
var img_path = $('#img').attr('src');
var p_name = $('.title').text();
var s_desc = $('.short-desc').text();
var p_description = $('#p-description').text();
var seller_desc = $('#seller-desc').text();
var p_amount = $('#p-amount').text();
var p_cal = $('#p-cal').text();

$(document).ready(function() {
	likeProduct();
	makeReviewTap();
	let originalPrice = $('#price').text();
	
	$('.btn-close').click(function() {
		$('#quantity').text('1');
		$('#price').text(originalPrice);
	});
	$('.modal-footer').children().eq(2).click(function() {
		$('#quantity').text('1');
		$('#price').text(originalPrice);
	});
});

const keepShopping = () => {
	let originalPrice = $('#price').text();
	$('#quantity').text('1');
	$('#price').text(originalPrice);
}

const leftButton = (object) => {
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

const rightButton = (object) => {
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
const likeProduct = () => {
	$.ajax({
		url:"likeProduct-main.do",
		type:"post",
		dataType:"json",
		success:function(data) {
			let list = data;
			$(list).each(function(key, value) {
				$('.like-title').append(
					"<div class='like-img-div'>" +
					"<img id='" + value.p_id + "' class='like-img' src='" + value.img_path + "' onclick='goLikeProduct(this)'>" +
					"</div>"
				);
			});
		}
	});
}
const goLikeProduct = (object) => {
	let p_id = $(object).attr('id');
	location.href = 'goProductPage.do?p_id='+p_id;
}

const likeThis = () => {
	let p_id = document.getElementById('p-id').innerText;
	let p_name = document.getElementsByClassName('title')[0].innerText;
	let img_path = $('#img').attr('src');
	let flag = '';
	
	//이미 찜한 상품인지 체크
	$('.like-img').each(function() {
		if ($(this).attr('id') == p_id) {
			if (confirm(p_name + " 상품은 이미 찜한 상품입니다. 취소하시겠습니까?")) {
				deleteProductLike(p_id);
				$(this).parent('.like-img-div').remove();
				flag = 'true';
			}
		}
	});
	if(flag=='true') {return;}
	
	$.ajax({
		url: "likeProductInsert.do",
		type: "post",
		data: p_id,
		success:function(msg) {
			if (msg == 'true') {
				alert(p_name + " 상품을 찜했습니다! 오른쪽 '내가 찜한 상품' 에서 확인해보세요.");
				$('.like-title').append(
						"<div class='like-img-div'>" +
						"<img id='" + p_id + "' class='like-img' src='" + img_path + "' onclick='goLikeProduct(this)'>" +
						"</div>"
				);
			}
		}
	});
}

const deleteProductLike = (p_id) => {
	$.ajax({
		url:"deleteProductLike.do",
		type:"post",
		data:p_id,
		success:function(msg) {
			if (msg === 'false') {
				alert('취소 실패!');
			}
		}
	});
}

const putShoppingBag = () => {
	let p_price = $('.right-info-desc').eq(0).children('span').eq(0).text();
	let quantity = $('#quantity').text();
	let data = {
		"p_id":document.getElementById('p-id').innerText,
		"p_price":p_price*quantity,
		"quantity":quantity
	}
	
	if (confirm('해당 상품을 장바구니에 넣으시겠습니까?')) {
		$.ajax({
			url:"putShoppingBag.do",
			type:"post",
			data:JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			success:function(flag) {
				let msg = (flag=='true'?'장바구니로 이동하시겠습니까?':'해당 상품은 이미 장바구니에 담겨있습니다. 장바구니로 이동하시겠습니까?') 
				console.log(msg);
				if (confirm(msg)) {
					location.href = 'goShoppingBag.do';
				}
			}
		});
	}
}
const directPurchase = () => {
	//바로 구매하기
	if (confirm('알림::바로 구매하기를 이용하시면 장바구니가 비워집니다. 계속하시겠습니까?')) {
		let product = {
				p_name:$('.modal-info-title').children('span').text(),
				img_path:$('#img').attr('src'),
				p_price:$('#price').text(),
				quantity:$('#quantity').text(),
				p_id:$('#p-id').text()
		}
		location.href = 'makeOrder.do?p_id=' + product.p_id + '&quantity='+product.quantity + '&price=' + product.p_price;
	};
}
</script>
<script type="text/javascript">

const changeColorBtn = () => {
	for (var i = 0; i < 4; i++) {
		$('.tap-button').eq(i).removeClass('btn-primary').addClass('btn-secondary');
	}		
}
const makeReviewTap = () => {
	const productId = $('#p-id').text();
	$('.bottom-section').append(
			"<div class='review-wrap'>" +
			"<ul class='review-ul'><li class='li-tag'><div class='review-top'>" +
			"<span>전체&nbsp;(</span><span id='reviewQuantity'></span><span>)</span>" +
			"<em>※ 일부 후기는 구매자의 주관적인 소견이며 개인별로 상이할 수 있습니다.</em>" +
			"</div></li></ul>" +
			"<ul class='review-ul-body'></ul></div>"
	);
	$('.review-wrap').css('display','none');
	$.ajax({
		url: "getReview.do",
		type: "post",
		data: productId,
		dataType:"json",
		success:function(data) {
			var list = data;
			$('#reviewQuantity').text(list.length);
			$(list).each(function(key, value) {
				$('.review-ul-body').append(
						"<li class='li-tag'>" +
						"<div class='review-box'>" +
						"<div class='profile-img'>" +
						"<img src='resources/images/userProfile/" + value.user_img + ".png' alt='프로필' class='profile'>" +
						"</div>" +
						"<div class='review-text-div'>" +
						"<span>" + value.review_content + "</span><br>" +
						"<span>" + value.user_id + "("+ value.user_name + ")</span>&nbsp;&nbsp;&nbsp;&nbsp;" +
						"<span>작성일 : </span><span>" + value.review_regdate + "</span>" +
						"</div></div></li>"
				);
			});
		}
	});
	
}

const reviewTap = () => {
	changeColorBtn()
	const productId = $('#p-id').text();
	$('#reviewButton').removeClass('btn-secondary').addClass('btn-primary');
	$('.changeTap').css('display','none');
	$('.review-wrap').css('display','block');
}

const detailTap = () => {
	changeColorBtn();
	$('#detailButton').removeClass('btn-secondary').addClass('btn-primary');
	$('.review-wrap').css('display','none');
	$('.changeTap').css('display','block');
}

const ready = (command) => {
	if (command == 'control') {
		alert('관리자만 상품 관리 탭을 이용할 수 있습니다.');
	} else {
		alert('해당 기능은 서비스 준비중 입니다.');
	}
}
</script>
<body style="margin: 0; min-width: 1400px; margin-top:180px;">
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>

	<div class="fixed-Banner">
		<div class="like-title">내가 찜한 상품</div>
	</div>

	<!-- modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">구매하시는 상품의 수량을 선택해주세요.</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="product-body">
						<div class="modal-img-section">
							<img class="product-img" src="${product.img_path}" alt="상품">
						</div>
						<div class="modal-info-section">
							<div class="modal-info-title">
								<span>${product.p_name}</span>
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
								<span id="price">${product.p_price}</span>
								<span>원</span>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer" align="center">
					<button type="button" class="btn btn-primary" onclick="putShoppingBag()">장바구니에 담기</button>
					<button type="button" class="btn btn-primary" onclick="directPurchase()">바로 구매하기</button>
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">쇼핑 계속하기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 상품 페이지 시작 -->
	<div id="wrap">
		<div class="top-section">
			<div class="top-left-section">
				<!-- 이미지 -->
				<div class="img-wrap" style="height: 100%;">
					<img id="img" src="${product.img_path}">
				</div>
			</div>
			<div class="top-right-section">
				<!-- short desc, title -->
				<div class="div-top-section" style="margin-bottom: 0;">
					<span class="short-desc">${product.p_short_desc}</span><br>
					<span class="title">${product.p_name}</span>
				</div>

				<div class="div-top-section" style="margin-top: 10px;">
					<div class="right-info-title">가격</div>
					<div class="right-info-desc">
						<span>${product.p_price}</span>
						<span>원</span>
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
						<span id="seller-desc">${product.seller_desc}</span>
						<span id="p-description" style="display:none;">${product.p_description}</span>
						<span id="p-amount" style="display:none;">${product.p_amount}</span>
						<span id="p-cal" style="display:none;">${product.p_cal}</span>
						<span id="p-id" style="display:none;">${product.p_id}</span>
					</div>
				</div>

				<!--좋아요, 장바구니, 구매 버튼-->
				<div class="div-top-section button-wrap">
					<button class="btn btn btn-outline-danger top-button" onclick="likeThis()">찜하기</button>
					<button class="btn btn-outline-primary top-button"
						data-bs-toggle="modal" data-bs-target="#exampleModal">장바구니</button>
					<button class="btn btn-outline-success top-button"
						data-bs-toggle="modal" data-bs-target="#exampleModal">구매하기</button>
				</div>
			</div>
		</div>
		<hr style="box-shadow: 0px 0px 3px 0px gray; margin:3% 17%">
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
				<div class="detail-wrap" id="img-path" style="background-image:url(${product.img_path})"></div>
				
				<div class="desc-wrap bottom-gray" align="center">
					<h6 class="product-desc-letter" id="p-short-desc">${product.p_short_desc}</h6>
					<h2 class="product-desc-letter display-6" id="p-name"><b>${product.p_name}</b></h2>
				</div>
				
				<div class="desc-wrap" align="center">
					<span>"</span>
					<span class="product-desc-letter">${product.p_description}</span><span>"</span><br><br>
					<span class="product-desc-letter"><i style="font-size:larger">"또한,"</i></span><br><br>
					<span class="product-desc-letter">"${product.seller_desc}"</span>
				</div>
				
				<div class="desc-wrap">
					<!-- 제품 디테일 란 -->
					<div class="product-desc">
						<span class="desc-title">용&nbsp;&nbsp;&nbsp;량</span> 
						<span class="desc-info">${product.p_amount}</span><span>G</span>
					</div>
					<div class="product-desc">
						<span class="desc-title">칼로리</span> 
						<span class="desc-info">맛있게 먹으면 ${product.p_cal} 칼로리!</span>
					</div>
					<div class="product-desc">
						<span class="desc-title">원산지</span> 
						<span class="desc-info">국내산</span>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="resources/css/market/shoppingBag.css">

<script type="text/javascript">
	let price = 0;
	let totalPrice = 0;
	
	window.onload = function() {
		makeSubDelivery();
		//멀티버튼 구현
		$('input:checkbox').on('click', function() {
			if (!($(this).prop('checked'))) {
				$('#m-check').attr('src','resources/images/market/check.png');
			}
		});
		
		let totalPrice = 0;
		$('.right-col-price').each(function() {
			totalPrice += Number($(this).children().eq(0).text());
		})
		
		$('#totalPrice').text(totalPrice);
	}
	
	const leftButton = (object) => {
		let quantity = $(object).siblings('.quantity').text();
		price = Number($(object).parent().siblings('.right-col-price').children().eq(0).text());
		
		if (quantity == 1) {
			alert('한 개 이상을 선택해주세요.');
			return;
		} else {
			$(object).siblings('.quantity').text('');
			$(object).siblings('.quantity').text(quantity-1);
			$(object).parent().siblings('.right-col-price').children().eq(0).text(price-(price/quantity));
			calcTotal();
		}
	}
	
	const rightButton = (object) => {
		let quantity = $(object).siblings('.quantity').text();
		price = Number($(object).parent().siblings('.right-col-price').children().eq(0).text());
		
		if (quantity == 9) {
			alert('한 상품은 한번에 10개 이하 주문 가능합니다.');
			return;
		} else {
			$(object).siblings('.quantity').text('');
			$(object).siblings('.quantity').text(Number(quantity)+1);
			$(object).parent().siblings('.right-col-price').children().eq(0).text(price+price/quantity);
			calcTotal();
		}
	}
	
	const calcTotal = () => {
		let length = $('.start-row').length;
		
		for (var i = 0; i < length; i++) {
			let temp = $('.start-row').eq(i).children('.right-col').children('.right-col-price').children().eq(0).text();
			totalPrice += Number(temp);
		}
		
		$('#totalPrice').text('');
		$('#totalPrice').text(totalPrice);
		totalPrice = 0;
	}	
	
	const pushMulti = () => {
		let src = $('#m-check').attr('src');
		
		if (src == 'resources/images/market/check.png') {
			$('#m-check').attr('src','resources/images/market/full-check.png');
			$('input:checkbox[name="checkbox"]').each(function() {
				this.checked=true;
			});
		} else {
			$('#m-check').attr('src','resources/images/market/check.png');	
			$('input:checkbox[name="checkbox"]').each(function() {
				this.checked=false;
			});
		}
	}
	
	const choiceDelete = () => {
		let array = new Array();
		console.log($('now-tab').children('input:checkbox[name="checkbox"]:checked'));
		if($('.now-tab').text() == '일반배송' && $('input:checkbox[name="checkbox"]:checked').length == 0) {
			alert('선택하신 상품이 없습니다.');
			return;
		}
		
		if ($('input:checkbox[name="checkbox"]:checked').parent().parent().siblings('.category').text() == 'SUBSCRIPTION') {
			alert('구독 배송 상품은 삭제하실 수 없습니다.');
			return;
		}
		
		if(confirm('선택하신 상품을 장바구니에서 제거 하시겠습니까?')) {
			$('input:checkbox[name="checkbox"]').each(function() {
				if (this.checked==true) {
					let price = $(this).parents('.left-col').siblings('.right-col').children('.right-col-price').children('.each-price').text();
					let totalPrice = $('#totalPrice').text();
					$('#totalPrice').text(totalPrice-price);
					
					if ($(this).parents('.start-row').css('display')=="block") {
						array.push($(this).siblings('.p-id').text());
						$(this).parents('.start-row').remove();
					}
				}
			});
		}
		
		let data = {
			"array":array
		}
		
		$.ajax({
			url:"deleteProductBag.do",
			type:"post",
			contentType:"application/json; charset=utf-8",
			data:JSON.stringify(data),
			success:function(msg) {
				alert('선택하신 상품을 장바구니에서 제거했습니다.');
			}
		});
		$('#m-check').attr('src','resources/images/market/check.png');
		$('input:checkbox[name="checkbox"]').each(function() {
			this.checked=false;
		});
	}
	
	const makeOrder = () => {
		let product = document.getElementsByClassName('start-row');

		if (product.length == 0) {
			alert('장바구니에 담긴 상품이 없습니다.');
			return;
		}
		
		if (confirm('위 상품들을 주문하시겠습니까?')) {
			let array = new Array();
			$('.category').each(function() {
				console.log($(this).text());
				let data = {
					p_id:$(this).siblings('.left-col').find('.p-id').text(),
					quantity:$(this).siblings('.right-col').find('.quantity').text(),
					price:$(this).siblings('.right-col').find('.each-price').text()
				}
				array.push(data);
			});
			
			$.ajax({
				url:"updateCartList.do",
				type:"post",
				contentType:"application/json; charset=utf-8",
				data:JSON.stringify(array),
				success:function(msg){
					console.log(msg);
				}
			});
			
			window.setTimeout(function() {
				location.href='makeOrder.do';
			},1000);
		}
	}
	
	const makeSubDelivery = () => {
		$.ajax({
			url:"getCartProduct.do?command=SUBSCRIPTION",
			type:"get",
			dataType:"json",
			success:function(data) {
				var list = data;
				$(list).each(function(key, value) {
					$('.order-product').append(
							"<div class='start-row' style='display:none;'>" +
							"<div class='category' style='display:none;'>" + value.category + "</div>" +
							"<div class='col-lg-8 left-col'>" +
							"<div class='left-col-check'>" +
							"<input type='checkbox' class='check-img' name='checkbox'>" +
							"<span class='p-id' style='display:none;'>" + value.p_id + "</span>" +
							"</div>" +
							"<div class='left-col-img'>" +
							"<img src='" + value.img_path + "' class='product-img'>" +
							"</div>" +
							"<div class='left-col-title'>" + value.p_name + "</div>" +
							"</div>" +
							"<div class='col-lg-4 right-col'>" +
							"<div class='right-col-quantity'>" +
							"<span class='quantity' style='font-weight:bold;'>" + value.cart_count  + "</span>&nbsp;" +
							"<span style='font-weight:bold;'>개</span>" +
							"</div>" +
							"<div class='right-col-price sub-col-price'>" +
							"<span class='each-price'>" + value.cart_price + "</span>&nbsp;" +
							"&nbsp;<span>원</span>" +
							"</div></div></div>"
					);
				});
			}
		});
	}
	
	const subDelivery = () => {
		$('#norDev').removeClass('now-tab');
		$('#subDev').addClass('now-tab');
		$('#totalPrice').css("display","none");
		$('.sub-price').css("display","inline");
		
		$('.category').each(function() {
			if($(this).text()=='SUBSCRIPTION') {
				$(this).parent('.start-row').css("display","block");
			} else if ($(this).text()=='NORMAL') {
				$(this).parent('.start-row').css("display","none");
			}
		});
	}
	
	const normalDelivery = () => {
		$('#norDev').addClass('now-tab');
		$('#subDev').removeClass('now-tab');
		$('.sub-price').css("display","none");
		$('#totalPrice').css("display","inline");
		
		$('.category').each(function() {
			if($(this).text()=='NORMAL') {
				$(this).parent('.start-row').css("display","block");
			} else if ($(this).text()=='SUBSCRIPTION') {
				$(this).parent('.start-row').css("display","none");
			}
		});
	}
	
	const goMarketMain = () => {
		location.href='marketMain.do';
	}

</script>
</head>

<body style="margin:0; min-width:1400px; margin-top:150px; margin-top:200px;">
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
	
	<div class="container wrap">

        <div class="row rows-width order-title" style="margin: 0 auto; margin-bottom:60px;">
            <div class="col-lg-6 title">
                <div class="display-6">
                    <b>장바구니</b>
                </div>
            </div>
            <div class="col-lg-6 title-process">
                <span class="title-process-span">
                    <span class="title-process-span-bold">01 장바구니</span> > 02 주문 및 결제 > 03 주문완료
                </span>
            </div>
        </div>

        <div class="row rows-width order-middle" style="margin: 0 auto; padding-bottom:10px;">
            <div class="col-lg-6 order-table">
                <div class="order-table-column now-tab division-col" id="norDev" onclick="normalDelivery()">일반배송</div>
                <div class="order-table-column" id="subDev" onclick="subDelivery()">구독배송</div>
            </div>
            <div class="col-lg-6 order-table desc-order">
                장바구니에 담긴 상품은 14일간 보관되며, 이후 좋아요 목록으로 이동됩니다.
            </div>
        </div>

        <div class="row rows-width order-middle-second" style="margin: 0 auto;">
            <div class="col-lg-6 order-middle-second-col">
                <img src="resources/images/market/check.png" id="m-check" onclick="pushMulti()">
                <label style="margin-left:10px; margin-bottom:5px;">전체선택</label>
            </div>
            <div class="col-lg-6 order-middle-second-col" align="right">
                <span id="choice-delete" onclick="choiceDelete()">선택삭제</span>
            </div>
        </div>

        <div class="row rows-width order-product" style="margin: 0 auto;">
        	<!-- 줄 시작 -->
			<c:forEach var="dto" items="${list}">
				<div class="start-row">
					<div class="category" style="display:none;">${dto.category}</div>
	                <div class="col-lg-8 left-col">
	                    <div class="left-col-check">
							<input type="checkbox" class="check-img" name="checkbox">
							<span class="p-id" style="display:none;">${dto.p_id}</span>
	                    </div>
	                    <div class="left-col-img">
	                        <img src="${dto.img_path}" alt="상품 이미지" class="product-img">
	                    </div>
	                    <div class="left-col-title">
	                        ${dto.p_name}
	                    </div>
	                </div>
	                <div class="col-lg-4 right-col">
	                    <!-- 수량선택 -->
	                    <div class="right-col-quantity">
	                        <span id="left-Button" onclick="leftButton(this)">&laquo;</span>&nbsp;
	                        <span class="quantity" style="font-weight:bold;">${dto.cart_count}</span>&nbsp;
	                        <span id="right-Button" onclick="rightButton(this)">&raquo;</span>
	                    </div>
	
	                    <!-- 가격 -->
	                    <div class="right-col-price">
	                        <span class="each-price">${dto.cart_price}</span>
	                        <span>원</span>
	                    </div>
	                </div>
	            </div>
			</c:forEach>
        </div>

        <!-- 총 가격 -->
        <div class="row rows-width order-total" style="margin: 0 auto; margin-top:30px;">
            <div class="order-total-desc">
                총 결제 금액
            </div>
            <div class="order-total-price">
                <span id="totalPrice"></span>
                <span class="sub-price" style="display:none;">0</span>
                <span>원</span>
            </div>
        </div>

        <!-- 하단 버튼 2개 -->
        <div class="row rows-width order-button" style="margin: 0 auto; margin-top:5%;">
            <div class="col-lg-12">
                <button class="btn btn-primary bottom-btn" onclick="makeOrder()">주문하기</button>
                <button class="btn btn-primary bottom-btn" onclick="goMarketMain()">쇼핑 계속하기</button>
            </div>
        </div>

    </div>
    
    <div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>

</body>
</html>
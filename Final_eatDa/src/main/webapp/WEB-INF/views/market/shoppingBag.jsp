<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
    .wrap {
        height: 100%;
        margin-top: 50px;
        margin-bottom: 100px;
    }

    .rows-width {
        width:80%;
    }
    .rows-margin {
    	margin:0 auto;
    }

    .order-title {
        height: 15%;
    }

    .order-middle,
    .order-middle-second,
    .order-total {
        height: 8%;
        border-bottom: 2px solid black;
    }

    /*
        나중에 fit-content
        한 줄 높이 100px 적당
    */
    .order-product {
        height: fit-content;
        border-bottom: 1px solid black;
    }

    .order-total {
        height: 15%;
        padding-bottom:30px;
    }

    .order-button {
        text-align: center;
        height: 30%;
    }

    .bottom-btn {
        width: 30%;
        height: 120%;
    }

    .order-middle {
        margin-top: 5%;
    }

    .order-middle-second {
        height: 13%;
    }

    .order-middle-second-col {
        padding-top: 20px;
        padding-bottom: 10px;
        font-size: larger;
    }

    .order-table-column {
        width: 30%;
        height: 70%;
        float: left;
        text-align: center;
        font-size: x-large;
    }

    #m-check {
        width: 20px;
        height: 20px;
    }
    .check-img {
    	width: 18px;
    	height:18px;
    }

    #m-check:hover {
        cursor: pointer;
    }

    #choice-delete:hover {
        cursor: pointer;
    }
</style>

<style type="text/css">
    /*
        product row css
    */
    .product-img {
        width: 90px;
        height: 90px;
    }

    #left-Button:hover {
        cursor: pointer;
    }

    #right-Button:hover {
        cursor: pointer;
    }

    .start-row {
        width: 100%;
        height: 100px;
        border-bottom: 1px solid black;
    }

    .left-col {
        height: 100%;
        float: left;
    }

    .left-col-check {
        padding-top: 34px;
        float: left;
    }

    .left-col-img {
        float: left;
        margin-left: 25px;
        padding-top: 4px;
    }

    .left-col-title {
        color: rgb(135, 130, 130);
        padding-top: 35px;
        padding-left: 40px;
        float: left;
    }

    .right-col {
        height: 100%;
        float: left;
        padding-left: 40px
    }

    .right-col-quantity {
        padding-top: 33px;
        padding-left: 30px;
        font-size: larger;
        float: left;
    }

    .right-col-price {
        padding-top: 33px;
        margin-left: 30%;
        font-size: larger;
        float: left
    }
</style>
<style type="text/css">
    .title {
        padding-top: 30px;
        padding-bottom: 10px;
        padding-left: 30px;
    }

    .title-process {
        padding-top: 50px;
        padding-bottom: 10px;
        text-align: right;
    }

    .title-process-span {
        font-size: large;
        letter-spacing: 1px;
    }

    .title-process-span-bold {
        color: rgb(142, 142, 82);
    }

    .division-col {
        border-right: 1px solid;
    }

    .now-tab {
        font-weight: bold;
    }

    .desc-order {
        padding-top: 10px; text-align: right; font-size:small;
    }

    .order-total-desc {
        font-size:large; font-weight:bold; text-align:center; padding-top:10px;
    }
    .order-total-price {
        font-size:xx-large; font-weight:bold; text-align:center; padding-top:10px;
    }
</style>

<script type="text/javascript">
	let price = 0;
	let totalPrice = 0;
	
	window.onload = function() {
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
	
	function leftButton(object) {
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
	
	function rightButton(object) {
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
	
	function calcTotal() {
		let length = $('.start-row').length;
		
		for (var i = 0; i < length; i++) {
			let temp = $('.start-row').eq(i).children('.right-col').children('.right-col-price').children().eq(0).text();
			totalPrice += Number(temp);
		}
		
		$('#totalPrice').text('');
		$('#totalPrice').text(totalPrice);
		totalPrice = 0;
	}
	
	//멀티버튼 메서드
	function pushMulti() {
		// 1. 이미지를 바꿔줘야함
		// 2. 전체선택을 클릭하면 밑에 이미지들도 다 체크모양으로 바뀌어야함
		let src = $('#m-check').attr('src');
		
		
		if (src == 'resources/images/market/check.png') {
			//미체크 상태
			$('#m-check').attr('src','resources/images/market/full-check.png');
			$('input:checkbox[name="checkbox"]').each(function() {
				this.checked=true;
			});
		} else {
			//체크된 상태
			$('#m-check').attr('src','resources/images/market/check.png');	
			$('input:checkbox[name="checkbox"]').each(function() {
				this.checked=false;
			});
		}
	}
	
	//선택삭제 메서드
	function choiceDelete() {
		let array = new Array();
		if($('input:checkbox[name="checkbox"]:checked').length == 0) {
			alert('선택하신 상품이 없습니다.');
			return;
		}
		if(confirm('선택하신 상품을 장바구니에서 제거 하시겠습니까?')) {
			$('input:checkbox[name="checkbox"]').each(function() {
				if (this.checked==true) {
					let price = $(this).parents('.left-col').siblings('.right-col').children('.right-col-price').children('.each-price').text();
					let totalPrice = $('#totalPrice').text();
					$('#totalPrice').text(totalPrice-price);
					$(this).parents('.start-row').remove();
					array.push($(this).siblings('.p-id').text());
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
				//삭제완료.
				console.log(msg);
			}
		});
		
	}
	function goMarketMain() {
		location.href='marketMain.do';
	}
	
	function makeOrder() {
		let product = document.getElementsByClassName('start-row');
		
		if (product.length == 0) {
			alert('장바구니에 담긴 상품이 없습니다.');
			return;
		}
		
		if (confirm('위 상품들을 주문하시겠습니까?')) {
			let array = new Array();
			var idx = 0;
			$('.p-id').each(function() {
				let data = {
					p_id:$(this).text(),
					quantity:$('.quantity').eq(idx).text(),
					price:$('.each-price').eq(idx).text()
				}
				array.push(data);
				idx++;
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
			location.href='makeOrder.do?data=fromShoppingBag';
			
		}
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
                <div class="order-table-column now-tab division-col">일반배송</div>
                <div class="order-table-column">구독배송</div>
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
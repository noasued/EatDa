<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<!-- 부트스트랩 CDN 안쓰시는 아래 두 개 분들은 빼세요 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    
    
	<script type="text/javascript">
		
		function progressPay() {
			let paymentOption = $('input:radio[name="payment"]:checked').val();
			
			for (var i = 0; i < 4; i++) {
				if($('.input').eq(i).val() == '') {
					alert('배송지 정보를 정확하게 입력해주세요.');
					return;
				}
			}
			
			if ($('#coupon-list').val() == 'xx') {
				alert('쿠폰을 선택해주세요.');
				return;
			}
			
			if (paymentOption==null) {
				alert('결제 방식을 선택해주세요.');
				return;
			}
			
			if ($('#agreePay').is(':checked') == false) {
				alert('상품 결제에 동의해주셔야 결제가 가능합니다.');
				return;
			}
			
			if (paymentOption == 'basic') {
				//무통장 입금
				alert('무통장 입금을 선택하셨습니다.');
				location.href = 'orderSuccess.do';
			} else {
				iamport(paymentOption);
			}
			
		}
		
		//결제 api
        function iamport(paymentOption) {
			let amount = $('.after-price').eq(1).text();
			let order_code = 'O'+ Math.floor(Math.random()*10000+1) + 'C' + Math.floor(Math.random()*10000+1);
			let buyer_name = $('.input').eq(0).val();
			let buyer_email = $('.input').eq(4).val();
			let buyer_tel = $('.input').eq(3).val();
			let buyer_addr = $('.input:eq(2)').val() + ' ' + $('.input:eq(3)').val();
			
            IMP.init('imp62869817');
            IMP.request_pay({
                pg: paymentOption,
                pay_method: 'card',
                merchant_uid: 'merchant_' + new Date().getTime(),
                name: order_code, 
                amount: 100, 
                buyer_email: buyer_email,
                buyer_name: buyer_name,
                buyer_tel: buyer_tel,
                buyer_addr: buyer_addr,
                buyer_postcode: '123-456'
            }, function(rsp) {
    		    if ( rsp.success ) {
    		    	var msg = '결제가 완료되었습니다.';
    		        msg += '고유ID : ' + rsp.imp_uid;
    		        msg += '상점 거래ID : ' + rsp.merchant_uid;
    		        msg += '결제 금액 : ' + rsp.paid_amount;
    		        msg += '카드 승인번호 : ' + rsp.apply_num;
    		    } else {
    		    	var msg = '결제에 실패하였습니다. ';
    		       	msg += '에러내용 : ' + rsp.error_msg;
    		    }
    		    alert(msg);
    		});
    	}
    </script>
    
    
	<style type="text/css">
		/* body 최소 크기, 마진 0 지정 */
		body {
			margin:0; min-width:1400px;
		}
	</style>
	<style type="text/css">
        body {
            margin:0;
            min-width: 1400px;
        }

        #container {
            height:auto;
            margin-bottom: 4%;
        }

        .rows-info {
            height:auto; width:80%;
        }
        .col-left {
            height:auto; border-right:1px solid rgb(191, 181, 181);
        }

        .box-black {
            box-shadow: 0px 4px 4px -4px black;
        }
        .box-gray {
            box-shadow: 0px 4px 4px -4px gray;
        }
        .title-padding {
            padding:2%;
        }

        .rows-width {
            width: 70%;
            height: 100px;
            margin:0px auto;
        }
        .first-section {
            margin-top: 80px;
            text-align: center;
        }
        
        
        #trans {
            width:40px;
            height:40px;
        }
        label {
            margin:1% 1% 1% 2%;
            font-size: large;
        }
    
        /* 배송 정보 입력 css */
        #check {
            margin-left:10px;
        }

        .input-div-f {
            padding:5px 5px 5% 5%;
        }

        .input-div {
            margin:5px;
            padding:10px 10px 10px 20px;
             
        }
        .input {
            width:85%;
            height:30px;
            margin-top: 10px;
            border:0px;
            border-bottom: 1px rgb(167, 163, 163) solid;
            text-indent: 10px;
        }
        .same-div {
            margin: 2%;
            padding-right:7%
        }
        .del-input-div {
            height:50px; padding-left:10px;
        }
    
        .title-box {
            width:20%; height:40px; float:left; font-size:large; text-align:center; padding-top:5px; border-radius:4px;
        }
        .del-second-div {
            width:80%; float:left; padding-left:14px;
        }
    
        .coupon-div {
            padding-top:20px; text-align:center;
        }
        .coupon-div select {
            width:60%; height:30px;
        }
        .coupon-info {
            height:100px; padding:0 10px 10px 30px;
        }
        .coupon-info-ori {
            width:40%; height:100%; float:left; text-align:right; padding:40px 20px 0 0; font-weight:bold; font-size:x-large;
        }
        .coupon-info-icon {
            width:10%; float:left; padding-top:38px;
        }
        .coupon-info-after {
            width:40%; height:100%; float:left; padding:40px 0 0 0; font-weight:bold; font-size:x-large;
        }
    
        /*상품 한 줄 css*/
        .product-row {
            height:120px; padding-bottom:10px;
        }
        .p-row-first {
            width:20%; float:left; height:100%; padding:15px 0 0 15px;
        }
        .p-row-first img {
            width:80%; height:90%; border-radius:5px;
        }
        .p-row-second {
            width:40%; float:left; height:100%; padding: 35px 0 0 15px;
        }
        .p-row-third {
            width:10%; float:left; height:100%; padding:35px 0 0 15px;
        }
        .p-row-fourth {
            width:25%; float:left; height:100%; padding:35px 0 0 10%;
        }
        .payment-desc {
            margin-left: 20px;
        }
        .payment-section {
            padding:10px 0;
        }
    
        .fixed-Banner {
            position:fixed; width:300px; margin:1%; height:400px;
            padding:10px; box-shadow: 0 5px 5px grey; border-radius: 9px;
			border: 1px gray solid;
        }
        #agreePay {
            margin-left: 10px;
        }

        input[type=checkbox]{
            transform : scale(1.5);
        }
        .f-price {
            box-shadow: 0px 4px 4px -4px gray; padding:4% 0 1% 4%;
        }
    
        .bn-price-sz {
            height:18%; width:100%;
        }
        .bn-price-ml {
            margin-left:10px
        }
        .bn-price-first {
            margin:10px 0 0 10px;
        }
        .agree-label {
            font-size: small;width:80%;padding-left:10px
        }
        .bn-button {
            padding:20px; text-align:center;
        }
        
        .bn-price-sz .price {
        	font-size:x-large;
        	font-weight:bold;
        	letter-spacing:1px;
        	line-height:50px;
        }
        
        #address_kakao:hover {
        	cursor:pointer;
        }
        .input-address {
        	width:50%;
        	float:left;
        }
        .input-subAddress {
        	margin-left:10px;
        	width:33%;
        	float:left;
        }
        
    </style>

<title>Insert title here</title>
</head>

<script type="text/javascript">
let originalPrice = 0;
let discountPrice = 0;
let afterPrice = 0;
let userData = {}
let userCoupon = {}
let request = '';

$(document).ready(function() {
	$('#address_kakao').click(function(){
		console.log('click address');
		new daum.Postcode({
            oncomplete: function(data) {
                document.getElementById("address_kakao").value = data.address;
                document.getElementsByClassName('input-subAddress')[0].focus();
            }
        }).open();
		$('#address_kakao').removeAttr('readonly');
	});
	
	//가격 정보 뿌려주기
	$('.cart-price').each(function() {
		originalPrice += Number($(this).text());
	});
	$('.original-price').each(function() {
		$(this).text(originalPrice);
	});
	$('#original-price').text(originalPrice);
	
	//유저 정보 가져오기
	$.ajax({
		url:"getUserInfo.do",
		type:"post",
		dataType:"json",
		success:function(data){
			userData = data;
			console.log(userData);
		}
	});
	
	//주문자와 동일 체크 시
	$('#check').change(function() {
		if($('#check').is(':checked')) {
			$('.input').eq(0).val(userData.user_name);
			$('.input').eq(1).val(userData.user_addr);
			$('.input').eq(3).val(userData.user_phone);
			$('.input').eq(5).val(userData.user_email);
		} else {
			$('.input').each(function() {
				$(this).val('');
			});
			$('.input').eq(1).attr('readonly','true');
		}
	});
	
	//쿠폰 리스트 가져오기
	$.ajax({
		url:"getCouponList.do",
		type:"post",
		dataType:"json",
		success:function(data) {
			$(data).each(function(key,value) {
				$('#coupon-list').append(
						"<option value='"+ value.coupon_rate +"'>"+value.coupon_name+"</option>"
				)
			});
		}
	});
	
	//쿠폰 변경 시 가격 계산
	$('#coupon-list').on('change', function() {
		discountPrice = originalPrice * this.value;
		afterPrice = originalPrice - discountPrice;
		$('.discount-price').text(discountPrice);
		$('.after-price').each(function() {
			$(this).text(afterPrice);
		});
	});
	
	//체크박스 클릭 시 버튼색 변경
	$('#agreePay').change(function() {
		if ($('#agreePay').is(':checked')) {
			$('#paybutton').removeClass('btn-secondary');
			$('#paybutton').addClass('btn-primary');
		} else {
			$('#paybutton').removeClass('btn-primary');
			$('#paybutton').addClass('btn-secondary');
		}
	});
});
</script>



<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
	
	<!-- 본문 작성 -->
	<div id="container" class="container-fluid">
        <div class="row rows-width first-section" style="margin:0 auto; margin-top:4%">
            <div class="col-md-12">
                <h1 class="display-5" style="font-weight: bold; letter-spacing:3px;">주문 결제</h1><br>
            </div>
        </div>
        <hr style="margin:20px 70px 20px 70px;">
        <!-- 좌측 섹션 -->
        <div class="row rows-info" style="margin:0 auto;">
            <div class="col-md-8 col-left">

                <div class="input-div box-black">
                    <h4>배송 정보 입력</h4>
                </div>

                <div class="same-div" align="right">
                    <span>주문자와 동일</span>
                    <input type="checkbox" id="check">
                </div>

                <div class="box-black input-div-f">
                    <div class="del-input-div">
                        <div class="box-gray title-box">이름</div>
                        <div class="del-second-div">
                            <input type="text" name="name" class="input" placeholder="배송 받으실 분의 성함을 입력해주세요">
                        </div>
                    </div>
                    <div class="del-input-div">
                        <div class="box-gray title-box">주소</div>
                        <div class="del-second-div">
                            <input id="address_kakao" type="text" name="address" class="input input-address" readonly placeholder="클릭해주세요.">
                           	<input type="text" class="input input-subAddress" placeholder="상세주소를 입력해주세요">
                        </div>
                    </div>
                    <div class="del-input-div">
                        <div class="box-gray title-box">연락처</div>
                        <div class="del-second-div">
                            <input type="text" name="name" class="input" placeholder="배송 받으실 분의 연락처를 입력해주세요">
                        </div>
                    </div>
                    <div class="del-input-div">
                        <div class="box-gray title-box">배송 시 요청사항</div>
                        <div class="del-second-div">
                            <input type="text" name="name" class="input" placeholder="20자 이내로 입력해주세요">
                            <input type="hidden" class="input" name="email">
                        </div>
                    </div>
                </div>

            
                <div class="box-gray title-padding">
                    <h4 style="margin:0;">주문 상품 정보</h4>
                </div>
                <!-- 주문 상품 정보 -->
                <div class="box-black">
				<c:forEach var="dto" items="${list}">
                    <!-- 상품 한 줄 -->
                    <div class="box-gray product-row">
                        <div class="p-row-first">
                            <img src="${dto.img_path}">
                        </div>
                        <div class="p-row-second">
                            <span>${dto.p_name}</span>
                        </div>
                        <div class="p-row-third">
                            <span>${dto.cart_count}</span>
                            <span>개</span>
                        </div>
                        <div class="p-row-fourth">
                            <span class="cart-price">${dto.cart_price}</span>
                            <span>&#8361;</span>
                        </div>
                    </div>
                    <!-- 상품 한 줄 끝 -->
				</c:forEach>                   
                </div>

                <!-- 쿠폰 적용 섹션 -->
                <div class="box-gray title-padding">
                    <h4 style="margin:0;">쿠폰 적용</h4>
                </div>
   
                <!-- 쿠폰 적용 div -->
                <div class="box-black title-padding">
                    <div class="coupon-div">
                        <select id="coupon-list">
                        	<option value="xx">쿠폰을 선택해주세요</option>
                        </select>
                    </div>

                    <div class="coupon-info">
                        <div class="coupon-info-ori">
                            <span>원래 금액&nbsp; ></span>&nbsp;
                            <span class="original-price"></span>&nbsp;&#8361;
                        </div>
                        <div class="coupon-info-icon">
                            <img src="resources/images/market/trans.png" alt="trans" id="trans">
                        </div>
                        <div class="coupon-info-after">
                            <span>쿠폰 적용 가&nbsp; ></span>&nbsp;
                            <span class="after-price"></span>&nbsp;&#8361;
                        </div>
                    </div>
                </div>

                <!-- 결제 수단 선택 섹션 -->
                <div class="box-gray title-padding">
                    <h4 style="margin:0;">결제 수단</h4>
                </div>

                <!-- 결제 수단 선택 -->
                <div class="box-black payment-section">
                    <table style="width:100%">
                        <colgroup>
                            <col width="20%">
                            <col width="80%">
                        </colgroup>
                        <tbody>
                            <tr style="height:120px">
                                <th>
                                    &nbsp;&nbsp;&nbsp;결제수단 선택
                                </th>
                                <td>
                                    <div>
                                        <div>
                                            <input type="radio" id="card" name="payment" value="kcp"><label for="card">신용카드</label><br>
                                            <a href="#" class="payment-desc">신용카드 약관 설명></a>
                                        </div>
                                        <div>
                                            <input type="radio" id="basic" name="payment" value="basic"><label for="basic">무통장입금</label><br>
                                            <a href="#" class="payment-desc">무통장 입금 약관 설명></a>
                                        </div>
                                        <div>
                                            <input type="radio" id="kakao" name="payment" value="kakaopay"><label for="kakao">카카오페이</label><br>
                                            <a href="#" class="payment-desc">카카오 페이 약관></a>
                                        </div>
                                        <div>
                                            <input type="radio" id="payco" name="payment" value="payco.AUTOPY"><label for="payco">페이코결제</label><br>
                                            <a href="#" class="payment-desc">페이코 결제 약관></a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            
            <!-- 우측 결제 배너 -->
            <div class="col-md-4" style="height:30%;">
                <div class="fixed-Banner">
                    <div class="f-price">
                        <h4>최종 결제금액</h4>
                    </div>
                    <div class="bn-price-sz bn-price-first">
                        <span>총 상품 가격</span><br>
                        <span class="price original-price"></span>&nbsp;&#8361;
                    </div>
                    <div class="bn-price-sz bn-price-ml">
                        <span>쿠폰 할인가</span><br>
                        <span class="price discount-price"></span>&nbsp;&#8361;
                    </div>
                    <div class="bn-price-sz bn-price-ml">
                        <span>총 결제 금액</span><br>
                        <span class="price after-price"></span>&nbsp;&#8361;
                    </div>
                    <div>
                        <input type="checkbox" id="agreePay">
                        <label class="agree-label">상품의 가격,할인,배송정보,결제대행을 모두 확인하였으며 상품 결제에 동의합니다.</label>
                    </div>
                    <div class="bn-button">
                        <button id="paybutton" onclick="progressPay()" class="btn btn-secondary" style="width:80%;">결제하기</button>
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
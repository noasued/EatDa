<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<!-- 부트스트랩 CDN 안쓰시는 아래 두 개 분들은 빼세요 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
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
    </style>

<title>Insert title here</title>
</head>
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
                            <input type="text" name="name" class="input">
                        </div>
                    </div>
                    <div class="del-input-div">
                        <div class="box-gray title-box">주소</div>
                        <div class="del-second-div">
                            <input type="text" name="name" class="input" disabled>
                        </div>
                    </div>
                    <div class="del-input-div">
                        <div class="box-gray title-box">연락처</div>
                        <div class="del-second-div">
                            <input type="text" name="name" class="input">
                        </div>
                    </div>
                    <div class="del-input-div">
                        <div class="box-gray title-box">배송 시 요청사항</div>
                        <div class="del-second-div">
                            <input type="text" name="name" class="input">
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
                            <img src="r${dto.img_path}" alt="상품">
                        </div>
                        <div class="p-row-second">
                            <span>${dto.p_name}</span>
                        </div>
                        <div class="p-row-third">
                            <span>${dto.cart_count}</span>
                            <span>개</span>
                        </div>
                        <div class="p-row-fourth">
                            <span>${dto.cart_price}</span>
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
                        <select>
                            <option value="10">단 오늘 하루만 10% 쿠폰</option>
                            <option value="20">너랑 나 오늘 이거 먹으면 배터지는거다. 30% 쿠폰</option>
                            <option value="30">니 내 누군지 아니? 통 크게 50% 쿠폰</option>
                        </select>
                    </div>

                    <div class="coupon-info">
                        <div class="coupon-info-ori">
                            <span>원래 금액 > </span>
                            <span>42000</span>&#8361;
                        </div>
                        <div class="coupon-info-icon">
                            <img src="resources/images/market/trans.png" alt="trans" id="trans">
                        </div>
                        <div class="coupon-info-after">
                            <span>쿠폰 적용 가 > </span>
                            <span>34000</span>&#8361;
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
                                            <input type="radio" name="payment"><label>신용카드</label><br>
                                            <span class="payment-desc">신용카드 약관 설명</span>
                                        </div>
                                        <div>
                                            <input type="radio" name="payment"><label>무통장입금</label><br>
                                            <span class="payment-desc">무통장 입금 설명</span>
                                        </div>
                                        <div>
                                            <input type="radio" name="payment"><label>카카오페이</label><br>
                                            <span class="payment-desc">서비스 준비중입니다. 빠른 시일 내로 서비스하겠습니다.</span>
                                        </div>
                                        <div>
                                            <input type="radio" name="payment"><label>토스페이</label><br>
                                            <span class="payment-desc">서비스 준비중입니다. 빠른 시일 내로 서비스하겠습니다.</span>
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
                        <span>총 상품 가격</span>
                        <span></span>
                    </div>
                    <div class="bn-price-sz bn-price-ml">
                        <span>쿠폰 할인가</span>
                        <span></span>
                    </div>
                    <div class="bn-price-sz bn-price-ml">
                        <span>총 결제 금액</span>
                        <span></span>
                    </div>
                    <div>
                        <input type="checkbox" id="agreePay">
                        <label class="agree-label">상품의 가격,할인,배송정보,결제대행을 모두 확인하였으며 상품 결제에 동의합니다.</label>
                    </div>
                    <div class="bn-button">
                        <button class="btn btn-secondary" style="width:80%;">결제하기</button>
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
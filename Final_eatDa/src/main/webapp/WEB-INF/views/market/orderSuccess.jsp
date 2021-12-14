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
		min-width:1400px; 
		height:auto;
	}
</style>

	<style type="text/css">
        .rows-width {
            width: 70%;
            height: auto;
            margin:0px auto;
        }

        .first-section {
            padding: 3%;
        }
        .second-section {
            background-color:aliceblue;
            height:20%;
            border-radius: 3px;
        }

        .desc {
            letter-spacing: 2px;
            font-size: large;
        }

        /*
            주문한 수량에 맞게 height 조절되어야함
        */
        .title-section {
            margin-top: 5%;
            padding: 10px;
            height: auto;
            box-shadow: 0px 4px 4px -4px gray;
        }

        .payment-section {
            padding: 10px;
            padding-top:20px;
            height: auto;
            padding-bottom: 0;
        }

        .bottom-box-shadow {
            box-shadow: 0px 4px 4px -4px gray;
        }

        .product-section {
            height: auto;
            box-shadow: 0px 4px 4px -4px gray;
        }
        .product-img {
            width: 90%;
            height: 90%;
            margin-left:10px;
        }
        
        .title {
            letter-spacing: 1px;
            font-size: medium;
            font-weight: lighter;
        }
        
        .bottm-btn {
            margin-left: 1%;
            margin-right: 1%;
            width:40%;
        }
        .li-div div {
        	margin-top:15px;
        	padding-left:20px;
        }
        .p-price {
        	padding-top: 10px;
        }
        .p-info {
        	padding-top:10px; padding-left:20px;
        }
        .p-img {
        	padding: 20px;
        }

    </style>

<title>Insert title here</title>
</head>
<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>

	<!-- description part -->
    <div class="container-fluid">
        <div class="row rows-width first-section" style="margin:0px auto; margin-top: 5%;">
            <div class="col-md-12" align="center">
                <h1 class="display-5" style="font-weight: bold; letter-spacing:3px;">주문 완료</h1><br>
                <div class="desc">주문이 정상적으로 완료되었습니다.</div>
                <div class="desc">주문하신 내역은 마이페이지 > 내 주문목록 에서 확인하실 수 있습니다.</div>
                <br>
                <div class="desc">* 카드 결제 시 바로 상품 준비가 시작됩니다.</div>
                <div class="desc">* 무통장 입금으로 결제 진행 시 입금 확인 후 상품 준비가 시작됩니다.</div>
            </div>
        </div>

        <div class="row rows-width second-section" style="margin:0px auto;">
            <div class="col-md-12" align="center" style="height: 120px; padding-top:30px;">
                <div class="desc">무통장 입금 시 주문 날짜 3일 이내에 입금 완료를 해주셔야 주문이 진행됩니다.</div>
                <div class="desc" style="margin-top:30px;">계좌번호 : (주)EatDa : (기업은행)123-456-7891011</div>
            </div>
        </div>
    </div>


    <!-- product part -->
    <div class="container-fluid">
        <div class="row rows-width title-section" style="margin:0px auto; margin-top: 5%;">
            <h4>주문 상품 정보</h4>
        </div>

        <!-- 주문 상품에 따라서 동적으로 처리 -->
        <!-- 상품 한 종류 -->
        <div class="row rows-width product-section" style="margin:0px auto;">
            <div class="col-md-2 p-img">
                <img src="resources/images/market/shot.png" alt="상품" class="product-img">
            </div>
            <div class="col-md-6 li-div p-info">
            	<div>
            		<span class="title">상품 명 : </span>
                    <span>한우 우거지탕 1인분</span>
          		</div>
          		<div>
            		<span class="title">주문 수량 : </span>
					<span>3</span>
          		</div>
            </div>
            <div class="col-md-4 li-div p-price">
            	<div>
            		<span class="title">상품 금액 : </span>
					<span>42000</span>
					<span>&#8361;</span>
          		</div>
          		<div>
            		<span class="title">할인 금액 : </span>
					<span>8000</span>
					<span>&#8361;</span>
          		</div>
          		<div>
            		<span class="title">결제 금액 : </span>
					<span>34000</span>
					<span>&#8361;</span>
          		</div>
            </div>
        </div>
    </div>

    <!-- payment part -->
    <div class="container-fluid">
        <div class="row rows-width payment-section" style="margin:0px auto;">
            <h4>결제 정보</h4>
        </div>
        <div class="row rows-width bottom-box-shadow" style="margin:0px auto; padding-bottom:2%;">
            <div class="col-md-12 li-div">
            	<div>
            		<span class="title">총 상품 금액 : </span>
					<span>42000</span>
            		<span>&#8361;</span>
          		</div>
          		<div>
            		<span class="title">총 할인 금액 : </span>
            		<span>8000</span>
            		<span>&#8361;</span>
          		</div>
          		<div>
            		<span class="title">총 결제 금액 : </span>
            		<span>34000</span>
            		<span>&#8361;</span>
          		</div>
          		<div>
            		<span class="title">주문번호 : </span>
            		<span>B14221255</span>
          		</div>
          		<div>
            		<span class="title">결제방식 : </span>
            		<span>카드결제</span>
          		</div>
          		<div>
            		<span class="title">주문일시 : </span>
            		<span>2021/12/25</span>
          		</div>
            </div>
        </div>
    </div>
    <!-- delivery part -->
    <div class="container-fluid">
        <div class="row rows-width payment-section" style="margin:0px auto;">
            <h4>배송지 정보</h4>
        </div>
        <div class="row rows-width bottom-box-shadow" style="margin:0px auto; padding-bottom:2%;">
            <div class="col-md-12 li-div" style="margin-bottom:10px;">
            	<div>
            		<span class="title">받는 분 : </span>
            		<span>홍길동</span>
          		</div>
          		<div>
            		<span class="title">연락처 : </span>
            		<span>010-1234-5678</span>
          		</div>
          		<div>
            		<span class="title">주소 : </span>
            		<span>서울시 은평구 통일로 1234</span>
          		</div>
          		<div>
            		<span class="title">배송 메시지 : </span>
            		<span>동에 번쩍 서에 번쩍</span>
          		</div>
            </div>
        </div>

        <div class="row rows-width btn-part" style="margin:30px auto 100px;">
            <div class="col-md-2"></div>
            <div class="col-md-8" align="center">
                <button class="btn btn-primary btn-lg bottm-btn">홈으로</button>
                <button class="btn btn-primary btn-lg bottm-btn">배송 확인하기</button>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
    
    <div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>


</body>
</html>
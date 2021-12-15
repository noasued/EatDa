<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 부트스트랩 CDN 안쓰시는 아래 두 개 분들은 빼세요 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Cute+Font&family=IBM+Plex+Sans+KR:wght@200&display=swap" rel="stylesheet">
<link rel="stylesheet" href="resources/css/market/marketMain.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>
.banner {
	background-image: url(resources/images/market/market-banner2.png);
	background-size: cover;
	width: 100%;
	margin: 0 auto;
	height: 400px;
	margin-bottom: 30px;
	padding-top: 180px;
	border-radius: 4px;
}

.search-wide {
	width: 55%;
	padding-left: 5%;
	height: 40px;
	border: 1px solid lightblue;
	border-radius: 25px;
}

.search-box-wide {
	padding-left: 31%;
}

.page-navi {
  width: 100%;
  height: 20%;
  margin: 0 auto;
  margin-top: 1%;
  margin-bottom: 1%
}

.page-navi div span {
  color: rgb(148, 148, 32);
  font-size: larger;
}
</style>

<title>Insert title here</title>

<script type="text/javascript">
$(document).ready(function() {
    //검색바 사이즈 조절
    $('#search-bar').click(function() {
        $('.search-box-narrow').css({"padding-left":"31%"});
        $('#search-bar').animate({width:'55%'},200);
    });
    $('#search-bar').focusout(function() {
        $('#search-bar').css({'width':'30%'}).val('');
        $('.search-box-narrow').css({'padding-left':'42%'});
    });

    //배너 사진 변경
    let index = 2;
    window.setInterval(function() {
        console.log('왜안돼'+index)
        if (index == 5) {
            index = 1;
        }
        $('.banner').animate({opacity:0}, 800, function() {
            $('.banner').css('background-image','url(resources/images/market/market-banner'+index+'.png)');
        });
        $('.banner').animate({opacity:1}, 800);
        index++;
    }, 7000);
    
    
});
</script>

</head>
<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>

	<!-- 본문 작성 -->

	<div class="fixed-Banner">
		<div class="like-title">내가 찜한 상품</div>
		<!-- 이미지만 리스트로 -->
		<div class="like-img-div">
			<img class="like-img" src="resources/images/market/shot.png">
		</div>

		<div class="like-img-div">
			<img class="like-img" src="resources/images/market/list.png">
		</div>
	</div>

	<div class="container" style="height: fit-content;">


		<!-- 베너 -->
		<div class="row" style="margin-top: 10px;">
			<div class="row page-navi">
	            <div class="col-md-3">
	                <span>
	                    HOME > MARKET
	                </span>
	            </div>
	        </div>
		
			<div class="col-md-12 banner">
				<div class="banner-content">
					<div class="banner-text">우리의 밥상에 건강과 행복을 차려볼까요?</div>
				</div>
				<div class="search-box-narrow">
					<input type="text" class="search-narrow" name="" id="search-bar"
						placeholder="키워드를 입력해주세요.">
				</div>
			</div>
		</div>

		<!-- 태그 -->
		<div class="row">
			<ul class="keyword-tag" style="margin: 0 auto; width: auto;">
				<li>
                    <span style="color: red;">#키워드검색</span>
                </li>
				<li><span>#양식</span></li>
				<li><span>#중식</span></li>
				<li><span>#일식</span></li>
				<li><span>#한식</span></li>
				<li><span>#고기만</span></li>
				<li><span>#비건</span></li>
				<li><span>#해산물</span></li>
				<li><span>#스페인</span></li>
			</ul>
		</div>

		<hr id="horizontal">

		<div class="row" style="margin: 5px 0 30px 0">
			<div class="col-md-3 info-quantity">
				<span style="margin-left: 30%">총 12개</span>
			</div>
			<div class="col-md-6" align="center">
				<span class="info-title">전체 상품</span>
			</div>
		</div>

		<!-- 상품 리스트 -->
		<div class="row product-section">
			<!--상품 리스트 한 줄-->
			<div class="col-md-12">
				<!--상품 카드-->
				<div class="product-card" style="margin: 0 2%;">
					<div class="product-img" align="center">
						<img src="resources/images/market/list.png" alt="img"
							class="p-img">
					</div>
					<div class="product-desc">
						<div class="product-margin">
							<span class="short-desc">빠끄~~ 소갈비를 플렉스!</span><br>
						</div>
						<div class="product-margin">
							<span class="product-title">소갈비찜~1인분입니다~</span><br>
						</div>
						<div class="product-margin"
							style="margin-top: 20px; margin-bottom: 15px;">
							<span class="product-price">9999999999원</span> <img
								src="resources/images/market/shop.png" alt="장바구니"
								class="shop-cart">
						</div>
					</div>
				</div>

				<div class="product-card" style="margin: 0 2%;">
					<div class="product-img" align="center">
						<img src="resources/images/market/list.png" alt="img"
							class="p-img">
					</div>
					<div class="product-desc">
						<div class="product-margin">
							<span class="short-desc">빠끄~~ 소갈비를 플렉스!</span><br>
						</div>
						<div class="product-margin">
							<span class="product-title">소갈비찜~1인분입니다~</span><br>
						</div>
						<div class="product-margin"
							style="margin-top: 20px; margin-bottom: 15px;">
							<span class="product-price">9999999999원</span> <img
								src="resources/images/market/shop.png" alt="장바구니"
								class="shop-cart">
						</div>
					</div>
				</div>

				<div class="product-card" style="margin: 0 2%;">
					<div class="product-img" align="center">
						<img src="resources/images/market/list.png" alt="img"
							class="p-img">
					</div>
					<div class="product-desc">
						<div class="product-margin">
							<span class="short-desc">빠끄~~ 소갈비를 플렉스!</span><br>
						</div>
						<div class="product-margin">
							<span class="product-title">소갈비찜~1인분입니다~</span><br>
						</div>
						<div class="product-margin"
							style="margin-top: 20px; margin-bottom: 15px;">
							<span class="product-price">9999999999원</span> <img
								src="resources/images/market/shop.png" alt="장바구니"
								class="shop-cart">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row product-section">
			<!--상품 리스트 한 줄-->
			<div class="col-md-12">
				<!--상품 카드-->
				<div class="product-card" style="margin: 0 2%;">
					<div class="product-img" align="center">
						<img src="resources/images/market/list.png" alt="img"
							class="p-img">
					</div>
					<div class="product-desc">
						<div class="product-margin">
							<span class="short-desc">빠끄~~ 소갈비를 플렉스!</span><br>
						</div>
						<div class="product-margin">
							<span class="product-title">소갈비찜~1인분입니다~</span><br>
						</div>
						<div class="product-margin"
							style="margin-top: 20px; margin-bottom: 15px;">
							<span class="product-price">9999999999원</span> <img
								src="resources/images/market/shop.png" alt="장바구니"
								class="shop-cart">
						</div>
					</div>
				</div>

				<div class="product-card" style="margin: 0 2%;">
					<div class="product-img" align="center">
						<img src="resources/images/market/list.png" alt="img"
							class="p-img">
					</div>
					<div class="product-desc">
						<div class="product-margin">
							<span class="short-desc">빠끄~~ 소갈비를 플렉스!</span><br>
						</div>
						<div class="product-margin">
							<span class="product-title">소갈비찜~1인분입니다~</span><br>
						</div>
						<div class="product-margin"
							style="margin-top: 20px; margin-bottom: 15px;">
							<span class="product-price">9999999999원</span> <img
								src="resources/images/market/shop.png" alt="장바구니"
								class="shop-cart">
						</div>
					</div>
				</div>

				<div class="product-card" style="margin: 0 2%;">
					<div class="product-img" align="center">
						<img src="resources/images/market/list.png" alt="img"
							class="p-img">
					</div>
					<div class="product-desc">
						<div class="product-margin">
							<span class="short-desc">빠끄~~ 소갈비를 플렉스!</span><br>
						</div>
						<div class="product-margin">
							<span class="product-title">소갈비찜~1인분입니다~</span><br>
						</div>
						<div class="product-margin"
							style="margin-top: 20px; margin-bottom: 15px;">
							<span class="product-price">9999999999원</span> <img
								src="resources/images/market/shop.png" alt="장바구니"
								class="shop-cart">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row product-section">
			<!--상품 리스트 한 줄-->
			<div class="col-md-12">
				<!--상품 카드-->
				<div class="product-card" style="margin: 0 2%;">
					<div class="product-img" align="center">
						<img src="resources/images/market/list.png" alt="img"
							class="p-img">
					</div>
					<div class="product-desc">
						<div class="product-margin">
							<span class="short-desc">빠끄~~ 소갈비를 플렉스!</span><br>
						</div>
						<div class="product-margin">
							<span class="product-title">소갈비찜~1인분입니다~</span><br>
						</div>
						<div class="product-margin"
							style="margin-top: 20px; margin-bottom: 15px;">
							<span class="product-price">9999999999원</span> <img
								src="resources/images/market/shop.png" alt="장바구니"
								class="shop-cart">
						</div>
					</div>
				</div>

				<div class="product-card" style="margin: 0 2%;">
					<div class="product-img" align="center">
						<img src="resources/images/market/list.png" alt="img"
							class="p-img">
					</div>
					<div class="product-desc">
						<div class="product-margin">
							<span class="short-desc">빠끄~~ 소갈비를 플렉스!</span><br>
						</div>
						<div class="product-margin">
							<span class="product-title">소갈비찜~1인분입니다~</span><br>
						</div>
						<div class="product-margin"
							style="margin-top: 20px; margin-bottom: 15px;">
							<span class="product-price">9999999999원</span> <img
								src="resources/images/market/shop.png" alt="장바구니"
								class="shop-cart">
						</div>
					</div>
				</div>

				<div class="product-card" style="margin: 0 2%;">
					<div class="product-img" align="center">
						<img src="resources/images/market/list.png" alt="img"
							class="p-img">
					</div>
					<div class="product-desc">
						<div class="product-margin">
							<span class="short-desc">빠끄~~ 소갈비를 플렉스!</span><br>
						</div>
						<div class="product-margin">
							<span class="product-title">소갈비찜~1인분입니다~</span><br>
						</div>
						<div class="product-margin"
							style="margin-top: 20px; margin-bottom: 15px;">
							<span class="product-price">9999999999원</span> <img
								src="resources/images/market/shop.png" alt="장바구니"
								class="shop-cart">
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="row" style="margin: 0 auto;">
			<!--페이징 구현-->
			<div class="col-md-12" align="center">
				<div class="paging-section">
					<div class="pagination" align="center">
						<a href="#">&laquo;</a> <a href="#" class="active">1</a> <a
							href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
						<a href="#">6</a> <a href="#">7</a> <a href="#">&raquo;</a>
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
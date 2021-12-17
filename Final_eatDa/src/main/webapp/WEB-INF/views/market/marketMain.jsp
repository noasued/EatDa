<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<%@ page import="com.project.eatda.dto.ProductDto" %>
<%@ page import="java.util.List" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- 부트스트랩 CDN 안쓰시는 아래 두 개 분들은 빼세요 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Cute+Font&family=IBM+Plex+Sans+KR:wght@200&display=swap" rel="stylesheet">
<link rel="stylesheet" href="resources/css/market/marketMain.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<title>Insert title here</title>

<style type="text/css">
.pagination a:hover {
	cursor:pointer;
}
	
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
.fixed-Banner {
  right:0px;
  position:fixed; width:100px; margin:5% 5% 1% 1%; height:250px;
  padding:10px; box-shadow: 0 5px 5px grey; border-radius: 9px;
  border: 1px gray solid; overflow:scroll;
}

.like-img:hover, .product-title:hover, .product-img:hover, .shop-cart:hover {
	cursor:pointer;
}
</style>


<script type="text/javascript">
$(document).ready(function() {
	takeProduct(1);
	pagination();
	likeProduct();
	
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


//상품 리스트업 함수
function takeProduct(num) {
	$('.product-container').html('');
	let sNum = String(num);
	
	$.ajax({
		url: "product.do",
		type: "post",
		data: sNum,
		dataType: "json",
		success:function(list) {
			let data = list;
			let idx = 0;
			let col = 0;
			
			$(data).each(function(key, value) {
				
				if (idx == 0) {
					$('.product-container').append(
							"<div class='row product-section'>" + "<div class='col-md-12 product-col'>" +
							"<div class='product-card' style='margin: 0 2%;'>" +
							"<div class='product-img' align='center'>" +
							"<img src='"+ value.img_path +"' class='p-img' onclick=''>" +
							"</div>" +
							"<div class='product-desc'>" +
							"<div class='product-margin'>" +
							"<span class='short-desc'>" + value.p_short_desc + "</span><br>" +
							"</div>" +
							"<div class='product-margin'>" +
							"<span class='product-title' onclick=''>" + value.p_name + "</span><br>" +
							"</div>" +
							"<div class='product-margin' style='margin-top: 20px; margin-bottom: 15px;'>" +
							"<span class='product-price'>" + value.p_price + "원</span>" +
							"<img src='resources/images/market/shop.png' class='shop-cart' onclick=''>" +
							"</div>" +
							"</div>" +
							"</div>"
					);
					idx++;
					
				} else {
					$('.product-col').eq(col).append(
							"<div class='product-card' style='margin: 0 2%;'>" +
							"<div class='product-img' align='center'>" +
							"<img src='"+ value.img_path +"' class='p-img' onclick=''>" +
							"</div>" +
							"<div class='product-desc'>" +
							"<div class='product-margin'>" +
							"<span class='short-desc'>" + value.p_short_desc + "</span><br>" +
							"</div>" +
							"<div class='product-margin'>" +
							"<span class='product-title' onclick=''>" + value.p_name + "</span><br>" +
							"</div>" +
							"<div class='product-margin' style='margin-top: 20px; margin-bottom: 15px;'>" +
							"<span class='product-price'>" + value.p_price + "원</span>" +
							"<img src='resources/images/market/shop.png' class='shop-cart' onclick=''>" +
							"</div>" +
							"</div>" +
							"</div>"	
					);
					
					if (idx != 2) {
						idx++;
					} else if (idx == 2) {
						col++;
						idx = 0;
					}
				} 
			});
		}
	});
}

//페이징 함수
function pagination() {
	let paging = 0;
	
	$.ajax({
		url: "paging.do",
		type: "post",
		dataType: "json",
		success: function(data) {
			paging = Number(data)/9;
			
			for (var i = 1; i <= paging; i++) {
				$("#left-paging").after(
					"<a onclick='movePage(this)' class='active'>"+i+"</a>"
				);
			}
		}
	});
}

//페이지 이동할 때 함수
function movePage(object) {
	let page = Number($(object).text());
	takeProduct(page);
}

let presentPage = Number($('.active').text());

//페이지 << >> 클릭
function leftPaging() {
	let prevPage = $('.active').prev().text();
	
	if (prevPage == '«') {
		console.log('못감');
		return;
	} else {
		takeProduct(presentPage - 1);
		$('.active').prev().addClass('active');
		$('.active').eq(1).removeClass('active');
	}
}

function rightPaging() {
	let nextPage = $('.active').next().text();
	
	if (nextPage == '»') {
		console.log('못감');
		return;
	} else {
		takeProduct(presentPage + 1);
		$('.active').next().addClass('active');
		$('.active').eq(0).removeClass('active');
	}
}
</script>

<script type="text/javascript">
//좋아하는 상품 이미지 가져오기
//product_like 테이블, product 테이블 조인해서 데이터 가져오면 됨
function likeProduct() {
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

function goLikeProduct(object) {
	let p_id = $(object).attr('id');
	//location.href=''+p_id;
}
</script>

<script type="text/javascript">
//키워드 검색
function hashTagSearch(object) {
	let tagname = $(object).text().substring(1);
	
	
	tagname = tagMatch(tagname);
	console.log(tagname);
	
	$.ajax({
		url:"hashTagSearch.do",
		type:"post",
		data: tagname,
		success:function(list) {
			$('.product-container').html('');
			let data = list;
			let idx = 0;
			let col = 0;
			
			$(data).each(function(key, value) {
				if (idx == 0) {
					$('.product-container').append(
							"<div class='row product-section'>" + "<div class='col-md-12 product-col'>" +
							"<div class='product-card' style='margin: 0 2%;'>" +
							"<div class='product-img' align='center'>" +
							"<img src='"+ value.img_path +"' class='p-img' onclick=''>" +
							"</div>" +
							"<div class='product-desc'>" +
							"<div class='product-margin'>" +
							"<span class='short-desc'>" + value.p_short_desc + "</span><br>" +
							"</div>" +
							"<div class='product-margin'>" +
							"<span class='product-title' onclick=''>" + value.p_name + "</span><br>" +
							"</div>" +
							"<div class='product-margin' style='margin-top: 20px; margin-bottom: 15px;'>" +
							"<span class='product-price'>" + value.p_price + "원</span>" +
							"<img src='resources/images/market/shop.png' class='shop-cart' onclick=''>" +
							"</div>" +
							"</div>" +
							"</div>"
					);
					idx++;
					
				} else {
					$('.product-col').eq(col).append(
							"<div class='product-card' style='margin: 0 2%;'>" +
							"<div class='product-img' align='center'>" +
							"<img src='"+ value.img_path +"' class='p-img' onclick=''>" +
							"</div>" +
							"<div class='product-desc'>" +
							"<div class='product-margin'>" +
							"<span class='short-desc'>" + value.p_short_desc + "</span><br>" +
							"</div>" +
							"<div class='product-margin'>" +
							"<span class='product-title' onclick=''>" + value.p_name + "</span><br>" +
							"</div>" +
							"<div class='product-margin' style='margin-top: 20px; margin-bottom: 15px;'>" +
							"<span class='product-price'>" + value.p_price + "원</span>" +
							"<img src='resources/images/market/shop.png' class='shop-cart' onclick=''>" +
							"</div>" +
							"</div>" +
							"</div>"	
					);
					
					if (idx != 2) {
						idx++;
					} else if (idx == 2) {
						col++;
						idx = 0;
					}
				}
			});
		}
	});
}

//태그이름 영문이름으로 변경
function tagMatch(tagName) {
	switch (tagName) {
		case '한식' : return 'korean';
		case '일식' : return 'japanese';
		case '중식' : return 'chinese';
		case '양식' : return 'western';
		case '비건' : return 'vegan';
		case '고기만' : return 'meat';
		case '해산물' : return 'fish';
		case '스페인' : return 'spanish';
	}
}
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
					<input type="text" class="search-narrow" id="search-bar" placeholder="키워드를 입력해주세요.">
				</div>
			</div>
		</div>

		<!-- 태그 -->
		<div class="row">
			<ul class="keyword-tag" style="margin: 0 auto; width: auto;">
				<li>
                    <span onclick="takeProduct(1)" style="color: red;">#키워드검색</span>
                </li>
				<li><span onclick="hashTagSearch(this)">#양식</span></li>
				<li><span onclick="hashTagSearch(this)">#중식</span></li>
				<li><span onclick="hashTagSearch(this)">#일식</span></li>
				<li><span onclick="hashTagSearch(this)">#한식</span></li>
				<li><span onclick="hashTagSearch(this)">#비건</span></li>
				<li><span onclick="hashTagSearch(this)">#고기만</span></li>
				<li><span onclick="hashTagSearch(this)">#해산물</span></li>
				<li><span onclick="hashTagSearch(this)">#스페인</span></li>
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

		<div class="product-container">
		<!-- 상품 리스트 -->
		</div>

		<div class="row" style="margin: 0 auto;">
			<!--페이징 구현-->
			<!-- 현재 페이지는 class='active' -->
			<div class="col-md-12" align="center">
				<div class="paging-section">
					<div class="pagination" align="center">
						<a id="left-paging" onclick="leftPaging()">&laquo;</a> 
						<a id="right-paging" onclick="rightPaging()">&raquo;</a>
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
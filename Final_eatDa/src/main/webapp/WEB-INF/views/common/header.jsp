<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to EatDa</title>

<link href="resources/css/common/headerNew.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="resources/css/login/login_main.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Cute+Font&family=IBM+Plex+Sans+KR:wght@200&family=Nanum+Myeongjo&display=swap" rel="stylesheet">
<script type="text/javascript">
    function loginModalIn() {
		$(".login_wrap1").fadeIn();
    }
    function loginModalOut() {
		$(".login_wrap1").fadeOut();
    }
</script>
</head>
<body>
	<div class="container-fluid header"
		style="position: fixed; top: 0; right: 0; left: 0; z-index: 1;">
		<div class="row top-banner" align="center"
			style="background-color: rgb(240, 220, 170); height: 32px">
			<a href="#" class="banner-text" style=""> 회원가입하고 최대 80% 쿠폰 받아가자!
			</a>
		</div>
		<div class="row top-header">
			<div class="col-sm-1"></div>
			<div class="col-sm-8">
				<div class="img-div">
					<a href="index.do"> <img id="logo"
						src="resources/images/logo.png">
					</a>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
		<div class="row bottom-header">
			<div class="col-sm-1"></div>
			<div class="col-sm-8 nav-list">
				<ul class="header-ul">
					<li class="nav-menu"><a class="header-a" href="marketMain.do">마켓</a></li>
					<li class="nav-menu"><a class="header-a" href="recipeListTest.do">레시피</a></li>
					<li class="nav-menu"><a class="header-a" href="foodbti.do">컨텐츠</a>
						<ul class="sub-menu">
							<li><a class="header-a" href="foodbti.do">음BTI</a></li>
						</ul>
					</li>
					<li class="nav-menu"><a class="header-a" href="blog.do">잇다그램</a>
						<ul class="sub-menu">
							<li><a class="header-a" href="blog.do">EatDagram</a></li>
							<li><a class="header-a" href="event.do">이벤트</a></li>
						</ul>
					</li>
					<li class="nav-menu"><a class="header-a" href="subMain.do">정기구독</a></li>
					<li class="nav-menu"><a class="header-a" href="#">마이페이지</a>
						<ul class="sub-menu">
							<li><a class="header-a" href="mypage.do">마이페이지</a></li>
							<li><a class="header-a" href="goShoppingBag.do">장바구니</a></li>
							<li><a class="header-a"
								href="mypage_subscription_list.do?user_id=${member.user_id }">구독내역</a></li>
							<li><a class="header-a" href="mypage_like.do">찜목록</a></li>
							<li><a class="header-a"
								href="mypage_couponList.do?user_id=${member.user_id }">쿠폰함</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="col-sm-3" align="right" style="padding: 20px 6% 0 0;">
				<c:choose>
					<c:when test="${member != null}">
						<span id="user-name">${member.user_name}님 반가워요😃</span>&nbsp;&nbsp;&nbsp;
						<span style="color: gray" id="logout-btn"
							onclick="location.href='logout.do'">로그아웃</span>
					</c:when>
					<c:otherwise>
						<span id="login" style="color: gray;" onclick="loginModalIn()">로그인</span>
					</c:otherwise>
				</c:choose>
				<div class="login_wrap1" style="z-index: 1;">
					<div class="login_wrap">
						<div class="login">
							<div class="login_modal_close">
								<a id="modal_close_btn" onclick="loginModalOut()">X</a>
							</div>
							<form action="loginCheck.do" method="post" class="login_form">
								<div class="logo">
									<img src="resources/images/logo.png" width="200" height="70">
								</div>
								<div class="login_id">
									<span>ID</span><br> <input type="text" name="user_id"
										id="user_id">
								</div>
								<div class="login_pw">
									<span>Password</span><br> <input type="password"
										name="user_pw" id="user_pw">
								</div>
								<div class="login_btn">
									<input type="submit" id="submitBtn" value="L O G I N">
								</div>
								<div class="login_regist" align="center">
									<span>아직도 회원이 아니신가요?</span><br>
									<br> <a href="regist_form.do">회원가입</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:if test="${msg == 'fail' }">
		<script type="text/javascript">
			alert('로그인 실패');
		</script>
	</c:if>
</body>
</html>
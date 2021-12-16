<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to EatDa</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="resources/css/common/header.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style type="text/css">
.nav {
	background-color:#FDD354;
	width: 100%;
	height: 140px;
	box-sizing: border-box;
	display: inline-block;
	border-bottom: 1px solid gray;
	box-shadow: 0px 4px 4px -4px gray;
}
</style>

</head>
<body>
    <div class="nav" style="box-shadow: 0px 4px 6px -4px gray;">
    	<div style="width:80%; margin:0 auto; margin-bottom:20px;">
	        <ul class="nav__list">
	          <li class="nav__logo"><a href="index.do"><img src="resources/images/logo.png"></a></li>
	          <li class="nav__recipe"><a href="recipeList.do">레시피</a></li>

	          <li class="nav__blog"><a href="#">블로그</a>
	            <ul class="nav-sub">
	              <li class="nav-sub__blog"><a href="#">블로그</a></li>
	              <li class="nav-sub__event"><a href="#">이벤트</a></li>
	            </ul>
	          </li>
	          <li class="nav__subscription"><a href="#">구독신청</a></li>
	          <li class="nav__market"><a href="marketMain.do">마켓</a></li>
	          <li class="nav__mypage"><a href="#">마이페이지</a>
		          <ul class="nav-sub">
		             <li class="nav-sub__mypage"><a href="#">마이페이지</a></li>
		             <li class="nav-sub__subscription"><a href="#">구독내역</a></li>
		             <li class="nav-sub__subscription"><a href="#">장바구니</a></li>
		          </ul>
	          </li>
	          <!-- 로그인이 된다면 로그인 버튼이 로그아웃으로 바뀌도록 구현 -->
	          <li class="nav__login"><a href="#">로그인</a>
		          <ul class="nav-sub">
		             <li class="nav-sub__mypage"><a href="#">회원가입</a></li>
		          </ul>
	          </li>
	        </ul>
        </div>
      </div>
</body>
</html>
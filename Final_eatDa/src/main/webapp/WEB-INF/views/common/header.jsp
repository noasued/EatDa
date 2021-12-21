<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to EatDa</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="resources/css/common/header.css">
<link rel="stylesheet" href="resources/css/login/login_main.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
  $(function(){

    // 로그인 모달 띄우기
    $("#login_modal_btn").click(function(){
    	$(".login_wrap1").fadeIn();
    });
    // 로그인 모달 닫기
    $("#modal_close_btn").click(function(){
      $(".login_wrap1").fadeOut();
    });

  });
  
</script>

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

.login_id #user_id{
	font-size: 0.9rem;
	font-weight: bold;
}

.nav__user{
	margin-top: 25px;
}

.nav__user a{
	font-size: 0.9rem;
}

.nav__user p{
	font-size: 0.7rem;
	color: rgb(80,80,80);
}

.nav__user input{
	width: 50px;
	height: 20px;
	border: 0;
	background: #ffe084;
	color: gray;
	border-radius: 5px;
    font-size: 0.7rem;
    font-weight: bold;
}

</style>

</head>
<body>
    <div class="nav" style="box-shadow: 0px 4px 6px -4px gray;">
    	<div style="width:90%; margin:0 auto; margin-bottom:20px;">
	        <ul class="nav__list">
	          <li class="nav__logo"><a href="index.do"><img src="resources/images/logo.png"></a></li>
	          <li class="nav__recipe"><a href="recipeList.do">레시피</a></li>

	          <li class="nav__blog"><a href="blog.do">블로그</a>
	            <ul class="nav-sub">
	              <li class="nav-sub__blog"><a href="blog.do">블로그</a></li>
	              <li class="nav-sub__event"><a href="event.do">이벤트</a></li>
	            </ul>
	          </li>
	          <li class="nav__subscription"><a href="#">구독신청</a></li>
	          <li class="nav__market"><a href="marketMain.do">마켓</a></li>
	          <li class="nav__mypage"><a href="#">마이페이지</a>
		          <ul class="nav-sub">
		             <li class="nav-sub__mypage"><a href="mypage.do">마이페이지</a></li>
		             <li class="nav-sub__subscription"><a href="mypage_subscription.do">구독내역</a></li>
		             <li class="nav-sub__like"><a href="mypage_like.do">L I K E</a></li>
		             <li class="nav-sub__subscription"><a href="#">장바구니</a></li>
		             <li class="nav-sub__coupon"><a href="mypage_coupon.do">쿠폰함</a></li>
		          </ul>
	          </li>
	          
	          <!-- 로그인/로그아웃 -->
	          <c:choose>
	          	<c:when test="${member != null}">
	          		<li class="nav__user">
	          		<a>${member.user_name } 님🍚</a>
	          		<input type="button" value="Logout" onclick="location.href='logout.do'"><br>
	          		<p>환영합니다 :)</p>		
	          		
	          		</li>
	          	</c:when>
	          	
	          	<c:otherwise>
	          		<li class="nav__login"><a id="login_modal_btn">로그인</a></li>
	          	</c:otherwise>
	          </c:choose>
	          
	          <!-- 로그인 모달 -->
			    <div class="login_wrap1">
		        <div class="login_wrap">
		            <div class="login">
		            	<div class="login_modal_close">
		            		<a id="modal_close_btn">X</a>
		            	</div>
		            <form action="loginCheck.do" method="post" class="login_form">
		                <div class="logo">
		                    <img src="resources/images/logo.png" width="200" height="70">
		                </div>
		                <div class="login_id">
		                    <span>ID</span><br>
		                    <input type="text" name="user_id" id="user_id">     
		                </div>
		                <div class="login_pw">
		                    <span>Password</span><br>
		                    <input type="password" name="user_pw" id="user_pw">
		                </div> 
		                <div class="login_btn">
		                    <input type="submit" id="submitBtn" value="L O G I N">
		                </div>
		                <div class="login_regist">
		                    <span>Not a member yet?</span>
		                    &nbsp;&nbsp;
		                    <a href="regist_form.do">sign up</a>
		                </div>
		  			</form>
		  			</div>
		  		</div>
		  		</div>
	        </ul>
        </div>
      </div>
      <c:if test="${msg == 'fail' }">
        	<script type="text/javascript">
        		alert('로그인 실패');
        	</script>
        </c:if>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to EatDa</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/common/header.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
    <header class="nav">
        <ul class="nav__list">
          <li class="nav__logo"><a href="#"><img src="resources/images/logo.png"></a></li>
          <li class="nav__recipe"><a href="#">레시피</a></li>
          <li class="nav__blog"><a href="#">블로그</a>
            <ul class="nav-sub">
              <li class="nav-sub__blog"><a href="#">블로그</a></li>
              <li class="nav-sub__event"><a href="#">이벤트</a></li>
            </ul>
          </li>
          <li class="nav__subscription"><a href="#">구독신청</a></li>
          <li class="nav__market"><a href="#">마켓</a></li>
          <li class="nav__login">
            <input class="nav__login-btn" type="button" value="로그인" onclick="">
          </li>
        </ul>
      </header>
</body>
</html>
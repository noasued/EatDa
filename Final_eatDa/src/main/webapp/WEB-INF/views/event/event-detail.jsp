<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to EatDa</title>
<style type="text/css">
body{
  margin:0;
  padding:0;
}

.event-detail__top{
  width:100%;
  height:300px;
  background: url('resources/images/event-wine01.png') no-repeat;
  background-size: cover;
  overflow: hidden;
  display: table;
  border: none;
  background-position: 5% 10%;
}

.event-detail__top-txt{
  color:white;
  opacity: 0.4;
  display: table-cell;
  vertical-align: bottom;
}

.event-detail__top h1, .event-detail__top h2{
  display: inline;
}

.event-detail__top-txt h1{
  font-weight: 700;
  font-size:120px;
  height:100px;
  line-height: 105px;
}

.event-detail__top-txt h2{
  margin-left: 350px;
  font-size: 15px;
}
</style>
<link href="resources/css/event/event-detail.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
</head>
<body>
  <div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
  <main class="event-detail">
    <!-- main img -->
    <div class="event-detail__top blog__top">
      <div class="event-detail__top-txt blog__top-txt">
        <h1>eat다 이벤트</h1>
        <h2>eatDa Event</h2>
      </div>
    </div>

    <div class="event-article">
      <div class="detail-article__titlearea">
        <!-- title -->
        <div class="detail-article__title">
          <h2>12월 eat다 이벤트</h2>
        </div>

        <!-- buttons -->
        <div class="detail-article__btn">
          <input type="button" value="수정" onclick="location.href='event-update.do'">
          <input type="button" value="삭제">
          <input type="button" value="목록" onclick="location.href='event.do'">
        </div>
      </div>

      <!-- content -->
      <div class="detail-article__content">
        <img width="600px" src="resources/images/event-content.png">
        <p></p>
      </div>

    </div>
    
  </main>
  <div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>
</html>
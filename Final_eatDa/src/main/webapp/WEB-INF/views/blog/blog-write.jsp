<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to EatDa</title>
<link href="resources/css/blog/blog-write.css" rel="stylesheet">
<script defer src="https://kit.fontawesome.com/bdbb0da9f4.js" crossorigin="anonymous"></script>
</head>
<body>
<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
  <main class="blog-write">
    <!-- main img -->
    <div class="blog-write__top blog__top">
      <div class="blog-write__top-txt blog__top-txt">
        <h1>eat다 블로그</h1>
        <h2>eatDa Blog</h2>
      </div>
    </div>

    <!-- write content -->
    <div class="blog-write__content">
      
      <!-- title -->
      <div class="blog-write__content-title">
        <h2>새 글 작성</h2>
      </div>

			<!-- article -->
      <div class="blog-write__content-article">
        <form action="" method="post">
          <input type="text" name="write-title" placeholder="제목을 입력하세요.">

        </form>




      </div>





    </div>


    



  </main>
  <div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>
</html>
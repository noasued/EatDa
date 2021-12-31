<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eat다</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./resources/summernote/summernote-lite.css">
  
 

  <style type="text/css">
.recipe_content-wrap{
	  margin-top: 30px;
  text-align: justify;
}
.recipe_content-title, .category{
	margin-bottom: 2%;
}
.recipe-button, .recipe_content-title, .recipe_title, .recipe_content-category, .conrainer{
	display: flex;
	justify-content: center;
}

.recipe_title{
	padding-bottom: 15px;
	border-bottom: 0.3px solid rgb(235, 235, 235);
}
.recipe_content-title input{
	margin-top:2%;
	width : 840px;
	height: 40px;
}

.recipe-button{
	margin: 3% 0;
}

.recipe-button input{
	background-color: #fdd300;
	color:  black;
	font-weight: bolder;
	width: 50px;
}
.recipe_top{
	  width:100%;
	  height:200px;
	  background: url('resources/images/recipe/recipeLogo.png') no-repeat;
	  background-size: cover;
	  overflow: hidden;
	  display: table;
	  border: none;
	  background-position: 0 90%;
	  margin-top:155px;
	  
	}

.recipe_content-category{letter-spacing: 8px;}
.recipe_content-category label{margin-right: 2%;}	
.recipe_content-main{margin-left: 13%;}	
  </style>
  
</head>
<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
  <div class="blog-write">
    <!-- main img -->
<div class="recipe_top"></div>

    <!-- write content -->
    <div class="recipe_content-wrap">
      
      <!-- title -->
      <div class="recipe_title">
        <h2>레시피 수정</h2>
      </div>

	<!-- main content -->
      <div class="recipe_content-article">
        <form action="recipeInsertRes.do" method="post">
        	<div class="recipe_content-title">
				<input type="text" name="recipe_title" id="recipe_title" value="${dto.recipe_title }">          
			</div>
			<div class="recipe_content-category">
				<strong>CATEGORY&nbsp;|&nbsp;</strong>
				<label><input type="radio" name="recipe_category" value="한식" <c:if test="${dto.recipe_category eq '한식'}"> checked </c:if>> 한식</label>
				<label><input type="radio" name="recipe_category" value="일식" <c:if test="${dto.recipe_category eq '일식'}"> checked </c:if>> 일식</label>
				<label><input type="radio" name="recipe_category" value="중식" <c:if test="${dto.recipe_category eq '중식'}"> checked </c:if>> 중식</label>
				<label><input type="radio" name="recipe_category" value="양식" <c:if test="${dto.recipe_category eq '양식'}"> checked </c:if>> 양식</label>
				<label><input type="radio" name="recipe_category" value="간단식"<c:if test="${dto.recipe_category eq '간단식'}"> checked </c:if>> 간단식</label>
				<label><input type="radio" name="recipe_category" value="야식" <c:if test="${dto.recipe_category eq '야식'}"> checked </c:if>> 야식</label>
			</div>
			<div class="container">
				<textarea class="summernote" name="editordata">${dto.recipe_content }</textarea>    
			</div>
			<div class="recipe-button ">
				<input type="submit" value="수정"> &nbsp;&nbsp;&nbsp;
				<input type="button" value="취소" onclick="location.href='recipeDetail.do?recipe_no=${dto.recipe_no }'">
			</div>
        </form>

      </div>

    </div>

  </div>
  
  <div id="footer">
		<%@ include file="../common/footer.jsp"%>
  </div>
 <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="./resources/summernote/summernote-lite.js"></script>
  <script src="./resources/summernote/summernote-ko-KR.js"></script>
  <!--  -->
  

<script type="text/javascript">
$('.summernote').summernote({
	  height: 450,
	  width: 880,
	  lang: "ko-KR"
	});
</script>
</body>
</html>
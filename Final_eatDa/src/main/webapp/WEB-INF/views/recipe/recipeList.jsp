<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.body {
	margin-left: 19%
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
	}

.rec_list>img {
	width: 200px;
	height: 200px;
}

.img_wrap {
	position: absolute;
}

.rec_title {
	position: relative;
	top: 165px;
	left: 55px;
}

.rec_title p {
	font-weight: bolder;
	color: white;
}

.bg_img {
	position: relative;
	top: 150px;
	left: 0px;
}

.bg_img>img {
	width: 200px;
	height: 50px;
}

.container {
	
}

.container, .rec_logo {
	margin: 2% 0;
}

.rec_button input {
	background-color: #fdd300;
	color: black;
	font-weight: bolder;
}

.paging, .rec_logo {
	display: flex;
	justify-content: center;
}

.writeBtn {
	margin: 2% 0 2% 70%;
}

.writeBtn {
	width: 100px;
}
</style>
</head>
<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
	
	<div class="recipe_top"></div>
	
	
	<div class="body">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<c:choose>
						<c:when test="${empty list }">
							<p>-----------------작성된 글이 없습니다.-----------------</p>		
						</c:when>
						<c:otherwise>
							<c:forEach items="${list }" var="dto">
								<a href="recipeDetail.do?recipe_no=${dto.recipe_no }">
									<div class="rec_list">
										<div class="img_wrap">
											<div class="bg_img">
												<img src="resources/images/recipe/main_prod_bg.png"></img>
											</div>
										</div>
										<div class="img_wrap">
											<div class="rec_title">
												<p>${dto.recipe_title }</p>
											</div>
										</div>
										<img src="${dto.recipe_image }" />
									</div>
								</a>				
							</c:forEach>
						</c:otherwise>		
					</c:choose>
				</div>
			</div>
		</div>
	</div>

<!--  	<div class="body">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<a href="recipeDetail.do">
						<div class="rec_list">
							<div class="img_wrap">
								<div class="bg_img">
									<img src="resources/images/recipe/main_prod_bg.png"></img>
								</div>
							</div>
							<div class="img_wrap">
								<div class="rec_title">
									<p>고구마빠스!!!!</p>
								</div>
							</div>
							<img src="resources/images/recipe/ppaseu.png"></img>
						</div>
					</a>
				</div>
				<div class="col-md-3">
					<a href="recipeDetail.do">
						<div class="rec_list">
							<div class="img_wrap">
								<div class="bg_img">
									<img src="resources/images/recipe/main_prod_bg.png"></img>
								</div>
							</div>
							<div class="img_wrap">
								<div class="rec_title">
									<p>고구마빠스!!!!</p>
								</div>
							</div>
							<img src="resources/images/recipe/ppaseu.png"></img>
						</div>
					</a>
				</div>
				<div class="col-md-3">
					<a href="recipeDetail.do">
						<div class="rec_list">
							<div class="img_wrap">
								<div class="bg_img">
									<img src="resources/images/recipe/main_prod_bg.png"></img>
								</div>
							</div>
							<div class="img_wrap">
								<div class="rec_title">
									<p>고구마빠스!!!!</p>
								</div>
							</div>
							<img src="resources/images/recipe/ppaseu.png"></img>
						</div>
					</a>
				</div>
			</div>

			<div class="row">
				<div class="col-md-3">
					<a href="recipeDetail.do">
						<div class="rec_list">
							<div class="img_wrap">
								<div class="bg_img">
									<img src="resources/images/recipe/main_prod_bg.png"></img>
								</div>
							</div>
							<div class="img_wrap">
								<div class="rec_title">
									<p>고구마빠스!!!!</p>
								</div>
							</div>
							<img src="resources/images/recipe/ppaseu.png"></img>
						</div>
					</a>
				</div>
				<div class="col-md-3">
					<a href="recipeDetail.do">
						<div class="rec_list">
							<div class="img_wrap">
								<div class="bg_img">
									<img src="resources/images/recipe/main_prod_bg.png"></img>
								</div>
							</div>
							<div class="img_wrap">
								<div class="rec_title">
									<p>고구마빠스!!!!</p>
								</div>
							</div>
							<img src="resources/images/recipe/ppaseu.png"></img>
						</div>
					</a>
				</div>
				<div class="col-md-3">
					<a href="recipeDetail.do">
						<div class="rec_list">
							<div class="img_wrap">
								<div class="bg_img">
									<img src="resources/images/recipe/main_prod_bg.png"></img>
								</div>
							</div>
							<div class="img_wrap">
								<div class="rec_title">
									<p>고구마빠스!!!!</p>
								</div>
							</div>
							<img src="resources/images/recipe/ppaseu.png"></img>
						</div>
					</a>
				</div>
			</div>

			<div class="row">
				<div class="col-md-3">
					<a href="recipeDetail.do">
						<div class="rec_list">
							<div class="img_wrap">
								<div class="bg_img">
									<img src="resources/images/recipe/main_prod_bg.png"></img>
								</div>
							</div>
							<div class="img_wrap">
								<div class="rec_title">
									<p>고구마빠스!!!!</p>
								</div>
							</div>
							<img src="resources/images/recipe/ppaseu.png"></img>
						</div>
					</a>
				</div>
				<div class="col-md-3">
					<a href="recipeDetail.do">
						<div class="rec_list">
							<div class="img_wrap">
								<div class="bg_img">
									<img src="resources/images/recipe/main_prod_bg.png"></img>
								</div>
							</div>
							<div class="img_wrap">
								<div class="rec_title">
									<p>고구마빠스!!!!</p>
								</div>
							</div>
							<img src="resources/images/recipe/ppaseu.png"></img>
						</div>
					</a>
				</div>
				<div class="col-md-3">
					<a href="recipeDetail.do">
						<div class="rec_list">
							<div class="img_wrap">
								<div class="bg_img">
									<img src="resources/images/recipe/main_prod_bg.png"></img>
								</div>
							</div>
							<div class="img_wrap">
								<div class="rec_title">
									<p>고구마빠스!!!!</p>
								</div>
							</div>
							<img src="resources/images/recipe/ppaseu.png"></img>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	-->
	<div class="bottom">
		<div class="rec_button">
			<input class="writeBtn" type="button" value="글쓰기"
				onclick="location.href='recipeWriteForm.do'">
		</div>
		<div class="paging">
			<p>◀ 1 2 3 4 5 ▶</p>
		</div>
	</div>

	<div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>
</html>
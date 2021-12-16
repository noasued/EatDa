<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
hr{
	border: 10px;
	width: 800px;
}
hr{
	margin-left: 35%;
}
.button{
	display: flex;
	justify-content: center;
	margin: 3% 0;
}
.button input{
	background-color: #fdd300;
	color:  black;
	font-weight: bolder;
}
</style>
</head>
<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
	
	<div class="body">
		<div class="container">  
			<div class="title">
				<h4>계란말이</h4>
				<p> 조회수 16</p>
				<img src="resources/images/recipe/heart.png">
				<img src="resources/images/recipe/update.png">
				<img src="resources/images/recipe/delete.png">
			</div>
			<div class="content">
				<hr>
				<img src="resources/images/recipe/eggroll.jpeg">		
				<p> 재료 | 계란3알, 자투리야채(파,양파,당근 추천), 소금약간</p>
				<p> 1. 계란을 깬다</p>
				<p> 2. 야채를 다지고 소금약간과 1번에 넣는다. </p>
				<p> 3. 프라이팬을 약불로 올려놓고 달궈지기전에 계란물 반을 붓는다</p>
				<p> 4. 돌돌 말다가 마지막 말기전에 나머지 반을 부워 다시 만다 </p>	
			</div>	
		</div>
		<hr>
		<div class="button">
			<input type="button" class="list" value="목록" onclick="location.href='recipeList.do'">&nbsp;&nbsp;&nbsp;
			<input type="button" class="update" value="수정" onclick="location.href='recipeUpdateForm.do'">
		</div>
	</div>
	<div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.wrap{
	margin : 2% 30%;
}
.title, .category, .content{
	margin-bottom: 2%;
}
.button, .rec_logo{
	display: flex;
	justify-content: center;
}
.rec_logo{
	margin-top:3%;
}
.button input{
	background-color: #fdd300;
	color:  black;
	font-weight: bolder;
}
</style>
<script type="text/javascript">
	function checkOne(chk){
		var obj = document.getElementsByName("checkbox");
		for(var i=0; i< obj.length; i++){
			if(obj[i] != chk){
				obj[i].checked = false;
			}
		}
	} 
</script>
</head>
<body>
    <div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
	<div class="rec_logo">
		<img src="resources/images/recipe/recipeLogo.png">
	</div>
	<form action="#" method="post">
		<div class="wrap">
			<div class="title">
				<strong>요리명</strong>
				<input type="text" name="recipeTitle" id="recipeTitle">
			</div>
			<div class="category">
				<strong>카테고리</strong>
				<label><input type="checkbox" name="checkbox" value="korea" onclick="checkOne(this)">한식</label>
				<label><input type="checkbox" name="checkbox" value="japan" onclick="checkOne(this)">일식</label>
				<label><input type="checkbox" name="checkbox" value="china" onclick="checkOne(this)">중식</label>
				<label><input type="checkbox" name="checkbox" value="western" onclick="checkOne(this)">양식</label>
				<label><input type="checkbox" name="checkbox" value="simple" onclick="checkOne(this)">간단식</label>
				<label><input type="checkbox" name="checkbox" value="night" onclick="checkOne(this)">야식</label>
			</div>
			<div class="content">
				<textarea rows="10" cols="80"></textarea>
			</div>
			<div class="button">
				<input type="submit" value="수정"> &nbsp;&nbsp;&nbsp;
				<input type="button" value="취소" onclick="location.href='recipeList.do'">
			</div>
		</div>
	</form>
    <div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>
</html>
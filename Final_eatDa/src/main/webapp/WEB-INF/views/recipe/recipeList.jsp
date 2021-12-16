<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.container{
	margin-top : 3%;
	margin-bottom: 3%;
}
.category, .search, .paging{
	display: flex;
	justify-content: center;
}
.category{
	--bs-breadcrumb-divider: '|';
}
.search input{
	width:400px;
	height: 40px;
	text-align: right;
}
.writeBtn{
	margin: 2% 0 2% 80%;
}
ul, li{
	list-style: none;
}
a{
	text-decoration: none;
	color: inherit;
}
.list_wrap ul{
	font-size: 0;
}
.list_wrap .item{
	display: inline-block;
	width: 25%; 
	margin-top:40px;
	margin-left: 5%;
}
.list_wrap .item:ntn-child(-n+3){
	margin-top:0;
}
.list_wrap .item:ntn-child(3n-2){
	margin-left: 0;
}
.list_wrap .item .image{
	width :300px;
	height: 160px;
	
}
.list_wrap .item1 .image{background: url(resources/images/recipe/eggroll.jpeg);}
.list_wrap .item2 .image{background: url(resources/images/recipe/eggroll.jpeg);}
.list_wrap .item3 .image{background: url(resources/images/recipe/eggroll.jpeg);}
.list_wrap .item4 .image{background: url(resources/images/recipe/kimchirice.jpg);}
.list_wrap .item5 .image{background: url(resources/images/recipe/kimchirice.jpg);}
.list_wrap .item6 .image{background: url(resources/images/recipe/kimchirice.jpg);}
.list_wrap .item7 .image{background: url(resources/images/recipe/ppaseu.jpeg);}
.list_wrap .item8 .image{background: url(resources/images/recipe/ppaseu.jpeg);}
.list_wrap .item9 .image{background: url(resources/images/recipe/ppaseu.jpeg);}

.list_wrap .item strong{
    display: block;
    margin-top:130px;
    margin-right:10px;
    text-align: right;
    font-size: 16px;
    letter-spacing: -1px;
    
}
.rec_button input{
	background-color: #fdd300;
	color:  black;
	font-weight: bolder;
}
.bottom{
	margin-top:5%;
	
}
.writeBtn{
	width: 100px;
}
</style>
</head>
<body>
    <div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
	<div class="container">
		<div class="search">
			<input type="text" id="keyword" placeholder="요리명으로 검색해보세요🔎"><br>	
		</div>
		<br>
		<div class="category" aria-label="breadcrumb">
	        <ol class="breadcrumb">
	          <li class="breadcrumb-item b"><a href="#">한식</a></li>
	          <li class="breadcrumb-item b"><a href="#">일식</a></li>
	          <li class="breadcrumb-item b"><a href="#">양식</a></li>
	          <li class="breadcrumb-item b"><a href="#">중식</a></li>
	          <li class="breadcrumb-item b"><a href="#">브런치</a></li>
	          <li class="breadcrumb-item b"><a href="#">야식</a></li>
	        </ol>
		</div>
		
		<div class="list_wrap">
			<ul>
				<li class="item item1">
					<a href="recipeDetail.do">
						<div class="image">사진<strong>계란찜</strong></div>
					</a>
				</li>
				<li class="item item2">
					<a href="recipeDetail.do">
						<div class="image">사진<strong>계란찜</strong></div>
					</a>
				</li>
				<li class="item item3">
					<a href="recipeDetail.do">
						<div class="image">사진<strong>계란찜</strong></div>
					</a>
				</li>
				<li class="item item4">
					<a href="recipeDetail.do">
						<div class="image">사진<strong>김치볶음밥</strong></div>
					</a>
				</li>
				<li class="item item5">
					<a href="recipeDetail.do">
						<div class="image">사진<strong>김치볶음밥</strong></div>
					</a>
				</li>
				<li class="item item6">
					<a href="recipeDetail.do">
						<div class="image">사진<strong>김치볶음밥</strong></div>
					</a>
				</li>
				<li class="item item7">
					<a href="recipeDetail.do">
						<div class="image">사진<strong>빠스</strong></div>
					</a>
				</li>
				<li class="item item8">
					<a href="recipeDetail.do">
						<div class="image">사진<strong>빠스</strong></div>
					</a>
				</li>
				<li class="item item9">
					<a href="recipeDetail.do">
						<div class="image">사진<strong>빠스</strong></div>
					</a>
				</li>
			</ul>
		</div>
		<div class="rec_button">
			<input class="writeBtn" type="button" value="글쓰기" onclick="location.href='recipeWriteForm.do'">
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
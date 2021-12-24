<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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
hr{
   border: 10px;
   width: 800px;
}
.body{
   text-align: center;
   margin: 2% 0;
}
.title, .content, .button{
   display: inline-block;
}
.button input{
   background-color: #fdd300;
   color:  black;
   font-weight: bolder;
}
.title div{
   text-align: right;
}
.title div img{
   width: 20px;
   height: 20px;
}
.content img{
   margin : 2% 0;
}
.content p{
   text-align: left;
   margin-left: 19%;
}
</style>
</head>
<body>
   <div id="header">
      <%@ include file="../common/header.jsp"%>
   </div>
   <div class="recipe_top"></div>
   <div class="body">
      <div class="title">
         <h4 style="text-align:center;">계란말이</h4>
         <div>
            <strong>조회수 11</strong>
            <img src="resources/images/recipe/heart.png" onclick="#">
            <a href="recipeUpdateForm.do"><img src="resources/images/recipe/update.png"></a>
            <img src="resources/images/recipe/delete.png" onclick="#">
         </div>
         <hr>
      </div>
      <div class="content">      
         <img src="resources/images/recipe/eggroll.png">      
         <p> 재료 | 계란3알, 자투리야채(파,양파,당근 추천), 소금약간</p>
         <br>
         <p> 1. 계란을 깬다</p>
         <p> 2. 야채를 다지고 소금약간과 1번에 넣는다. </p>
         <p> 3. 프라이팬을 약불로 올려놓고 달궈지기전에 계란물 반을 붓는다</p>
         <p> 4. 돌돌 말다가 마지막 말기전에 나머지 반을 부워 다시 만다 </p>   
         <hr>
      </div>   
      <br>
      <div class="button">
         <input type="button" class="list" value="목록" onclick="location.href='recipeList.do'">&nbsp;&nbsp;&nbsp;
         
      </div>
   </div>
   <div id="footer">
      <%@ include file="../common/footer.jsp"%>
   </div>
</body>
</html>
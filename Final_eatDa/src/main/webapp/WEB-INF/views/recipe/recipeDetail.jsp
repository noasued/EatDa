<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eat다</title>
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
         <h4 style="text-align:center;">${dto.recipe_title }</h4>
         <div>
            <strong>조회수 ${dto.recipe_count }</strong>
            <img src="resources/images/recipe/heart.png" onclick="#">
            <a href="recipeUpdateForm.do"><img src="resources/images/recipe/update.png"></a>
            <img src="resources/images/recipe/delete.png" onclick="#">
         </div>
         <hr>
      </div>
      <div class="content">      
         <img src="${dto.recipe_img }"><br>      
         ${dto.recipe_content } 
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
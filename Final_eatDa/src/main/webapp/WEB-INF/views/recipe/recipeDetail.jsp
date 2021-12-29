<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eat다</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
 

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
.button input, .modalBox input{
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
.modal {
          position: fixed;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          display: flex;
          justify-content: center;
          align-items: center;
}

.modal .bg {
          width: 100%;
          height: 100%;
          background-color: rgba(0, 0, 0, 0.6);
}
 .modalBox {
          position: absolute;
          background-color: #fff;
          width: 400px;
          height: 200px;
          padding: 15px;
}

.hidden { display: none;}

</style>

<script type="text/javascript">
const open = () => {
    document.querySelector(".modal").classList.remove("hidden");
  }

  const close = () => {
    document.querySelector(".modal").classList.add("hidden");
  }

  document.querySelector(".deleteModal").addEventListener("click", open);
  document.querySelector(".cancelBtn").addEventListener("click", close);
  document.querySelector(".bg").addEventListener("click", close);


//delete모달확인창 구현예정

</script>
</head>
<body>
   <div id="header">
      <%@ include file="../common/header.jsp"%>
   </div>
   <div class="recipe_top"></div>
   
   <div class="body">
      <div class="title">
         <h4 style="text-align:center;">${dto.recipe_title }</h4>
         <p>${dto.recipe_category }</p>
         <div>
            <strong>조회수 ${dto.recipe_count }</strong>
            <img src="resources/images/recipe/heart.png" onclick="#">
            <a href="recipeUpdateForm.do?recipe_no=${dto.recipe_no }"><img src="resources/images/recipe/update.png"></a>
            <img class="deleteModal" src="resources/images/recipe/delete.png">
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
   
   
   <div class="modal hidden">
   	<div class="bg"></div>
   	<div class="modalBox">
   		<p>삭제하시겠습니까?</p>
		<input type="button" class="okBtn" value="OK" onclick="location.href='recipeDelete.do?recipe_no=${recipe_no}'">
		<input type="button" class="cancelBtn" value="CANCEL">
   	</div>	
   </div>
   
   <div id="footer">
      <%@ include file="../common/footer.jsp"%>
   </div>
</body>
</html>
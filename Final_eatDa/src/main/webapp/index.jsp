<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
.body{
	margin: 2% ;
}
hr{
	width:1000px;
	margin: 1% 15%;
}
.img-fluid{
	width:200px;
	height:200px;
}
.list_img{
	width:50px;
	height:50px;
}
.heart{
	width:20px;
	height:20px;
}
</style>
</head>
<body style="min-width:1400px;">
	<div id="header">
		<%@ include file="WEB-INF/views/common/header.jsp"%>
	</div>
	    <div class="body"><!---container-fluid : 여백없애기-->
        <div class="row">
            <h4>최신레시피</h4>
            <div class="col-md-2 b">
                <a href="#"><img class="img-fluid" src="resources/images/recipe/eggroll.jpeg"></a>
            </div>
            <div class="col-md-2 b">
                <a href="#"><img class="img-fluid" src="resources/images/recipe/eggroll.jpeg"></a>
            </div>
            <div class="col-md-2 b">
                <a href="#"><img class="img-fluid" src="resources/images/recipe/eggroll.jpeg"></a>
            </div>
            <div class="col-md-2 b">
                <a href="#"><img class="img-fluid" src="resources/images/recipe/eggroll.jpeg"></a>
            </div>
            <div class="col-md-2 b">
                <a href="#"><img class="img-fluid" src="resources/images/recipe/eggroll.jpeg"></a>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-md-5 b">
                <h4>검색순위</h4>
                <table class="recipe_rank">
                    <col width="100px">
                    <col width="500px">

                    <tr>
                        <th>순위</th>
                        <th>요리명</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>
                        	<a href="#"><img class="list_img" src="resources/images/recipe/eggroll.jpeg">비빔만두</a>
                        	<a href="#"><img class="heart" src="resources/images/recipe/heart.png"></a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>
                        	<a href="#"><img class="list_img" src="resources/images/recipe/eggroll.jpeg">비빔만두</a>
                        	<a href="#"><img class="heart" src="resources/images/recipe/heart.png"></a>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>
                        	<a href="#"><img class="list_img" src="resources/images/recipe/eggroll.jpeg">비빔만두</a>
                        	<a href="#"><img class="heart" src="resources/images/recipe/heart.png"></a>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="col-md-5 b">
                <h4>(숨김) 회원님 추천레시피</h4>
                <table class="recipe_rank">
                    <col width="50px">
                    <col width="300px">

                    <tr>
                        <th>번호</th>
                        <th>요리명</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>
                        	<a href="#"><img class="list_img" src="resources/images/recipe/eggroll.jpeg">비빔만두</a>
                        	<a href="#"><img class="heart" src="resources/images/recipe/heart.png"></a>
                        </td>                    </tr>
                    <tr>
                        <td>2</td>
                        <td>
                        	<a href="#"><img class="list_img" src="resources/images/recipe/eggroll.jpeg">비빔만두</a>
                        	<a href="#"><img class="heart" src="resources/images/recipe/heart.png"></a>
                        </td>                    </tr>
                    <tr>
                        <td>3</td>
                        <td>
                        	<a href="#"><img class="list_img" src="resources/images/recipe/eggroll.jpeg">비빔만두</a>
                        	<a href="#"><img class="heart" src="resources/images/recipe/heart.png"></a>
                        </td>                    </tr>
                </table>
            </div>
        </div>
        <hr>
        <div class="row">
            <h4>마켓</h4>
            <div class="col-md-2 b">
                <a href="#"><img class="img-fluid" src="resources/images/recipe/eggroll.jpeg"></a>
            </div>
            <div class="col-md-2 b">
                <a href="#"><img class="img-fluid" src="resources/images/recipe/eggroll.jpeg"></a>
            </div>
            <div class="col-md-2 b">
                <a href="#"><img class="img-fluid" src="resources/images/recipe/eggroll.jpeg"></a>
            </div>
            <div class="col-md-2 b">
                <a href="#"><img class="img-fluid" src="resources/images/recipe/eggroll.jpeg"></a>
            </div>
            <div class="col-md-2 b">
                <a href="#"><img class="img-fluid" src="resources/images/recipe/eggroll.jpeg"></a>
            </div>

        </div>
      </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>






	<br><br><br><br><br><br><br>
  <a href="test.do">go</a>
  <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <a href="page.do">go</a>
  <br><br><br><br><br><br><br>
  <a href="shoppingbag.do">go</a>
  <br><br><br><br><br><br>

	<div id="footer">
		<%@ include file="WEB-INF/views/common/footer.jsp"%>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
*{
	margin: 0px;
	padding: 0px;
}

.mypage_like{
	display: flex;
	position: absolute;
	flex-direction: column;
	width: 800px;  
	margin-top: 20px;
    padding-top: 0;
}

.blog_like_wrap{ 
    display: flex;
    position: absolute;
	flex-direction: column;
    width: 800px;
    align-items: center;
    margin-top: 120px;
}

.blog_like{
    display: flex;
	flex-direction: column;
    width: 630px;
    height: 300px;
    align-items: center;
    margin-top: 40px;
    margin-bottom: 100px;
    overflow-y: scroll;
}

.blog_like table tr td{
	padding: 10px;
	vertical-align: top;
}

.blog_like table tr td a{
	text-decoration: none;
	font-size: 0.7rem;
}

.blog_like table tr td .blog_list{
    width: 400px;
    height: 140px;
    margin-left: 10px;
    overflow: hidden;
    text-overflow: ellipsis;

}

.blog_like table tr td .blog_list h3{
    font-size: 14pt;
    font-weight: bold;
    margin-bottom: 20px;

}

.blog_like table tr td .blog_list a{
	
    font-size: 0.7rem;

}

.blog_like::-webkit-scrollbar{
    width: 6px;
}

.blog_like::-webkit-scrollbar-thumb{
    background-color: #ffe084;
    border-radius: 10px;
}


.market_like_wrap, .bought_product_wrap{
    display: flex;
	flex-direction: column;
    width: 800px;
    align-items: center;
    margin-top: 20px;
    margin-bottom: 50px;
}

.market_like{
    display: flex;
	flex-direction: column;
    width: 750px;
    height: 250px;
    align-items: left;
}

.bought_product{
    display: flex;
	flex-direction: column;
    width: 750px;
    height: 270px;
    align-items: left;
}

.market_like table tr td .market_list, .bought_product table tr td .bought_list{
    max-width: 160px;
    max-height: 150px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.bought_list input{
	width: 60px;
	height: 20px;
	border: 0;
	background: #FAEED2;
	color: gray;
	border-radius: 5px;
    font-size: 0.7rem;

}


.market_like::-webkit-scrollbar, .bought_product::-webkit-scrollbar{
    height: 6px;
}

.market_like::-webkit-scrollbar-thumb, .bought_product::-webkit-scrollbar-thumb{
    background-color: #ffe084;
    border-radius: 10px;
}

h1{
    margin-bottom: 20px;
}

hr{
	margin-top: 20px;
    margin-bottom: 20px;
}
.headline{
	margin-top: 0px;
}

.headline a{
	font-size: 22pt;
    font-weight: bold;
}

.headline2{
	margin-top:30px;
}

.headline3{
	margin-top:380px;
}

.headline4{
	margin-top:20px;
}

.headline2 a, .headline3 a, .headline4 a{
    margin-left: 20px;
    margin-bottom: 20px;
    font-size: 20pt;
    font-weight: bold;
}


table{
    margin-top: 10px;
    align-items: center;
}


.wrap{
	width: 100%;
	height: 1350px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.market_like table tr td, .bought_product table tr td{
    text-align: center;
    padding: 15px;
}

.market_like table tr td a, .bought_product table tr td a{
    text-decoration: none;
	font-size: 0.7rem;
	font-weight: bold;
}
</style>
<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
	<div class="wrap">
        
        <div class="mypage_like">
            <div class="headline">
                <a>마이페이지</a>
                <hr>
            </div>
            <div class="headline2">
                <a>내가 좋아한 블로그</a>
            </div>
            <div class="blog_like_wrap">
            <div class="blog_like">
                <table width="600px">
                    <tr>
                        <col width="150px"> <col width="300px">
                    </tr>
                    
                    <tr onclick="alert('블로그 게시글 이동')">
                        <td>
                            <img src="resources/images/food1.jpg" width="150" height="150">
                        </td>
                        <td height="150px">
                            <div class="blog_list">
                                <h3>블로그의 제목</h3>
                                <a>
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용</a>
                        </div>
                        </td>
                    </tr>
                    <tr onclick="alert('블로그 게시글 이동')">
                        <td>
                            <img src="resources/images/food1.jpg" width="150" height="150">
                        </td>
                        <td height="150px">
                            <div class="blog_list">
                                <h3>블로그의 제목</h3>
                                <a>
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용</a>
                        </div>
                        </td>
                    </tr>
                    <tr onclick="alert('블로그 게시글 이동')">
                        <td>
                            <img src="resources/images/food1.jpg" width="150" height="150">
                        </td>
                        <td height="150px">
                            <div class="blog_list">
                                <h3>블로그의 제목</h3>
                                <a>
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용</a>
                        </div>
                        </td>
                    </tr>     
                    <tr onclick="alert('블로그 게시글 이동')">
                        <td>
                            <img src="resources/images/food1.jpg" width="150" height="150">
                        </td>
                        <td height="150px">
                            <div class="blog_list">
                                <h3>블로그의 제목</h3>
                                <a>
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용</a>
                        </div>
                        </td>
                    </tr> 
                    <tr onclick="alert('블로그 게시글 이동')">
                        <td>
                            <img src="resources/images/food1.jpg" width="150" height="150">
                        </td>
                        <td height="150px">
                            <div class="blog_list">
                                <h3>블로그의 제목</h3>
                                <a>
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용
                                    블로그의 내용 블로그의 내용 블로그의 내용 블로그의 내용</a>
                        </div>
                        </td>
                    </tr>   
                </table>
          </div>
        </div>
          
          <div class="headline3">
            <a>찜한 상품</a>
          </div>
          <div class="market_like_wrap">
          <div class="market_like" style="overflow-x: auto; overflow-y: hidden;">
              <table width="600px">
                <tr>
                    <col width="200px">
                </tr>
                <tr>
                    <td>
                        <a href="#"><img src="resources/images/food1.jpg" width="150" height="150"></a>
                        <div class="market_list" onclick="alert('마켓 게시물 이동')">
                            <a>전복죽전복죽전복죽전복죽전복죽전복죽전복죽전복죽</a><br>
                            <a>23,000원</a>
                        </div>
                        </td>
                    </td>
                    <td>
                        <img src="resources/images/food1.jpg" width="150" height="150"><br>
                        <a>전복죽</a><br>
                        <a>23,000원</a>
                    </td>
                    <td>
                        <img src="resources/images/food1.jpg" width="150" height="150"><br>
                        <a>전복죽</a><br>
                        <a>23,000원</a>
                    </td>
                    <td>
                        <img src="resources/images/food1.jpg" width="150" height="150"><br>
                        <a>전복죽</a><br>
                        <a>23,000원</a>
                    </td>
                    <td>
                        <img src="resources/images/food1.jpg" width="150" height="150"><br>
                        <a>전복죽</a><br>
                        <a>23,000원</a>
                    </td>
                    
                </tr>  
              </table>
          </div>
        </div>

        <div class="headline4">
            <a>주문한 상품</a>
          </div>
          <div class="bought_product_wrap">
          <div class="bought_product" style="overflow-x: auto; overflow-y: hidden;">
              <table width="600px">
                <tr>
                    <col width="200px">
                </tr>
                <tr>
                    <td>
                        <a href="#"><img src="resources/images/food1.jpg" width="150" height="150"></a>
                        <div class="bought_list" onclick="alert('마켓 게시물 이동')">
                            <a>전복죽전복죽전복죽전복죽전복죽전복죽전복죽전복죽</a><br>
                            <a>23,000원</a><br>
                            <input type="button" value="리뷰 작성" onclick="#">
                        </div>
                        </td>
                    </td>
                    <td>
                        <a href="#"><img src="resources/images/food1.jpg" width="150" height="150"></a>
                        <div class="bought_list" onclick="alert('마켓 게시물 이동')">
                            <a>전복죽</a><br>
                            <a>23,000원</a><br>
                            <input type="button" value="리뷰 작성" onclick="#">
                        </div>
                    </td>
                    <td>
                        <a href="#"><img src="resources/images/food1.jpg" width="150" height="150"></a>
                        <div class="bought_list" onclick="alert('마켓 게시물 이동')">
                            <a>전복죽</a><br>
                            <a>23,000원</a><br>
                            <input type="button" value="리뷰 작성" onclick="#">
                        </div>
                    </td>
                    <td>
                        <a href="#"><img src="resources/images/food1.jpg" width="150" height="150"></a>
                        <div class="bought_list" onclick="alert('마켓 게시물 이동')">
                            <a>전복죽</a><br>
                            <a>23,000원</a><br>
                            <input type="button" value="리뷰 작성" onclick="#">
                        </div>
                    </td>
                    <td>
                        <a href="#"><img src="resources/images/food1.jpg" width="150" height="150"></a>
                        <div class="bought_list" onclick="alert('마켓 게시물 이동')">
                            <a>전복죽</a><br>
                            <a>23,000원</a><br>
                            <input type="button" value="리뷰 작성" onclick="#">
                        </div>
                    </td>
                    <td>
                        <img src="resources/images/food1.jpg" width="150" height="150"><br>
                        <a>전복죽</a><br>
                        <a>23,000원</a><br>
                        <input type="button" value="리뷰 작성" onclick="#">
                    </td>
                    
                </tr>  
              </table>
          </div>
        </div>

        </div>
       
    </div>
    <div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>
</html>
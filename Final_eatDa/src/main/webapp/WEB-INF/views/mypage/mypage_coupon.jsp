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

.mypage_coupon{

	flex-direction: column;
	width: 800px;
    margin-top: 40px; 
}

.coupon_list{
    display: flex;
	position: absolute;
	flex-direction: column; 
    width: 800px;
    align-items: center;
    
}
.headline{
	margin-top: 0px;
}

.headline a{
	font-size: 22pt;
    font-weight: bold;
}
.headline2 a {
    margin-left: 20px;
    margin-bottom: 20px;
    font-size: 20pt;
    font-weight: bold;
}

h1{
    margin-bottom: 20px;
}

hr{
	margin-top:20px;
    margin-bottom: 20px;
}


.coupon_list table{
    margin-top: 30px;
    align-items: center;
}

a{
	text-decoration: none;
	font-size: 0.7rem;
}

.wrap{
	width: 100%;
	height: 800px;
	display: flex;
	justify-content: center;
}


    .coupon{
        width: 250px;
        height: 130px;
        padding: 20px;
        margin: 5px;
        text-align: right;
        background: url("resources/images/coupon.jpg");
        background-size: 100% 100%;
        border-radius: 10px;
    }
    

    .coupon h3{
        margin-bottom: 20px;
        color: white;
        font-weight: bold;
    }

    .coupon a{
        text-decoration: none;
		font-size: 0.9rem;
		font-weight: bold;
    }
</style>
<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
	<div class="wrap"> 
        <div class="mypage_coupon">
            <div class="headline">
                <a>마이페이지</a>
                <hr>
            </div>
            <div class="headline2">
                <a>쿠폰함</a>
            </div>
            <div class="coupon_list">
                <table  width="630px">
                    <tr>
                        <col width="210px"> <col width="210px"><col width="210px">
                    </tr>
                    <tr>
                        <td>
                            <div class="coupon">
                                <h3>이달의 쿠폰</h3>
                                <a>10% 할인</a><br>
                                <a>사용 가능 기간: 90일</a>
                            </div>
                        </td>
                        <td>
                            <div class="coupon">
                                <h3>이달의 쿠폰</h3>
                                <a>10% 할인</a><br>
                                <a>사용 가능 기간: 90일</a>
                            </div>
                        </td>
                        <td>
                            <div class="coupon">
                                <h3>이달의 쿠폰</h3>
                                <a>10% 할인</a><br>
                                <a>사용 가능 기간: 90일</a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="coupon">
                                <h3>이달의 쿠폰</h3>
                                <a>10% 할인</a><br>
                                <a>사용 가능 기간: 90일</a>
                            </div>
                        </td>
                        <td>
                            <div class="coupon">
                                <h3>이달의 쿠폰</h3>
                                <a>10% 할인</a><br>
                                <a>사용 가능 기간: 90일</a>
                            </div>
                        </td>
                        <td>
                            <div class="coupon">
                                <h3>이달의 쿠폰</h3>
                                <a>10% 할인</a><br>
                                <a>사용 가능 기간: 90일</a>
                            </div>
                        </td>
                    </tr>
             
                </table>
          </div>
        </div>
    </div>
    <div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>
</html>
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

.mypage_subscription{

	flex-direction: column;
	width: 800px;
	margin-top: 180px; 
	padding-top: 0;
}

.subscription_info{
    display: flex;
	position: absolute;
	flex-direction: column;  
    width: 800px;
    align-items: center;
}

h1{
    margin-bottom: 20px;
}

hr{
	margin-top:20px;

}

.headline{
	font-size: 22pt;
    font-weight: bold;
}

.headline2{
	margin-top: 35px;
}
.headline2 a {
    margin-left: 20px;
    margin-bottom: 20px;
    font-size: 20pt;
    font-weight: bold;
}

.subscription_info table{
    margin-top: 30px;
    align-items: center;
}

.subscription_info a{
	text-decoration: none;
	font-size: 0.7rem;
}

.wrap{
	width: 100%;
	height: 1000px;
	display: flex;

	justify-content: center;
}
    .subscription_info th{
        text-align: left;
        vertical-align: top;
        width: 100px;
        height: 40px;
        font-size: 0.8rem;
   		font-weight: 600;
    }
    
    .subscription_info td{
        vertical-align: top;
    }


    .submit_btn{
        border: none;
        border-radius: 4px;
        width: 75px;
        height: 30px;
        background-color: #ffe084;
        color: white;
        font-size: 0.9rem;
        font-weight: bold;
    }
    
    .regist_btn{
    	text-align: right;
    }

    .delivery_product{
        width: 150px;
        text-align: center;
    }

    .alter_product1{
        width: 150px;
    }


    .alter_product_pic{
        content: url("resources/images/food1.jpg");
        height: 150px;
        width: 150px;
        margin-top: 20px;
    }

    input[type=radio] { display:none; }


    [type=radio] + label{
        display: inline-block;
        cursor: pointer;
        line-height: 22px;
        background: url("resources/images/coupon.jpg");
    }

    [type=radio]:checked + label{
        outline: 5px solid #ffe084;
    }

    .alter_product_name1 a{
        margin-left: 60px;
    }

    .alter_product_name2 a{
        margin-left: 130px;
    }

    .alter_product_name3 a{
        margin-left: 130px;
    }
    
    .no_subscription{
    	width: 750px;
    	margin-top: 40px;
    	text-align: center;
    }
    .no_subscription a{
	text-decoration: none;
	font-size: 0.8rem;
	}
</style>
<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
	
	<div class="wrap">
        <div class="mypage_subscription">
            <div class="headline">
                <a>마이페이지</a>
                <hr>
            </div>
            <c:choose>
            		<c:when test="${dto != null }">
            <div class="headline2">
                <a>구독 내역</a>
            </div>
            <div class="subscription_info">
            <form action="" method="post">
                <table width="760px">
                    <tr>
                        <col width="120px"> <col width="500px">
                    </tr>
                    <tr>
                        <th>구독 종류</th>
                        <td> <a>${dto.subscription_type }</a></td>
                    </tr>
                    <tr>
                        <th>구독 기간</th>
                        <td><a>${dto.subscription_term }</a></td>
                    </tr>
                    <tr>
                        <th>결제 금액</th>
                        <td><a>${dto.subscription_price } 원</a></td>
                    </tr>
                    <tr>
                        <th>배송 예정 상품</th>
                        <td>
                            <div class="delivery_product">
                            <img src="resources/images/food1.jpg" width="150" height="150"><br>
                            <a>전복죽</a>
                        </div>
                        </td>
                    </tr>
                    <tr>
                        <th>대체 상품</th>
                        <td>
                            <input type="radio" name="alter_product" value="food1" id="food1" checked="checked">
                            <label for="food1" class="alter_product_pic"></label> &nbsp;
                            <input type="radio" name="alter_product" value="food2" id="food2">
                            <label for="food2" class="alter_product_pic"></label> &nbsp;
                            <input type="radio" name="alter_product" value="food3" id="food3">
                            <label for="food3" class="alter_product_pic"></label>
                            <br>
                            <span class="alter_product_name1">
                                <a>전복죽</a>
                            </span>
                            <span class="alter_product_name2">
                                <a>전복죽</a>
                            </span>
                            <span class="alter_product_name3">
                                <a>전복죽</a>
                            </span>
                        </td>
                    </tr> 
                    <tr>
                    	<td colspan="2">
                    		<div class="regist_btn">
                                <input type="submit" class="submit_btn" value="수정 신청">
                            </div>
                    	</td>
                    </tr>    
                </table>
                </c:when>
                <c:otherwise>
                	<div class="no_subscription">
	                	<a>구독중인 상품이 없습니다.</a> &nbsp;
	                	<a href="#">구독 신청하기</a>
                	</div>
                </c:otherwise>
                </c:choose>
                    
            </form>
          </div>
        </div>
    </div>
    
    <div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>
</html>
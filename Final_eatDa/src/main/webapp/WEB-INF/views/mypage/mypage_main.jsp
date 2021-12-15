<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage</title>
</head>
<style type="text/css">
*{
	margin: 0px;
	padding: 0px;
}

.mypage_info_update{
	flex-direction: column;
	width: 800px;
    margin-top: 40px;
}
 

.info_update_form{
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

.headline2 a {
    margin-left: 20px;
    margin-bottom: 20px;
    font-size: 20pt;
    font-weight: bold;
}

.info_update_form table{
    margin-top: 30px;
    align-items: center;
}

td a{
	text-decoration: none;
	font-size: 0.7rem;
}

div span{
    text-decoration: none;
	font-size: 0.6rem;
    color: grey;
}

.wrap{
	width: 100%;
	height: 520px;
	display: flex;
	justify-content: center;
}

    tr th{
        text-align: left;
        width: 100px;
        height: 40px;
        font-size: 0.8rem;
   		font-weight: 600;
    }

    td input[type="text"], input[type="password"] {
    	width: 230px; height: 30px;
    	font-size: 0.7rem;
    	border: 1px solid #d1d1d1;
        padding-left: 7px;
	}

    td input[type="button"]{
        border: none;
        border-radius: 2px;
        background-color: #FAEED2;
        font-size: 0.5rem;
        color: rgb(95, 95, 95);
    }

    .user_id_chk, .user_addr_chk{
        width: 55px;
        height: 18px;
    }

    .user_phone_chk{
        width: 75px;
        height: 18px;
    }

    .update_btn{
        text-align: right;
        margin: 30px;
    }

    .user_addr2{
        margin-top: 5px;
    }

    .submit_btn{
        border: none;
        border-radius: 4px;
        width: 75px;
        height: 30px;
        background-color: #ffe084;
        color: white;
        font-weight: bold;
    }

    .back_btn{
        border: none;
        border-radius: 4px;
        width: 60px;
        height: 30px;
        background-color: rgb(134, 134, 132);
        color: white;
        font-weight: bold;
    }
</style>
<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
    <div class="wrap">
        
        <div class="mypage_info_update">
            <div class="headline">
                <a>마이페이지</a>
                <hr>
            </div>
            <div class="headline2">
                <a>내 정보 관리</a>
            </div>
            <div class="info_update_form">
            <form action="" method="post">
                <table width="550px">
                    <tr>
                        <col width="150px"> <col width="300px">
                    </tr>
                    <tr>
                        <th>아이디</th>
                        <td> <a>eatDa_user</a></td>
                    </tr>
                    <tr>
                        <th>이름</th>
                        <td><a>어쩌구</a></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><a>asdf123@eatda.com</a></td>
                    </tr>
                    <tr>
                        <th>핸드폰 번호</th>
                        <td><a>010 1234 1234</a></td>
                    </tr>  
                    <tr>
                        <th>주소</th>
                        <td>
                            <a>경기도 ㅇㅇ시 ㅇㅇ구</a><br>
                            <a>ㅇㅇㅇ동 ㅇㅇㅇ호</a>
                        </td>
                    </tr>          
                </table>
                    <div class="update_btn">
                        <input type="submit" class="submit_btn" value="수 정">
                    </div>
            </form>
          </div>
        </div>
       
    </div>
    <div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>
</html>
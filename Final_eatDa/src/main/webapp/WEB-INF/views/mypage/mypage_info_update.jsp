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

.mypage_update{
	flex-direction: column;
	width: 800px;
    margin-top: 40px;  
}

.update_form{
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

.update_form table{
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
	height: 650px;
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

    .user_addr_chk{
        width: 55px;
        height: 18px;
    }

    .user_phone_chk{
        width: 75px;
        height: 18px;
    }

    .regist_btn{
        text-align: center;
        margin: 30px;
    }

    .user_addr2{
        margin-top: 5px;
    }
    
    .user_phone{
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
        width: 75px;
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
        <div class="mypage_update">
            <div class="headline">
                <a>마이페이지</a>
                <hr>
            </div>
            <div class="headline2">
                <a>내 정보 수정</a>
            </div>
            <div class="update_form">
            <form action="" method="post">
                <table width="550px">
                    <tr>
                        <col width="150px"> <col width="300px">
                    </tr>
                    <tr>
                        <th>아이디</th>
                        <td><a>eatDa_user</a></td>
                    </tr>
                    <tr>
                        <th>이름</th>
                        <td><a>어쩌구</a></td>
                    </tr>
                    <tr>
                        <th>비밀번호</th>
                        <td><input type="password" class="user_pw" name="" required="required" value="1234"></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="text" class="user_email" name="" required="required" value="asdf123@eatda.com"></td>
                    </tr>
                    <tr>
                        <th>메일 수신</th>
                        <td>
                            <input type="radio" name="user_mailing" class="user_mailing" value="Y" checked="checked"><a> 동의함</a>&nbsp;&nbsp;
                            <input type="radio" name="user_mailing" class="user_mailing" value="N"><a> 동의하지 않음</a>
                        </td>
                    </tr>
                    <tr>
                        <th>주소</th>
                        <td>
                            <input type="text" class="user_addr1" name="" required="required" value="경기도 ㅇㅇ시 ㅇㅇ동">
                            <input type="button" class="user_addr_chk" value="주소 검색" onclick=""><br>
                            <input type="text" class="user_addr2" name="" required="required" value="123동 123호">
                        </td>
                    </tr>
                    <tr>
                        <th>핸드폰 번호</th>
                        <td>
                            <input type="text" class="user_phone" name="" required="required" value="01012341234">
                            <input type="button" class="user_phone_chk" value="인증번호 발급" onclick="">
                        </td>
                    </tr>
                    <tr>
                        <th>선호하는 음식</th>
                        <td>
                            <input type="checkbox" class="prefer" name="prefer" value="k_food"><a> 한식</a> &nbsp;
                            <input type="checkbox" class="prefer" name="prefer" value="j_food"><a> 일식</a> &nbsp;
                            <input type="checkbox" class="prefer" name="prefer" value="c_food"><a> 중식</a> &nbsp;
                            <input type="checkbox" class="prefer" name="prefer" value="w_food"><a> 양식</a> &nbsp;
                            <input type="checkbox" class="prefer" name="prefer" value="v_food"><a> 비건</a><br>
                            <div class="prefer_txt"><span>중복선택 가능</span></div>
                        </td>
                    </tr>         
                </table>
                    <div class="regist_btn">
                        <input type="submit" class="submit_btn" value="수 정">
                        <input type="button" class="back_btn" value="취 소" onclick="">
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
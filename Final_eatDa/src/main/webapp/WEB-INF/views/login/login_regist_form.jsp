<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
	margin: 0px;
	padding: 0px;
}

.regist_wrap{
	flex-direction: column;
	width: 800px;
    magin-top: 40px;
}

.regist_form{
    display: flex;
	position: absolute;
	flex-direction: column;
    width: 800px;
    align-items: center;
    
}

.headline{
	margin-top: 50px;
}

.headline a{
	font-size: 22pt;
    font-weight: bold;
}

table{
    margin-top: 30px;
    align-items: center;
}

table tr td a{
	text-decoration: none;
	font-size: 0.7rem;
}

div span{
    text-decoration: none;
	font-size: 0.6rem;
    color: grey;
}

.login_regist_wrap{
	width: 100%;
	height: 700px;
	display: flex;
	justify-content: center;
}
     table tr th{
        text-align: left;
        width: 100px;
        height: 40px;
        font-size: 0.8rem;
   		font-weight: bold;
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
    
    .user_phone{
    	margin-top: 5px;
    }

    .regist_btn{
        text-align: center;
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
</head>
<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
	
    <div class="login_regist_wrap">
        <div class="regist_wrap">
            <div class="headline">
                <a>회원가입</a>
                <hr>
            </div>
            <div class="regist_form">
            <form action="" method="post">
                <table width="550px">
                    <tr>
                        <col width="150px"> <col width="300px">
                    </tr>
                    <tr>
                        <th>아이디</th>
                        <td>
                            <input type="text" class="user_id" name="" required="required" placeholder="아이디를 입력하세요." autofocus>
                            <input type="button" class="user_id_chk" value="중복 확인" onclick="">
                        </td>
                    </tr>
                    <tr>
                        <th>이름</th>
                        <td><input type="text" class="user_name" name="" required="required" placeholder="이름을 입력하세요."></td>
                    </tr>
                    <tr>
                        <th>비밀번호</th>
                        <td><input type="password" class="user_pw" name="" required="required" placeholder="비밀번호를 입력하세요."></td>
                    </tr>
                    <tr>
                        <th>비밀번호 확인</th>
                        <td><input type="password" class="user_pw_chk" name="" required="required"></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="text" class="user_email" name="" required="required" placeholder="이메일을 입력하세요."></td>
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
                            <input type="text" class="user_addr1" name="" required="required" placeholder="우편번호를 입력하세요.">
                            <input type="button" class="user_addr_chk" value="주소 검색" onclick=""><br>
                            <input type="text" class="user_addr2" name="" required="required" placeholder="상세주소를 입력하세요.">
                        </td>
                    </tr>
                    <tr>
                        <th>핸드폰 번호</th>
                        <td>
                            <input type="text" class="user_phone" name="" required="required" placeholder="'-' 부호 없이 숫자만 입력하세요.">
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
                        <input type="submit" class="submit_btn" value="가입하기">
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
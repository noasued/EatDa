<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
    .footer {
    	margin:0px;
        background-color: #FAEED2 ;
        height: 250px;
		position: absolute;
    	left: 0;
	    bottom: 0;
    	width: 100%;
    }
    .footer-section {
        margin:0 auto;
        padding:0;
        width: 70%;
        height:100%;
    }
    .left-section {
        width:40%; 
        height:100%; 
        margin:0;
        float:left;
    }
    .left-section>ul {
        margin-top: 40px;
        list-style: none;
    }
    ul>li {
        float: left;
        font-size:smaller;
        margin-right: 10px;
    }
    .left-info {
        margin-top: 90px;
        margin-left: 20px;
    }
    .right-info {
        margin-top: 70px;
        margin-left: 20px;
    }
    .left-info>span {
        font-size: small;
        color: #464646;
    }
    .right-section {
        width:60%; 
        height:100%;
        margin:0;
        float:right;
    }
    .right-info {
        margin-left: 150px;
    }
    .right-info>span {
        font-size: small;
        color: rgb(155, 154, 154);
    }
</style>
</head>
<body style="margin:0px">
    <div class="footer">
        <div class="footer-section">
            <div class="left-section">
                <ul>
                    <li>회사소개&nbsp;&nbsp;</li>
                    <li>이용약관&nbsp;&nbsp;</li>
                    <li><b>개인정보처리방침</b>&nbsp;&nbsp;</li>
                    <li>맴버십 프로그램&nbsp;&nbsp;</li>
                </ul>
                <div class="left-info">
                    <h2 style="font-weight: bolder; font-size:larger;">고객센터</h2>
                    <h4 style="color: olive;"> 1888-1234</h4>
                    <span>운영시간 : 평일 09 ~ 16시</span><br>
                    <span>운영시간 : 공휴일 휴무 (이메일 상담 가능)</span><br>
                    <span>카카오톡 @eatDa 채널 추가를 하시면 다양한 쿠폰을 받아볼 수 있습니다.</span>
                </div>
            </div>
            <div class="right-section">
                <div class="right-info">
                    <h3>EatDa</h3>
                    &nbsp;&nbsp;<span>대표: 먹고살아야조</span><br>
                    &nbsp;&nbsp;<span>주소: 서울시 강남구 테헤란로 11  ||  사업자 등록번호: 101-19-122211</span><br>
                    &nbsp;&nbsp;<span>통신판매업 신고: 제1234-44222111호   [사업자 확인하기]</span><br>
                    &nbsp;&nbsp;<span>카카오톡 채널 : @eatDa</span><br>
                    &nbsp;&nbsp;<span>이메일 : TeamEatDa@eatDa.com</span><br>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
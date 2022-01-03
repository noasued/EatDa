<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>EatDa FoodBTI</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Cute+Font&family=Gaegu:wght@700&family=IBM+Plex+Sans+KR:wght@200&family=Nanum+Myeongjo&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/market/foodbti.css">
<script type="text/javascript" src="resources/js/market/foodbti.js"></script>
</head>
<body>
    <div class="header container-fluid" style="width:100%;">
        <div class="row">
            <div class="col-md-6 header-col" style="padding-left: 5%;">
                <span class="head-title main" onclick="location.href='index.do'">EatDa</span>
            </div>
            <div class="col-md-6 header-col" style="padding-right: 5%;" align="right">
                <span class="head-title" onclick="location.reload()">Replay</span>
            </div>
        </div>
    </div>
    <div class="container" style="height:92%;">
        <div class="row" style="height:100%;">
            <div class="col-md-3"></div>
            <div class="col-md-6 content-div">
                <div class="content">
                    <div class="paging" align="right">
                        <span style="font-size:medium">EatDa 이달의 컨텐츠!</span><br>
                    </div>
                    <div class="question-box">
                        <div class="question-div">
                            <div class="question gaegu">
                                이번 주말은 어떤 음식을 즐겨볼까?
                            </div>
                            <div class="question gaegu">
                                내 성향 테스트해보고 추천 메뉴도 알아보자!
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-start-div d-grid col-10 mx-auto">
                    <button class="btn btn-outline-warning q-btn" onclick="start()">음BTI 검사하기</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
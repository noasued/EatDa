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
    
<style type="text/css">
    html, body {
        width: 100%;
        height:100%;
        margin:0;
    }
    .header {
        height:8%;
        background-color: #2e363e;
    }
    .header-col {
        height:100%; padding:10px;
    }
    .head-title {
        margin-left: 2%;
        font-size: x-large;
        color: rgb(232, 226, 226);
    }
    .head-title:hover{
        color:rgb(147, 112, 98);
        cursor:pointer;
    }
    .content-div {
        height:100%;
        box-shadow: 0 0 30px rgb(0 0 0 / 30%);
        border-radius: 10px;
    }
    .content {
        height:75%;
    }
    .btn-div {
        height:15%;
    }
    .q-btn {
        border-radius: 50px;
    }
    .paging {
        width:80%;
        margin:0 auto;
        margin-top: 30px;
        text-align: right;
        height: 10%;
    }
    .paging > span {
        font-size: x-large;
        font-weight: bold;
    }
    .question-box {
        width:80%;
        margin:0 auto;
        height:90%;
        padding:2%;
        text-align: center;
    }
    .question-div {
        height:50%;
        margin: 30% auto;
    }
    .question-div>span {
        font-weight: 800;
        font-size: x-large;
        color: rgb(143, 135, 135);
    }
    .question {
        margin-top: 40px;
        font-size: x-large;
        color: rgb(143, 135, 135);
        font-weight: 700;
    }
    .gaegu {
        font-family: 'Cute Font', cursive;
        font-family: 'Gaegu', cursive;
        font-family: 'IBM Plex Sans KR', sans-serif;
        font-family: 'Nanum Myeongjo', serif;
    }
    .after-question {
        margin-top: 60px;
        text-align: center;
        font-size: x-large;
        color: rgb(143, 135, 135);
    }
</style>
<script type="text/javascript">
    var count = 0;
    var array = [];
    var questionArray = [
        '로제 떡볶이나 느끼한 오일 파스타 먹을바에 8천원이면 든든하게 배 채울수 있는 국밥이지!',
        '저기압 일 땐 고기앞으로, 기분이 고기압일 땐 고기앞으로.',
        '하루 3끼 내 밥상에 육류가 없으면 하루종일 기분이 좋지 않다.',
        '스트레스를 받으면 뭐 먹을지 고민하는 편이다.',
        '옆자리 선배가 하루종일 갈군다면 당이 땡기는 편이다.',
        '나는 점심메뉴를 고르는데 1시간 이상이 소요가 된다. 혹은 점심 메뉴는 옆자리 동료가 고른 메뉴를 먹는 편이다.',
        '지금 당신은 뭘 먹을지 정했다.',
    ];
    //페이지 진행 2배수마다 배열 채워주고
    //8페이지 끝나고 9페이지로 넘어갈 때 mbti 완성해서 페이지에 뿌려줘야함

    function response(value) {
        let nowPage = Number(document.getElementsByClassName('now-page')[0].innerText)+1;
        count += value;

        //mbti 정하는 로직
        if ((nowPage-1)%2 == 0) {
            switch (nowPage-1) {
                case 1,2 : 
                    count>1?array.push('E'):array.push('I'); //외향 내향
                    break;
                case 3,4 : 
                    count>1?array.push('M'):array.push('V'); //고기 야채
                    break;
                case 5,6 : 
                    count>1?array.push('W'):array.push('S'); //일부분
                    break;
                case 7,8 :
                    count>1?array.push('A'):array.push('P'); //수동 적극
                    break;
            }
            count = 0;
        }

        if (nowPage < 9) {
            let nowQuestion = nowPage-2;
            $('.question-div').animate({opacity:0},400, function() {
                $('.question-div').html('');
                $('.question-div').append(
                    '<span class="gaegu">STEP.</span>&nbsp;&nbsp;' +
                    '<span class="now-page gaegu"></span>' +
                    '<div class="question gaegu">'
                        + questionArray[nowQuestion] +
                    '</div>'
                );
                $('.question-div').css('opacity','1');
                $('.now-page').text(nowPage);
            });
        } else if (nowPage == 9) {
            $('.paging').addClass('after-question');
            $('.paging').addClass('.gaegu');
            $('.paging').html(
                '당신의 성향을 파악하고 있습니다.'
            );
            $('.question-div').html(
                '<div class="text-center">' +
                    '<div class="spinner-border" role="status">' +
                    '</div>' +
                '</div>'
            );
            
            //완료 시
            setTimeout(function() {
                var mbti = '';
                for (var i = 0; i < 4; i++) {
                    mbti += array[i];
                }

                $('.content-div').html(
                    '<div>당신의 성향은 \'' + mbti + '\'입니다.</div>'
                );
            },2000);
            //성향에 따른 마켓 상품 추천까지 해야함.

        }
    }
</script>
</head>
<body>
	<div class="header container-fluid" style="width:100%;">
        <div class="row">
            <div class="col-md-6 header-col" style="padding-left: 5%;">
                <span class="head-title main">EatDa</span>
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
                        <span class="now-page">1</span>
                        <span>/ 8</span>
                    </div>
                    <div class="question-box">
                        <div class="question-div">
                            <span class="gaegu">STEP.</span>&nbsp;&nbsp;
                            <span class="now-page gaegu">1</span>
                            <div class="question gaegu">
                                국밥을 먹을 때 깍두기 리필을 걱정하지 않고 바로 외칠 수 있다.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-div d-grid gap-3 col-9 mx-auto">
                    <button class="btn btn-outline-info q-btn" onclick="response(1)">정말 그렇다</button>
                    <button class="btn btn-outline-danger q-btn" onclick="response(0)">전혀 아니다</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>구독 신청서</title>

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <style>
    .modal {
            display: none; 
            position: fixed; 
            z-index: 1; 
            left: 0;
            top: 0;
            overflow: auto; 
            background-color: rgb(0,0,0); 
            background-color: rgba(0,0,0,0.4); 
        }

        .modal-content {
            background-color: #fefefe;
            margin: 20% auto;
            padding: 10%;
            border: 1px solid #888;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,.close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }  

    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#dbb992), to(#6c4a1d));
      background: -webkit-linear-gradient(bottom left, #dbb992 0%, #6c4a1d 100%);
      background: -moz-linear-gradient(bottom left, #dbb992 0%, #6c4a1d 100%);
      background: -o-linear-gradient(bottom left, #dbb992 0%, #6c4a1d 100%);
      background: linear-gradient(to top right, #dbb992 0%, #6c4a1d 100%);
    }

    .input-form {
      width: 400px;
      height : 800px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
    #modal_btn{
    	padding-left:20%;
    	font-size:10pt;
    }
    .modal_wrap{
        display: none;
        width: 100%;
        height: 200px;
        position: absolute;
        top:100%;
        left: 100%;
        margin: -250px 0 0 -250px;
        z-index: 2;
    }
    .black_bg{
        display: none;
        position: absolute;
        content: "";
        width: 80%;
        height: 50%;
        background-color:rgba(0, 0,0, 0.5);
        top:0;
        left: 0;
        z-index: 1;
    }
    .modal_close{
        width: 26px;
        height: 26px;
        position: absolute;
        top: -30px;
        right: 0;
    }
    .modal_close> a{
        display: block;
        width: 100%;
        height: 100%;
        background:url(https://img.icons8.com/metro/26/000000/close-window.png);
        text-indent: -9999px;
    }
    #m_title{
    	font-size:15pt;
    	font-weight: bold;
    }
	#chk_nm{
		font-size:18pt;
		font-weight: bold;
	}
	#label_btn{
		font-size: 15pt;
		vertical-align:-1px;
		cursor : pointer;
	}
	.s_form_btn{
		margin-left: 10%;
		font-size:10px; 
		width:25px;
		height:25px; 
		vertical-align:text-top;
	}

  </style>
</head>

<body>
  <div class="container" style="padding-left:5%;">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        
        <form class="validation-form" style="padding-left:2%;" novalidate>
            <div class="col-md-6 mb-5">
              <label for="sub_type" style="font-weight: bold; font-size: 20pt; color:rgb(70, 70, 70);">구독 유형</label><br><br>  
                        
              <div class="sub_form_select">  
              
	              	<div class="sub_form_button">           
	              		<input type="radio" id="chk1" name="chk" class="s_form_btn" checked><label for="chk1" id="label_btn">&nbsp;일반 구독</label><br>
	              
	              		<button type='button' id="modal_btn" class="btn">> 일반 구독이란?</button>
	              		<div class="black_bg"></div>
	              			<div class="modal_wrap">
	              				<div class="modal-content">
					                <div class="modal_close"><a href="#">close</a></div>
					                   <p><span id="m_title">일반 구독이란?</span><br>일반 구독이란 ~ 입니다.<br>일반 구독이란 ~ 입니다.<br>일반 구독이란 ~ 입니다.<br>일반 구독이란 ~ 입니다.<br>일반 구독이란 ~ 입니다.</p>
	              				</div>
	              			</div>
	              	</div>
				<br>
		              <div class="sub_form_button">   
		              	<input type="radio" id="chk2" name="chk" class="s_form_btn"><label for="chk2" id="label_btn">&nbsp;제철 식재료 구독</label> 

		              		<button type="button" id="modal_btn" class="btn">> 제철 식재료 구독이란?</button><br>
				            <div class="black_bg"></div>
					          <div class="modal_wrap"> 
					            <div class="modal-content">
						          <div class="modal_close"><a href="#">close</a></div>
						             <p><span id="m_title">제철 식재료 구독이란?</span><br>제철 식재료 구독이란 ~ 입니다.<br>제철 식재료 구독이란 ~ 입니다.<br>제철 식재료 구독이란 ~ 입니다.<br>제철 식재료 구독이란 ~ 입니다.<br>제철 식재료 구독이란 ~ 입니다.<br>제철 식재료 구독이란 ~ 입니다.</p>
						          </div>
					          </div>
		              </div>
			</div>
		  </div>
        <br>
          
          <div class="col-md-6 mb-5">
            <label for="address2"><span style="font-weight: bold; font-size: 20pt; color:rgb(70, 70, 70);">남기는 메세지</span><span class="text-muted" style="font-size:15pt;">&nbsp;(선택 입력)</span></label>
            <br>
            <textarea rows="5" cols="120" id="vertical" style="white-space: pre-line; margin-top: 3%;" 
            placeholder="못먹는 음식 또는 음식 알러지 등에 대해 작성해주세요.
            예시) 저는 오이를 싫어합니다. 오이가 들어가있지 않은 밀키트로 배송해주세요."></textarea>
          </div>
          <div class="mb-4"></div>
          <button class="btn btn-warning btn-lg btn-block" type="submit" onclick="" style="font-size:20pt;">구독 신청</button>
          <button class="btn btn-secondary btn-md btn-block" type="button" onclick="history.back();" style="font-size:15pt;">취 소</button>
        </form>
      </div>

    </div>
  </div>
  <script>
  var modals = document.getElementsByClassName("modal_wrap");
  var btns = document.getElementsByClassName("btn");

  var divs = document.getElementsByClassName("modal_close");
  var funcs = [];
  
  function Modal(num) {
      return function() {
          btns[num].onclick =  function() {
              modals[num].style.display = "block";
              console.log(num);
          };
      
          divs[num].onclick = function() {
              modals[num].style.display = "none";
          };
      };
  }

  for(var i = 0; i < btns.length; i++) {
      funcs[i] = Modal(i);
  }
  
  for(var j = 0; j < btns.length; j++) {
      funcs[j]();
  }
  
  window.onclick = function(event) {
      if (event.target.className == "modal_wrap") {
          event.target.style.display = "none";
      }
  };
</script>
</body>

</html>
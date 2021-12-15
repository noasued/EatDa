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
            width: 100%; 
            height: 100%; 
            overflow: auto; 
            background-color: rgb(0,0,0); 
            background-color: rgba(0,0,0,0.4); 
        }

        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 40%;
        }

        /* Close Button */
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
      max-width: 680px;

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
    .open_btn{
      background-color: transparent;
      border: none;
      color:rgb(28, 118, 179);
      font-size: 10pt; 
      margin-left: 15%;
      margin-top: 3%;
    }
    .modal_wrap{
        display: none;
        width: 100%;
        height: 500px;
        position: absolute;
        top:50%;
        left: 50%;
        margin: -250px 0 0 -250px;
        background:#eee;
        z-index: 2;
    }
    .black_bg{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 100%;
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
      font-size: 20pt;
      font-weight: bold;
      text-align: center;
    }
    #m_cont{
      text-align: center;
    }
  </style>
</head>

<body>
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h2 class="mb-5">구독 신청서</h2>
        <form class="validation-form" novalidate>
            <div class="col-md-6 mb-5">
              <label for="sub_type" style="font-weight: bold; font-size: 15pt;">구독 유형</label>
              <br>
              <input type="radio" value="chk_normal" name="chk_btn" checked style="margin-top: 3%; margin-left: 10%;"> 일반 구독<br>
              <button type='button' id="modal_btn">> 일반 구독이란?</button>
              <div class="black_bg"></div>
              <div class="modal_wrap">
                <div class="modal_close"><a href="#">close</a></div>
                  <div>
                      <p id="m_title">일반 구독이란?</p>
                      <br>
                      <p id="m_cont">일반 구독이란 블라블라 어쩌고 저쩌고 입니다.<br>
                        일반 구독이란 블라블라 어쩌고 저쩌고 입니다.<br>
                        일반 구독이란 블라블라 어쩌고 저쩌고 입니다.<br>
                        일반 구독이란 블라블라 어쩌고 저쩌고 입니다.<br>
                        일반 구독이란 블라블라 어쩌고 저쩌고 입니다.
                      </p>
                  </div>
              <div>
              </div> 
              </div>

                <br>
                
              <input type="radio" value="chk_seasonal" name="chk_btn" style="margin-left:10%;"> 제철 식재료 구독
              <button type="button" id="modal_btn" >> 제철 식재료 구독이란?</button>
              <div class="black_bg"></div>
              <div class="modal_wrap"> 
                <div class="modal_close"><a href="#">close</a></div>
                  <div>
                    <p id="m_title">제철 식재료 구독이란?<br>
                      제철 식재료 구독이란 블라블라 어쩌고 저쩌고 입니다.
                      제철 식재료 구독이란 블라블라 어쩌고 저쩌고 입니다.
                      제철 식재료 구독이란 블라블라 어쩌고 저쩌고 입니다.
                      제철 식재료 구독이란 블라블라 어쩌고 저쩌고 입니다.
                      제철 식재료 구독이란 블라블라 어쩌고 저쩌고 입니다.
                      제철 식재료 구독이란 블라블라 어쩌고 저쩌고 입니다.
                    </p>
                  </div>
                </div>
              </div>

              <div class="invalid-feedback">
                구독 유형을 선택해주세요.
              </div>


          <br>
          
          <div class="col-md-6 mb-5">
            <label for="address2"><span style="font-weight: bold; font-size: 15pt;">남기는 메세지</span><span class="text-muted">&nbsp;(선택 입력)</span></label>
            <br>
            <textarea rows="3" cols="80" id="vertical" style="white-space: pre-line; margin-top: 3%;" 
            placeholder="못먹는 음식 또는 음식 알러지 등에 대해 작성해주세요.
            예시) 저는 오이를 싫어합니다. 오이가 들어가있지 않은 밀키트로 배송해주세요."></textarea>
          </div>

          <div class="mb-4"></div>
          <button class="btn btn-warning btn-lg btn-block" type="submit" onclick="">구독 신청</button>
          <button class="btn btn-secondary btn-md btn-block" type="button" onclick="history.back();">취 소</button>
        </form>
      </div>
    </div>
  </div>
  <script>
    window.onload = function() {
 
    function onClick() {
        document.querySelector('.modal_wrap').style.display ='block';
        document.querySelector('.black_bg').style.display ='block';
    }   
    function offClick() {
        document.querySelector('.modal_wrap').style.display ='none';
        document.querySelector('.black_bg').style.display ='none';
    }
 
    document.getElementById('modal_btn').addEventListener('click', onClick);
    document.querySelector('.modal_close').addEventListener('click', offClick);
 
};
</script>
</body>

</html>
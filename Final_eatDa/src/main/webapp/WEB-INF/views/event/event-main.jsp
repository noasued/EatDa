<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to EatDa</title>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<style type="text/css">
body{
  margin:0;
  padding:0;
}

.event-main__top{
  width:100%;
  height:300px;
  background: url('resources/images/wine02.png') no-repeat;
  background-size: cover;
  overflow: hidden;
  display: table;
  border: none;
  background-position: 5% 90%;
}

.event-main__top-txt{
  color:white;
  opacity: 0.35;
  display: table-cell;
  vertical-align: bottom;
}

.event-main__top h1, .event-main__top h2{
  display: inline;
}

.event-main__top-txt h1{
  font-weight: 700;
  font-size:120px;
  height:100px;
  line-height: 105px;
}

.event-main__top-txt h2{
  margin-left: 350px;
  font-size: 15px;
}

</style>
<link href="resources/css/event/event-main.css" rel="stylesheet">
</head>
<body>
  
  <main class="event-main">
    <!-- main img -->
    <div class="event-main__top blog__top">
      <div class="event-main__top-txt blog__top-txt">
        <h1>eat다 이벤트</h1>
        <h2>eatDa Event</h2>
      </div>
    </div>

    <div class="event-article">
      <div class="event-write-btn">
        <input type="button" value="글쓰기" onclick="location.href='event-write.do'">
      </div>

      <!-- event list -->
      <div class="event-article__listbox">
        <ul class="event-article__list">
          <li>
            <figure class="event-article__list-img">
              <img src="resources/images/event-list.png">
              <figcaption>
                <p>12월 구독 할인 이벤트를 진행합니다.</p>
                <div class="event-article__list-title">
                  <h3><span>12월</span> eat다 이벤트</h3>
                </div>
              </figcaption>
              <a href="event-detail.do"></a>
            </figure>
          </li>

          <li>
            <figure class="event-article__list-img">
              <img src="resources/images/event-list.png">
              <figcaption>
                <p>11월 구독 할인 이벤트를 진행합니다.</p>
                <div class="event-article__list-title">
                  <h3><span>11월</span> eat다 이벤트</h3>
                </div>
              </figcaption>
              <a href="event-detail.do"></a>
            </figure>
          </li>

          <li>
            <figure class="event-article__list-img">
              <img src="resources/images/event-list.png">
              <figcaption>
                <p>10월 구독 할인 이벤트를 진행합니다.</p>
                <div class="event-article__list-title">
                  <h3><span>10월</span> eat다 이벤트</h3>
                </div>
              </figcaption>
              <a href="event-detail.do"></a>
            </figure>
          </li>

          <li>
            <figure class="event-article__list-img">
              <img src="resources/images/event-list.png">
              <figcaption>
                <p>9월 구독 할인 이벤트를 진행합니다.</p>
                <div class="event-article__list-title">
                  <h3><span>9월</span> eat다 이벤트</h3>
                </div>
              </figcaption>
              <a href="event-detail.do"></a>
            </figure>
          </li>

          <li>
            <figure class="event-article__list-img">
              <img src="resources/images/event-list.png">
              <figcaption>
                <p>8월 구독 할인 이벤트를 진행합니다.</p>
                <div class="event-article__list-title">
                  <h3><span>8월</span> eat다 이벤트</h3>
                </div>
              </figcaption>
              <a href="event-detail.do"></a>
            </figure>
          </li>

          <li>
            <figure class="event-article__list-img">
              <img src="resources/images/event-list.png">
              <figcaption>
                <p>7월 구독 할인 이벤트를 진행합니다.</p>
                <div class="event-article__list-title">
                  <h3><span>7월</span> eat다 이벤트</h3>
                </div>
              </figcaption>
              <a href="event-detail.do"></a>
            </figure>
          </li>

          <li>
            <figure class="event-article__list-img">
              <img src="resources/images/event-list.png">
              <figcaption>
                <p>6월 구독 할인 이벤트를 진행합니다.</p>
                <div class="event-article__list-title">
                  <h3><span>6월</span> eat다 이벤트</h3>
                </div>
              </figcaption>
              <a href="event-detail.do"></a>
            </figure>
          </li>

          <li>
            <figure class="event-article__list-img">
              <img src="resources/images/event-list.png">
              <figcaption>
                <p>5월 구독 할인 이벤트를 진행합니다.</p>
                <div class="event-article__list-title">
                  <h3><span>5월</span> eat다 이벤트</h3>
                </div>
              </figcaption>
              <a href="event-detail.do"></a>
            </figure>
          </li>

          <li>
            <figure class="event-article__list-img">
              <img src="resources/images/event-list.png">
              <figcaption>
                <p>4월 구독 할인 이벤트를 진행합니다.</p>
                <div class="event-article__list-title">
                  <h3><span>4월</span> eat다 이벤트</h3>
                </div>
              </figcaption>
              <a href="event-detail.do"></a>
            </figure>
          </li>

        </ul>

        <ul class="event-article__paging" id="paging">
          <li><a href="#"><i class="fas fa-chevron-left fa-sm"></i></a></li>
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li><a href="#"><i class="fas fa-chevron-right fa-sm"></i></a></li>
        </ul>

      </div>
    </div>
  </main>
  
</body>
</html>
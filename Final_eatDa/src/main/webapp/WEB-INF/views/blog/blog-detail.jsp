<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to EatDa</title>
<link href="resources/css/blog/blog-detail.css" rel="stylesheet">
<style type="text/css">
.blog-detail__top{
  width:100%;
  height:300px;
  background: url('resources/images/blog-detail.png') no-repeat;
  background-size: cover;
  overflow: hidden;
  display: table;
  border: none;
  background-position: 20% 30%;
}

.blog-detail__top-txt{
  color:white;
  opacity: 0.6;
  display: table-cell;
  vertical-align: bottom;
}

</style>
<script defer src="https://kit.fontawesome.com/bdbb0da9f4.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
  $(function(){

    // 하트 클릭 -> 하트 채워짐
    $(".emptyheart").click(function(){
      $(".fullheart").fadeIn(300);
    });
    // 다시 클릭 -> 하트 비워짐
    $(".fullheart").click(function(){
      $(".fullheart").fadeOut(300);
    });

    // 신고 버튼 클릭 -> 모달창 띄우기
    $("#report-btn").click(function(){
      $(".reply-report__modal").fadeIn();
    });
    // x 버튼 클릭 -> 모달창 fade out
    $(".fa-times").click(function(){
      $(".reply-report__modal").fadeOut();
    });

  });
</script>
</head>
<body>
<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
  <main class="blog-detail">
    <!-- main img -->
    <div class="blog-detail__top blog__top">
      <div class="blog-detail__top-txt blog__top-txt">
        <h1>eat다 블로그</h1>
        <h2>eatDa Blog</h2>
      </div>
    </div>

    <div class="detail-article">
      <div class="detail-article__titlearea">
        <!-- title -->
        <div class="detail-article__title">
          <h2>그릴드 샐러드를 만들어봤어요!</h2>
        </div>

        <!-- buttons -->
        <div class="detail-article__btn">
          <input type="button" value="목록">
          <input type="button" value="수정">
          <input type="button" value="삭제">
        </div>
      </div>

      <!-- content -->
      <div class="detail-article__content">
        <img width="600px" src="resources/images/grilledsalad.jpg">
        <p>
          1 애호박과 가지는 한입 크기로 썰고,<br>
          2 무화과는 4등분하고,<br>
          3 드레싱을 만들고,<br>
          4 센 불로 달군 그릴에 가지, 애호박, 무화과를 구워 그릴 자국을 내고,<br>
          5 그릇에 구운 재료와 블루베리, 페타치즈를 담고 드레싱을 뿌려 마무리.
        </p>

        <!-- click likes area -->
        <div class="detail-article__content-likes">
          <i class="far fa-heart fa-lg emptyheart"></i>
          <i class="fas fa-heart fa-lg fullheart"></i>
          <span class="count-likes">5</span>
          <h6>마음에 드는 글이었나요? 그렇다면 하트를 눌러주세요 <i class="far fa-hand-point-left fa-sm"></i></h6>
        </div>
      </div>
      
      <!-- reply -->
      <div class="detail-article__reply">
        <!-- insert reply -->
        <div class="detail-article__reply-input">
          <form name="replyForm" action="" method="post">
            <textarea path="reply" name="reply" placeholder="댓글을 입력하세요."></textarea>
            <input type="submit" title="댓글 입력" class="reply-submitbtn" value="&#xf4ad" >
          </form>
        </div>
        
        <!-- reply list -->
        <div class="detail-article__reply-list">
          <h4>댓글 목록<i class="fas fa-comment-dots"></i></h4>
          
          <table class="reply-list" id="reply-list">
            <colgroup>
              <col width="13%"><col width="70%"><col width="15%">
            </colgroup>
            <tr>
              <td class="reply-list__userid">user_id</td>
              <td class="reply-list__reply">
                <p>
                  <span>yyyy-MM-dd HH:mm:ss</span>
                  <br>
                  reply content will be exists here.
                </p>
              </td>
              <td class="reply-list__btns">
                <input type="button" title="댓글 수정" name="reply-update-btn" value="&#xf044">
                <input type="button" title="댓글 삭제" name="reply-del-btn" value="&#xf2ed">
                
                <input type="button" title="댓글 신고" name="reply-report-btn" id="report-btn" value="&#xf1d8">
               
                <!-- report modal -->
                <div class="reply-report__modal">
                  <div class="reply-report__modal-content">
                    <i title="창 닫기" class="fas fa-times fa-lg"></i>
                    <h5>댓글 신고하기</h5>
                    <form action="report-reply" method="post">
                      <table>
                        <colgroup>
                          <col width="120px"><col width="350px">
                        </colgroup>
                        <tr>
                          <th>제목</th>
                          <td><input type="text" name="report-title" placeholder="제목을 작성해주세요."></td>
                        </tr>
                        <tr>
                          <th>신고자</th>
                          <td>user_id</td>
                        </tr>
                        <tr>
                          <th>신고 대상</th>
                          <td>user_id2</td>
                        </tr>
                        <tr>
                          <th>신고 댓글 내용</th>
                          <td>신고 대상이 작성한 댓글</td>
                        </tr>
                        <tr>
                          <th colspan="2">신고 내용</th>
                        </tr>
                        <tr>
                          <td colspan="2">
                            <textarea path="report" name="report" placeholder="신고 내용을 작성해 주세요"></textarea>
                          </td>
                        </tr>
                        <tr>
                          <td colspan="2" class="report-submit-btn">
                            <input type="submit" title="관리자에게 신고내용 전송" name="report-submit-btn" value="&#xf1d8">
                          </td>
                        </tr>
                      </table>
                    </form>
                  </div>
                </div>

              </td>
            </tr>
          </table>

        </div>
       
      </div>
      

    </div>

  </main>
  <div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>
</html>
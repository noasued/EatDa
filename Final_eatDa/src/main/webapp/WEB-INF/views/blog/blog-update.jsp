<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to EatDa</title>
  
  
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <link href="resources/css/blog/blog-update.css" rel="stylesheet">
  <!-- 분리가 안 먹혀서 top 부분만 이곳에 작성함 -->
  <style type="text/css">
  	.blog-update__top{
		  width:100%;
		  height:300px;
		  background: url('resources/images/blog-cooking.png') no-repeat;
		  background-size: cover;
		  overflow: hidden;
		  display: table;
		  border: none;
		  background-position: 0% 55%;
		}
		
		.blog-update__top-txt{
		  color:white;
		  opacity: 0.6;
		  display: table-cell;
		  vertical-align: bottom;
		}
  	.blog-update__top h1, .blog-update__top h2{
		  display: inline;
		}
		
		.blog-update__top-txt h1{
		  font-weight: 700;
		  font-size:120px;
		  height:100px;
		  line-height: 109px;
		}
		
		.blog-update__top-txt h2{
		  margin-left: 350px;
		  font-size: 15px;
		}
  </style>
  <!-- summernote -->
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet"> 
  <link href="resources/css/summernote/summernote-bs4.css" rel="stylesheet"> 
</head>
<body style="margin-top:155px;">
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
  <main class="blog-update">
    <!-- main img -->
    <div class="blog-update__top blog__top">
      <div class="blog-update__top-txt blog__top-txt">
        <h1>eat다 블로그</h1>
        <h2>eatDa Blog</h2>
      </div>
    </div>

    <!-- write content -->
    <div class="blog-update__content">
      
      <!-- title -->
      <div class="blog-update__content-title">
        <h2>글 수정</h2>
      </div>

			<!-- article -> summernote -->
      <div class="blog-update__content-article">
        	<input id="blog-no" type="hidden" name="blog_no" value="${dto.blog_no}">
          <input type="text" name="blog_title" id="title" value="${dto.blog_title}">
					<textarea class="summernote" id="summernote" name="blog_content">${dto.blog_content}</textarea>
					<div class="blog-update__content-article__btns">
						<input type="button" name="update-submit-btn" value="수정 완료" onclick="submitBtn()">
						<input type="button" name="update-cancel-btn" value="수정 취소" onclick="location.href='blog-detail.do?blog_no=${dto.blog_no}'">
        	</div>

      </div>

    </div>

  </main>
  
  <div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
	
	<!-- summernote -->
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
  <!--  include summernote-ko-KR -->
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/lang/summernote-ko-KR.js"></script>
  <script type="text/javascript">
 	function submitBtn(){
		let blog_no = $('#blog-no').val();
		var blog_title=$('#title').val();
		var blog_content=$('#summernote').val();
		console.log(blog_no);
		console.log(blog_title);
		console.log(blog_content);
		location.href="blog-update.do?blog_title="+blog_title+"&blog_content="+blog_content+"&blog_no="+blog_no;
	}
  
	//summernote
	$(document).ready(function() {
		var fontList = ['나눔고딕','나눔명조','MaruBuri','궁서체','Arial','Arial Black','Comic Sans MS','Courier New','Verdana','Times New Roamn'];
		$('#summernote').summernote({
			  lang: "ko-KR",								// 한글 설정
			  fontNames: fontList,
			  fontNamesIgnoreCheck: fontList,
				// 추가한 폰트사이즈
			  fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
			  height: 350,									// 에디터 높이
        width: 840,									  // 에디터 넓이
			  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
        tabsize: 2,
			  placeholder: '내용을 작성해주세요! 최대 2048자까지 쓸 수 있습니다 :) ',	//placeholder 설정
        prettifyHtml:false,
				
			  toolbar: [
			    // 글꼴 설정
			    ['font', ['fontname','fontsize']],
			    ['fontstyle', ['bold', 'italic', 'underline', 'strikethrough','forecolor','backcolor','clear']],
			    ['style', ['style']],
			    ['highlight', ['highlight']],
			    ['paragraph', ['paragraph','height','ul', 'ol']],
			    // 그림첨부, 링크만들기
			    ['insert',['table','hr','link','picture']],
			    //이모지
			    ['misc', ['emoji']]
			  ],
			  
			  popover: {
				  image: [
				    ['imageResize', ['resizeFull', 'resizeHalf', 'resizeQuarter', 'resizeNone']],
				    ['float', ['floatLeft', 'floatRight', 'floatNone']],
				    ['remove', ['removeMedia']],
				    ['custom', ['imageTitle']],
				  ]
				},
				
		});
	});
	</script>
	
</body>
</html>
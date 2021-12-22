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
  
  <link href="resources/css/blog/blog-write.css" rel="stylesheet">
    <!-- 분리가 안 먹혀서 top 부분만 이곳에 작성함 -->
  <style type="text/css">
  	.blog-write__top{
		  width:100%;
		  height:300px;
		  background: url('resources/images/blog-cooking02.png') no-repeat;
		  background-size: cover;
		  overflow: hidden;
		  display: table;
		  border: none;
		  background-position: 0 90%;
		}
		
		.blog-write__top-txt{
		  color:white;
		  opacity: 0.4;
		  display: table-cell;
		  vertical-align: bottom;
		}
  	.blog-write__top h1, .blog-write__top h2{
		  display: inline;
		}
		
		.blog-write__top-txt h1{
		  font-weight: 700;
		  font-size:120px;
		  height:100px;
		  line-height: 90px;
		}
		
		.blog-write__top-txt h2{
		  margin-left: 350px;
		  font-size: 15px;
		}
  </style>
  
  <!-- summernote -->
	<link href="resources/css/summernote/summernote-bs4.css" rel="stylesheet">  
	<!--  include libraries(jQuery, bootstrap) -->
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
	<!--  include summernote css/js -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
	
</head>
<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
  <main class="blog-write">
    <!-- main img -->
    <div class="blog-write__top blog__top">
      <div class="blog-write__top-txt blog__top-txt">
        <h1>eat다 블로그</h1>
        <h2>eatDa Blog</h2>
      </div>
    </div>

    <!-- write content -->
    <div class="blog-write__content">
      
      <!-- title -->
      <div class="blog-write__content-title">
        <h2>새 글 작성</h2>
      </div>

			<!-- article -> summernote -->
      <div class="blog-write__content-article">
        <form action="/blog-write.do" method="post">
          <input type="text" name="blog_title" placeholder="제목을 입력하세요.">
					<textarea class="summernote" id="summernote" name="blog_content"></textarea>
					<div class="blog-write__content-article__btns">
						<input type="submit" name="write-submit-btn" value="작성 완료">
						<input type="button" name="write-cancel-btn" value="작성 취소" onclick="location.href='blog.do'">
        	</div>
        </form>

      </div>

    </div>

  </main>
  
  <div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
	
	<!-- summernote -->
	<!--  include libraries(jQuery, bootstrap) -->
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
	<!--  include summernote css/js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
	<!--  include summernote-ko-KR -->
	<script src="resources/js/summernote-ko-KR.js"></script>

  <script type="text/javascript">
	//summernote
	function sendFile(file, el) {
		var form_data = new FormData();
		form_data.append('file', file);
		$.ajax({
			data: form_data,
			type : "post",
			url: 'summer_image',
			cache :false,
			contentType : false,
			enctype : 'multipart/form-data',
			processData : false,
			success : function(img_name) {
				$(el).summernote('editor.insertImage', img_name);
			}
		});
	}
	
	$(document).ready(function() {
		$('#summernote').summernote({
			  height: 350,									// 에디터 높이
        width: 840,									  // 에디터 넓이
			  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
        tabsize: 2,
			  lang: "ko-KR",								// 한글 설정
			  placeholder: '내용을 작성해주세요! 최대 2048자까지 쓸 수 있습니다 :) ',	//placeholder 설정
        prettifyHtml:false,
        popover: {
          image: [
           	['imageResize', ['resizeFull', 'resizeHalf', 'resizeQuarter', 'resizeNone']],
            ['float', ['floatLeft', 'floatRight', 'floatNone']],
            ['remove', ['removeMedia']],
            ['custom', ['imageTitle']],
          ],
        },
        toolbar: [
          // 글꼴 설정
          ['Font Style', ['fontname']],
          // 글자 크기 설정
          ['fontsize', ['fontsize']],
          // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
          ['style',['style']],
          ['style', ['bold', 'italic', 'underline']],
          ['font',['strikethrough']],
          // 글자색
          ['color', ['color']],
          // 문단정렬
          ['para', ['paragraph']],
          //형광펜
          ['highlight', ['highlight']],
          // 줄간격
          ['height', ['height']],
          // 그림첨부, 링크만들기
          ['Insert',['picture','link']],
          // 표만들기
          ['Insert', ['table']],
          //이모지
          ['misc', ['emoji']]
        ],
        // 추가한 글꼴
        fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','나눔 고딕','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
        // 추가한 폰트사이즈
        fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
        
        callbacks: {
        	onImageUpload: function(files, editor, welEditable) {
        		for(var i = files.length -1; i>=0; i--) {
        			sendFile(files[i], this);
        		}
        	}
        }
		});
	});
	
	// submit-btn을 클릭했을 때 form에 빈칸이 없도록 함
	/* function fillin(frm){
		var blog_title = frm.blog_title.value;
		var blog_content = frm.blog_content.value;
		
		if (blog_title.trim() == ''){
			alert("제목을 입력해주세요");
			return false;
		}
		if (blog_content.trim() == ''){
			alert("내용을 입력해주세요");
			return false;
		}
		frm.submit();
	} */
	
	</script>
	
</body>
</html>
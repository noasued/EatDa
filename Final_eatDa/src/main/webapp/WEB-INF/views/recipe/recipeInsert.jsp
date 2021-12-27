<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eat다</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  

  <style type="text/css">
.recipe_content-wrap{
	  margin-top: 30px;
  text-align: justify;
}
.recipe_content-title, .category{
	margin-bottom: 2%;
}
.recipe-button, .recipe_content-title, .recipe_title, .recipe_content-category{
	display: flex;
	justify-content: center;
}

.recipe_title{
	padding-bottom: 15px;
	border-bottom: 0.3px solid rgb(235, 235, 235);
}
.recipe_content-title input{
	margin-top:2%;
	width : 840px;
	height: 40px;
}

.recipe-button{
	margin: 3% 0;
}

.recipe-button input{
	background-color: #fdd300;
	color:  black;
	font-weight: bolder;
	width: 50px;
}
.recipe_top{
	  width:100%;
	  height:200px;
	  background: url('resources/images/recipe/recipeLogo.png') no-repeat;
	  background-size: cover;
	  overflow: hidden;
	  display: table;
	  border: none;
	  background-position: 0 90%;
	}

.recipe_content-category{letter-spacing: 8px;}
.recipe_content-category label{margin-right: 2%;}	
.recipe_content-main{margin-left: 13%;}	
  </style>
  
</head>
<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
  <div class="blog-write">
    <!-- main img -->
<div class="recipe_top"></div>

    <!-- write content -->
    <div class="recipe_content-wrap">
      
      <!-- title -->
      <div class="recipe_title">
        <h2>새 글 작성</h2>
      </div>

	<!-- main content -->
      <div class="recipe_content-article">
        <form action="recipeInsertRes.do" method="post">
        	<div class="recipe_content-title">
				<input type="text" name="recipe_title" id="recipe_title" placeholder="제목을 입력하세요.">          
			</div>
			<div class="recipe_content-category">
				<strong>CATEGORY&nbsp;|&nbsp;</strong>
				<label><input type="radio" name="recipe_category" value="한식"> 한식</label>
				<label><input type="radio" name="recipe_category" value="일식"> 일식</label>
				<label><input type="radio" name="recipe_category" value="중식"> 중식</label>
				<label><input type="radio" name="recipe_category" value="양식"> 양식</label>
				<label><input type="radio" name="recipe_category" value="간단식"> 간단식</label>
				<label><input type="radio" name="recipe_category" value="야식"> 야식</label>
			</div>
			<div class="recipe_content-main">
				<textarea class="summernote" id="summernote" name="recipe_content"></textarea>
			</div>
			<div class="recipe-button ">
				<input type="submit" value="등록"> &nbsp;&nbsp;&nbsp;
				<input type="button" value="취소" onclick="location.href='recipeList.do'">
			</div>
        </form>

      </div>

    </div>

  </div>
  
  <div id="footer">
		<%@ include file="../common/footer.jsp"%>
  </div>
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet"> 
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
  <script src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>
	
<script type="text/javascript">
$(document).ready(function() {

	var toolbar = [
		// 글꼴 설정
		['fontname', ['fontname']],
		// 글자 크기 설정
		['fontsize', ['fontsize']],
		// 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
		['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		// 글자색
		['color', ['forecolor','color']],
		// 표만들기
		['table', ['table']],
		// 글머리 기호, 번호매기기, 문단정렬
		['para', ['ul', 'ol', 'paragraph']],
		// 줄간격
		['height', ['height']],
		// 그림첨부, 링크만들기, 동영상첨부
		['insert',['picture','link','video']],
		// 코드보기, 확대해서보기, 도움말
		['view', ['codeview','fullscreen', 'help']]
	];

	var setting = {
        height : 300,
        width:840,
        minHeight : null,
        maxHeight : null,
        focus : true,
        lang : 'ko-KR',
        toolbar : toolbar,
        callbacks : { //여기 부분이 이미지를 첨부하는 부분
        	onImageUpload : function(files, editor, welEditable) {
          		//파일 업로드(다중 업로드를 위해 반복문 사용)
           		for (var i = files.length - 1; i >= 0; i--) {
         				uploadSummernoteImageFile(files[i], this);
           		}
           	}
        }
    };

    $('#summernote').summernote(setting);
});
        
function uploadSummernoteImageFile(file, el) {
	data = new FormData();
	data.append("file", file);
	$.ajax({
		data : data,
		type : "POST",
		url : "uploadSummernoteImageFile",
		contentType : false,
		enctype : 'multipart/form-data',
		processData : false,
		success : function(data) {
			$(el).summernote('editor.insertImage', data.url);
		}
	});
}
</script>
</body>
</html>
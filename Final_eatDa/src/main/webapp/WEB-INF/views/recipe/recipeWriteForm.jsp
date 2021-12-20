<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
<!-- summernote -->
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet"> 
  <link href="resources/css/summernote/summernote-bs4.css" rel="stylesheet"> 
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
  <script src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>
 



<style type="text/css">
.wrap{
	margin : 2% 30%;
}
.title, .category, .content{
	margin-bottom: 2%;
}
.button, .rec_logo{
	display: flex;
	justify-content: center;
}
.rec_logo{
	margin-top:3%;
}
.button input{
	background-color: #fdd300;
	color:  black;
	font-weight: bolder;
}
#recipeTitle{
	width : 89%;
}
</style>
<script type="text/javascript">
	function checkOne(chk){
		var obj = document.getElementsByName("checkbox");
		for(var i=0; i< obj.length; i++){
			if(obj[i] != chk){
				obj[i].checked = false;
			}
		}
	} 
	
	//summernote
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
          ['fontname', ['fontname']],
          // 글자 크기 설정
          ['fontsize', ['fontsize']],
          // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
          ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
          // 글자색
          ['color', ['forecolor','color']],
          //형광펜
          ['highlight', ['highlight']],
          // 줄간격
          ['height', ['height']],
          // 그림첨부, 링크만들기
          ['insert',['picture','link']],
          //이모지
          ['misc', ['emoji']],
          // 글머리 기호, 번호매기기, 문단정렬
          ['para', ['ul', 'ol', 'paragraph']],
          // 표만들기
          ['table', ['table']],
          // 확대해서보기, 도움말
          ['view', ['fullscreen', 'help']]
        ],
        // 추가한 글꼴
        fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','나눔 고딕','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
        // 추가한 폰트사이즈
        fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
		});
	});
</script>
</head>
<body>
    <div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
	<div class="rec_logo">
		<img src="resources/images/recipe/recipeLogo.png">
	</div>
	<form action="#" method="post">
		<div class="wrap">
			<div class="title">
				<strong>요리명&nbsp;</strong>
				<input type="text" name="recipeTitle" id="recipeTitle">
			</div>
			<div class="category">
				<strong>카테고리&nbsp;</strong>
				<label><input type="checkbox" name="checkbox" value="korea" onclick="checkOne(this)">한식</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<label><input type="checkbox" name="checkbox" value="japan" onclick="checkOne(this)">일식</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<label><input type="checkbox" name="checkbox" value="china" onclick="checkOne(this)">중식</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<label><input type="checkbox" name="checkbox" value="western" onclick="checkOne(this)">양식</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<label><input type="checkbox" name="checkbox" value="simple" onclick="checkOne(this)">간단식</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<label><input type="checkbox" name="checkbox" value="night" onclick="checkOne(this)">야식</label>
			</div>
			<div class="content">
					<textarea class="summernote" id="summernote" name="editordata"></textarea>
			</div>
			<div class="button">
				<input type="submit" value="등록"> &nbsp;&nbsp;&nbsp;
				<input type="button" value="취소" onclick="location.href='recipeList.do'">
			</div>
		</div>
	</form>
    <div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>
</html>
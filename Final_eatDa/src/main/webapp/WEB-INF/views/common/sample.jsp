<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<!-- 부트스트랩 CDN 안쓰시는 아래 두 개 분들은 빼세요 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
<style type="text/css">
	/* body 최소 크기, 마진 0 지정 */
	body {
		margin:0; min-width:1400px;
	}
</style>

<title>Insert title here</title>
</head>
<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
	
	<!-- 본문 작성 -->
	
	<div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Email Write</title>

<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="resources/admin/css/admin_styles.css" rel="stylesheet" />

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function chk(){
		 if(confirm('작성하신 메일을 전송하시겠습니까?')==true){
			 return true;
		 }else{
			 return false;
		 }
	}
</script>
<style>
	h1{
		width:90%;
		height:80px;
		margin:auto;
		margin-top: 30px;
		font-size: 30px;
		text-align:center;
		font-weigth:bold;
	}
	textarea {
	   width: 100%;
	   height: 6.25em;
	   resize: none;
	}
	table {
	  border-collapse: separate;
	  border-spacing: 0 10px;
	  width:60%;
	  height:100px;
	  margin:auto;
	}
	#btn{
		align:center;
		background-color:#faeed2;
		font-weight:bold;
	}
	
</style>
</head>
<body>
	<div style="background-color:#faeed2; align:center;">
		<h1>이메일 보내기</h1>
	</div>
	<hr>
	<form action="send.do" method="post" onsubmit="return chk();">
		<table>
			<tr>
				<th>발신자 이름</th>
				<td><input type="text" name="senderName" value="EatDa" readonly></td>
			</tr>
			<tr>
				<th>발신자 이메일</th>
				<td><input type="text" name="senderMail" value="TeamEatDa@eatDa.com" readonly></td>
			</tr>
			<tr>
				<th>수신자 이메일</th>
				<td><input type="text" name="receiveMail" autofocus></td>
			</tr>
			<tr>
				<th>제 목</th>
				<td><input type="text" name="subject" style="width:300px;" value="안녕하세요  ${member.user_name}님, EatDa입니다 :)"></td>
			</tr>
			<tr>
				<th>내 용</th>
				<td><textarea cols="80" name="message" placeholder="내용을 입력하세요"></textarea></td>
			</tr>
			<tr style="margin:0 auto;">
				<td colspan="5">
					<input type="submit" id="btn" value="전 송" >
					<input type="button" id="btn" onclick="location.href='adminUser.do'" value="취 소">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
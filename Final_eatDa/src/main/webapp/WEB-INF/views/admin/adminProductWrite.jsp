<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin_Product_Insert</title>
    
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
    	// 상품 등록 유효성 검사 (등록 버튼 클릭이벤트 발생하면 form1 안의 값들을 유효성검사를 한 뒤에 서버로 전송)
    	function insertChk(){
    		$("#addBtn").click(function(){
    			var p_name = $("#p_name").val();
    			var p_description = $("#p_description").val();
    			var p_price = $("#p_price").val();
    			var img_path = $("#img_path").val();
    			
    			if(p_name==""){
    				alert("상품명을 입력해주세요");
    				p_name.focus();
    			}else if(p_description==""){
    				alert("상품 설명을 입력해주세요");
    				p_description.focus();
    			}else if(p_price==""){
    				alert("상품 가격을 입력해주세요");
    				p_price.focus();
    			}else if(img_path==""){
    				alert("상품 이미지를 등록해주세요");
    				img_path.focus();
    			}
    			
    			
    </script>
    
    <style>
        .p_insertForm{
            margin-left: 25%;
			margin-top:12%;
		}
        .p_insertContent{margin-left: 5%;}
        form > table{
        	border-collapse:separate;
        	border-spacing:0 20px;
        }
        th, td{padding:10px}
		button{
			float:right;
			border : none;
			margin-right:2%;
			width:80px;
			height:30px;
		}
    </style>
</head>
<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
    <div class="p_insertForm">
        <h3>상품 등록</h3><br>
	    <div class="p_insertContent">
		    <form:form action="adminProductWriteForm.do" method="GET" enctype="multipart/form-data" modelAttribute="uploadFile">
		        <table>
		        	<tfoot>
		        		<td colspan="7">
		                    <button type="button" value="cancle" onclick="location.href='adminProductList.do'">취 소</button>
		                    <button type="submit" id="addBtn" onclick="location.href='adminProductWrite.do?command=insert'" style="text-decoration:none; font-size:11pt; background-color:rgb(90, 142, 221); color:white;">등 록</button>
		                </td>
		        	</tfoot>
		        	<tbody>
			            <tr>
			                <th>상품명</th>
			                <td><input type="text" id="p_name" name="p_name" placeholder="상품명을 작성해주세요" autofocus></td>
			            </tr>
			            <tr>
			            	<th>카테고리</th>
			            	<td>
			            		<select>
			            			<option selected>--카테고리 선택--</option>
			            			<option>한식</option>
			            			<option>양식</option>
			            			<option>중식</option>
			            			<option>일식</option>
			            			<option>비건</option>
			            			<option>고기만</option>
			            			<option>해산물</option>
			            			<option>스페인</option>
			            		</select>
			            	</td>
			            </tr>
			            <tr>
			                <th>상품 상세 설명</th>
			                <td><textarea rows="15" cols="80" id="p_description" name="p_description" placeholder="상품 상세 설명을 작성해주세요"></textarea></td>
			            </tr>
			            <tr>
			                <th>상품 가격</th>
			                <td><input type="text" name="p_price" id="p_price" placeholder="상품 가격을 작성해주세요"></td>
			            </tr>
			            <tr>
			                <th>첨부파일</th>
			                <td><input type="file" name="mpfile"><form:errors path="mpfile" /><input type="button" value="삭 제"></td>
			            </tr>
		            </tbody>
		        </table>
			</form:form>
		</div>
	</div>    
</body>
</html>
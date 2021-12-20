<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin_Product_Insert</title>
    <style>
        .p_insertForm{
            margin-left: 25%;
			margin-top:3%;
        }
        .p_insertTitle{
            margin-: 0 auto;
            font-size: 20pt;
            font-weight: bold;
        }
        .p_insertContent{
        	margin-left: 5%;
        }
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
        <p class="p_insertTitle">상품 등록</p>

	    <div class="p_insertContent">
		    <form action="" method="">
		        <table>
		        	<tbody>
		            <tr>
		                <th>상품명</th>
		                <td><input type="text" name="p_name"></td>
		            </tr>
		            <br>
		            <tr>
		                <th>상품 상세 설명</th>
		                <td><textarea rows="15" cols="80" name="p_description"></textarea></td>
		            </tr>
		            <br>
		            <tr>
		                <th>첨부파일</th>
		                <td><input type="file"><input type="button" value="삭 제"></td>
		            </tr>
		            <br>
		            <tr>
		                <th>상품 가격</th>
		                <td><input type="number"></td>
		            </tr>
		            <br>
		            </tbody>
		            <tr>
		                <td>
		                    <button type="button" value="cancle" onclick="">취 소</button>
		                    <button type="button" value="insert" onclick="" style="text-decoration:none; font-size:11pt; background-color:rgb(90, 142, 221); color:white;">등 록</button>
		                </td>
		            </tr>
		        </table>
			</form>
		</div>
	</div>    
</body>
</html>
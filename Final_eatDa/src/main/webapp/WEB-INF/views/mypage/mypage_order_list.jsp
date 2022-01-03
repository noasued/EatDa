<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>Insert title here</title>
</head>

<style type="text/css">

*{
	margin: 0px;
	padding: 0px;
}

.mypage_info_list{
	display: flex;
	position: absolute;
	flex-direction: column;
	align-items: center;
	width: 800px;  
	margin-top: 160px;
}

.headline a{
	font-size: 22pt;
    font-weight: bold;
}

table{
    margin-top: 10px;
    align-items: center;
}


.wrap{
	width: 100%;
	height: 1500px;
	display: flex;
	align-items: center;
	justify-content: center;
}

table tr td{
    text-align: center;
    padding: 15px;
}




</style>

<script type="text/javascript">

</script>

<body>
	<div id="header">
		<%@ include file="../common/header.jsp"%>
	</div>
	<div class="wrap">
        
        <div class="mypage_info_list">
            <div class="headline">
                <a>주문 내역</a>
                <hr>
            </div>

        
        <div class="order_info_list_wrap">
          <div class="order_info_list" >
              <table width="600px" border="1">
                <tr>
                    <col width="100px"><col width="300px"><col width="200px">
                </tr>
                <tr>
                	<th>NO</th>
                	<th>주문 번호</th>
                	<th>주문 날짜</th>
                </tr>
                
                <c:forEach items="${list }" var="dto">
			       <tr>
			       	 <td>1</td>
			         <td>${dto.order_id }</td>
			         <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${dto.order_date}"/></td>
			      </tr>
		        </c:forEach>
	
              </table>
          </div>
       </div>



        </div>
       
    </div>
    <div id="footer">
		<%@ include file="../common/footer.jsp"%>
	</div>
</body>
</html>
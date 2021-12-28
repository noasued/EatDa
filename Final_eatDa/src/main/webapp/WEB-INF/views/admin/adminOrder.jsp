<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin_Order</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="resources/admin/css/admin_styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script type="text/javascript">
	        function selectAll(selectAll)  {
	        	  const checkboxes 
	        	       = document.getElementsByName('chkBtn');
	        	  
	        	  checkboxes.forEach((checkbox) => {
	        	    checkbox.checked = selectAll.checked;
	        	  })
	        	}
	        
		      //Modal 실행
		        $(function(){
		        	$("a").click(function(){
		        		$(".modal").fadeIn();
		        	});
		        });
		        
		        $(".modal-content").click(function(){
		        	$(".modal").fadeOut();
		        });
		
		        
			    //Modal Close 기능
			    function close_pop(flag) {
			         $('#myModal').hide();
			    };
			    
			    // 전체 선택 및 선택 게시물 삭제
			    $(function(){
			    	var chkObj = document.getElementsByName("RowCheck");
			    	var rowCnt = chkObj.length;
			    	
			    	$("input[name='allCheck']").click(function(){
			    		var chk_listArr = $("input[name='RowCheck']");
			    		for(var i = 0 ; i<chk_listArr.length; i++){
			    			chk_listArr[i].checked = this.checked;
			    		}
			    	});
			    	$("input[name='RowCheck']").click(function(){
			    		if($("input[name='RowCheck']:checked").length == rowCnt){
			    			$("input[name='allCheck']")[0].checked = true;
			    		}else{
			    			$("input[name='allCheck']")[0].checked = false;
			    		}
			    	});
			    });
			    
			    function deleteValue(){
			    	var url = "delete"; // Controller로 보내고자 하는 url
			    	var valueArr = new Array();
			    	var list = $("input[name='RowCheck']");
			    	for(var i = 0; i<list.length; i++){
			    		if(list[i].checked){	// 선택이 되어있다면 배열에 값을 저장하기
			    			valueArr.push(list[i].value);
			    		}
			    	}
			    	if(valueArr.length == 0){
			    		alert("선택된 글이 없습니다.");
			    	}
			    	else{
			    		var chk = confirm("정말 삭제하시겠습니까?");
			    		$.ajax({
			    			url : url,					// 전송 url
			    			type : 'POST',				// POST 방식
			    			traditional : true,
			    			data : {
			    				valueArr : valueArr		// 보내고자 하는 data 변수 설정
			    			},
			    			success : function(jdata){
			    				if(jdata = 1){
			    					alert("성공적으로 삭제되었습니다.");
			    					location.replace("list")	//list로 페이지 새로고침하기
			    				}else{
			    					alert("삭제에 실패하였습니다.")
			    				}
			    			}
			    		});
			    	}
			    }
        </script>
        
        <style>
			button{
				float:right;
				border : none;
				margin-right:1%;
				width:80px;
				height:30px;
			}
			
			 /* Modal (background) */
	        .modal {
	            display: none; /* Hidden by default */
	            position: fixed; /* Stay in place */
	            z-index: 1; /* Sit on top */
	            left: 0;
	            top: 0;
	            width: 100%; /* Full width */
	            height: 100%; /* Full height */
	            overflow: auto; /* Enable scroll if needed */
	            background-color: rgb(0,0,0); /* Fallback color */
	            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	        }
	    
	        /* Modal Content/Box */
	        .modal-content {
	            background-color: #fefefe;
	            margin: 15% auto; /* 15% from the top and centered */
	            padding: 20px;
	            border: 1px solid #888;
	            width: 30%; /* Could be more or less, depending on screen size */                          
	        }
			
		</style>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark alert-warning justify-content-between">
            <a class="navbar-brand ps-3" href="index.jsp"><img src="resources/images/logo.png" style="width: 50%; height:30%; float:left;"></a>
            
            <div>
	            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars" style="color:black;"></i></button>
	            
	            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
	                <li class="nav-item dropdown">
	                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color:black;"><i class="fas fa-user fa-fw" style="color:black;"></i></a>
	                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
	                        <li><a class="dropdown-item" href="#!">LogOut</a></li>
	                    </ul>
	                </li>
	            </ul>
            </div>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion alert-warning" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav" style="text-align: center;">
                            <div class="sb-sidenav-menu-heading">
                                <img src="resources/admin/assets/img/profile_admin.png" style="width: 60%; height: 60%;">
                                <br>
                                <a href="#" style="text-decoration:none; color: black;">eatDa_admin 님<br>반갑습니다 : )</a>
                            </div>
                            <a class="nav-link" href="adminMain.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-home" aria-hidden="true"></i></div>
                                HOME
                            </a>

                            <a class="nav-link" href="adminPostReply.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-bars" aria-hidden="true"></i></div>
                                Post
                            </a>

                            <a class="nav-link" href="adminRecipe.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-book" aria-hidden="true"></i></div>
                                Recipe
                            </a>

                            <a class="nav-link" href="adminProduct.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-shopping-cart" aria-hidden="true"></i></div>
                                Product
                            </a>

                            <a class="nav-link" href="adminOrder.do" style="color: rgb(224, 179, 57);">
                                <div class="sb-nav-link-icon"><i class="fa fa-truck" aria-hidden="true"></i></div>
                                Order
                            </a>

                            <a class="nav-link" href="adminUser.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-user" aria-hidden="true"></i></div>
                                User
                            </a>

                            <a class="nav-link" href="adminReport.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-ban" aria-hidden="true"></i></div>
                                Report
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <br>
                    <div class="container-fluid px-4">
                        <h1 class="title_tab">주문 관리</h1>
                        <br><br>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                주문 관리
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <col width="50px">
                                    <thead>
                                    	<tr></tr>
                                        <tr>
                                            <th><input type="checkbox" name="allCheck" value="selectall" onclick="selectAll(this)"></th>
                                            <th>주문번호</th>
                                            <th>주문자명</th>
                                            <th>주문일자</th>
                                            <th>연락처</th>
                                            <th>배송 현황</th>
                                            <th>진행 현황</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><input type="checkbox" name="RowCheck" value="${list.no }"></td>
                                            <td>B213G64</td>
                                            <td><a style="text-decoration:none; color:rgb(90, 197, 108); font-weight:bold; cursor:pointer;">주문인</a></td>
                                            <td>2021.12.05</td>
                                            <td>010-1234-5678</td>
                                            <td>
                                                <select>
                                                    <option value="a">주문 완료</option>
                                                    <option value="b">상품 준비중</option>
                                                    <option value="c">배송지 출발</option>
                                                    <option value="d">배송중</option>
                                                    <option value="e">배송 완료</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select>
                                                    <option value="">결제 대기</option>
                                                    <option value="">결제 완료</option>
                                                    <option value="">결제 취소</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" name="chkBtn"></td>
                                            <td>B213G64</td>
                                            <td><a onclick="popupOpen();" class="popUpOpen" style="text-decoration:none; color:rgb(90, 197, 108); font-weight:bold; cursor:pointer;">주문자</a></td>
                                            <td>2021.12.05</td>
                                            <td>010-1234-5678</td>
                                            <td>
                                                <select>
                                                    <option value="a">주문 완료</option>
                                                    <option value="b">상품 준비중</option>
                                                    <option value="c">배송지 출발</option>
                                                    <option value="d">배송중</option>
                                                    <option value="e">배송 완료</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select>
                                                    <option value="">결제 대기</option>
                                                    <option value="">결제 완료</option>
                                                    <option value="">결제 취소</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" name="chkBtn"></td>
                                            <td>A546</td>
                                            <td><a onclick="popupOpen();" class="popUpOpen" style="text-decoration:none; color:rgb(90, 197, 108); font-weight:bold; cursor:pointer;">옥수수</a></td>
                                            <td>2021.12.05</td>
                                            <td>010-1234-5678</td>
                                            <td>
                                                <select>
                                                    <option value="a">주문 완료</option>
                                                    <option value="b">상품 준비중</option>
                                                    <option value="c">배송지 출발</option>
                                                    <option value="d">배송중</option>
                                                    <option value="e">배송 완료</option>
                                                </select>
                                            </td>
                                            <td>
                                                <select>
                                                    <option value="">결제 대기</option>
                                                    <option value="">결제 완료</option>
                                                    <option value="">결제 취소</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tr></tr>
                                    <tr>
                                        <td colspan="7">
	                                        <button type="button" onclick="deleteValue();" value="delete">삭 제</button>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class=""> 
                    
                </footer>
            </div>
        </div>
        
        <!-- Modal -->
        <div id="myModal" class="modal">
 
	      <!-- Modal content -->
	      <div class="modal-content">
	                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">주문 내용</span></b></span></p>
	                <p style="text-align: center; line-height: 1.5;"><br /></p>
	                <p style="text-align: left; line-height: 1.5;"><span style="font-size: 14pt;"><b>구매자명 : </b></span>주문자</p>
	                <p style="text-align: center; line-height: 1.5;"><span style="font-size: 14pt;"><br /></span></p>
	                <p style="text-align: left; line-height: 1.5;"><span style="font-size: 14pt;"><b>배송지 주소 : </b></span>경기도 수원시 XXXXXX</p>
	                <p style="text-align: center; line-height: 1.5;"><span style="font-size: 14pt;"><br /></span></p>
	                <p style="text-align: left; line-height: 1.5;"><span style="font-size: 14pt;"><b>주문 상품 : </b></span>고구마말랭이 10박스</p>
	                <p style="text-align: center; line-height: 1.5;"><span style="font-size: 14pt;"><br /></span></p>
	                <p style="text-align: left; line-height: 1.5;"><span style="font-size: 14pt;"><b>기타 사항 : </b></span>없음</p>
	                <p style="text-align: center; line-height: 1.5;"><span style="font-size: 14pt;"><br /></span></p>
	                <p style="text-align: left; line-height: 1.5;"><br /></p>
	                <p><br /></p>
	            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onclick="close_pop();">
	                <span class="pop_bt" style="font-size: 13pt;" >
	                     닫기
	                </span>
	            </div>
	      </div>
	 
	    </div>
        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="resources/admin/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>

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
        <title>Admin_User</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="resources/admin/css/admin_styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script type="text/javascript">
	     // 전체 선택 / 해제
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
        </script>
        
        <style>
			button{
				float:right;
				border : none;
				margin-right:1%;
			}
			.adm_mailing{
				float:right;
				border : none;
				margin-right:1%;
				width:100px;
				height:30px;
			}
			#nav_btn{
				float:right;
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
	        /*nav탭 hover 시, content 변경*/
	        .home:hover span{
	        	display:none;
	        }
	        .home:hover:after{
	        	content:"관리자 메인";
	        }
	        /*게시글 관리*/
	        .post:hover span{
	        	display:none;
	        }
	        .post:hover:after{
	        	content:"게시글 관리";
	        }
	        /*레시피 관리*/
	        .recipe:hover span{
	        	display:none;
	        }
	        .recipe:hover:after{
	        	content:"레시피 관리";
	        }
	        /*상품 관리*/
	        .product:hover span{
	        	display:none;
	        }
	        .product:hover:after{
	        	content:"상품 관리";
	        }
	        /*주문 관리*/
	        .order:hover span{
	        	display:none;
	        }
	        .order:hover:after{
	        	content:"주문 관리";
	        }
	        /*회원 관리*/
	        .user:hover span{
	        	display:none;
	        }
	        .user:hover:after{
	        	content:"회원 관리";
	        }
	        /*신고 관리*/
	        .report:hover span{
	        	display:none;
	        }
	        .report:hover:after{
	        	content:"신고 관리";
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
                            <a class="nav-link home" href="adminMain.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-home" aria-hidden="true"></i></div>
                                <span>HOME</span>
                            </a>

                            <a class="nav-link post" href="adminPostReply.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-bars" aria-hidden="true"></i></div>
                                <span>Post</span>
                            </a>

                            <a class="nav-link recipe" href="adminRecipe.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-book" aria-hidden="true"></i></div>
                                <span>Recipe</span>
                            </a>

                            <a class="nav-link product" href="adminProduct.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-shopping-cart" aria-hidden="true"></i></div>
                                <span>Product</span>
                            </a>

                            <a class="nav-link order" href="adminOrder.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-truck" aria-hidden="true"></i></div>
                                <span>Order</span>
                            </a>

                            <a class="nav-link user" href="adminUser.do" style="color: rgb(224, 179, 57);">
                                <div class="sb-nav-link-icon"><i class="fa fa-user" aria-hidden="true"></i></div>
                                <span>User</span>
                            </a>

                            <a class="nav-link report" href="adminReport.do" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-ban" aria-hidden="true"></i></div>
                                <span>Report</span>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <br>
                    <div class="container-fluid px-4">
                        <h1 class="title_tab">회원 관리</h1>
                        <br><br>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                회원 관리
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <col width="50px">
                                    <thead>
                                    <tr></tr>
                                        <tr>
                                            <th><input type="checkbox" name="chkBtn" value="selectall" onclick="selectAll(this)"></th>
                                            <th>I D</th>
                                            <th>회원명</th>
                                            <th>닉네임</th>
                                            <th>이메일</th>
                                            <th>연락처</th>
                                            <th>활성화 여부</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><input type="checkbox" name="chkBtn"></td>
                                            <td>OksusuS2</td>
                                            <td><a href="#" style="text-decoration:none; color:rgb(90, 197, 108); font-weight:bold;">옥수수</a></td>
                                            <td>콘치즈짱</td>
                                            <td>CORN123@naver.com</td>
                                            <td>010-1111-2222</td>
                                            <td>
                                                <select>
                                                    <option value="on">활성화</option>
                                                    <option value="off">비활성화</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tr></tr>
                                    <tr>
                                        <td colspan="7">
                                            <a class="adm_mailing" href="#" style="text-decoration:none; font-size:11pt; background-color:rgb(90, 142, 221); color:white;">메일 보내기</a>
	                                        <button type="button" onclick="" value="delete" style="width:80px;	height:30px;">삭 제</button>
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
	                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">회원 정보</span></b></span></p>
	                <p style="text-align: center; line-height: 1.5;"><br /></p>
	                <p style="text-align: left; line-height: 1.5;"><span style="font-size: 14pt;"><b>회원명 : </b></span>김철수</p>
	                <p style="text-align: left; line-height: 1.5;"><span style="font-size: 14pt;"><b>닉네임 : </b></span>아메리카농</p>
	                <p style="text-align: left; line-height: 1.5;"><span style="font-size: 14pt;"><b>휴대전화 : </b></span>010-1234-5678</p>
	                <p style="text-align: left; line-height: 1.5;"><span style="font-size: 14pt;"><b>주 소 : </b></span>경기도 안산시 XXXXXXX</p>
	                <p style="text-align: left; line-height: 1.5;"><span style="font-size: 14pt;"><b>이메일 : </b></span>abcde123@gmail.com</p>
	                <p style="text-align: center; line-height: 1.5;"><span style="font-size: 14pt;"><br /></span></p>
	                <p style="text-align: left; line-height: 1.5;"><span style="font-size: 14pt;"><b>구독 여부 : </b></span>O</p>
	                <p style="text-align: left; line-height: 1.5;"><span style="font-size: 14pt;"><b>구독 유형 : </b></span>일반 구독</p>
	                <p style="text-align: left; line-height: 1.5;"><span style="font-size: 14pt;"><b>구독 종류 : </b></span>이메일</p>
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

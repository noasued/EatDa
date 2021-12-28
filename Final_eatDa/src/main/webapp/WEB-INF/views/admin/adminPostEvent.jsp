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
        <title>Admin_Post_Event</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="resources/admin/css/admin_styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
        function selectAll(selectAll)  {
        	  const checkboxes 
        	       = document.getElementsByName('chkBtn');
        	  
        	  checkboxes.forEach((checkbox) => {
        	    checkbox.checked = selectAll.checked;
        	  })
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
			.adm_insert{
				float:right;
				border : none;
				margin-right:1%;
				width:80px;
				height:30px;
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

                            <a class="nav-link" href="adminPostReply.do" style="color: rgb(224, 179, 57);">
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

                            <a class="nav-link" href="adminOrder.do" style="color: black;">
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
                        <h1 class="title_tab"><a href="adminPostReply.do" style="text-decoration: none; color: black;">댓글</a> | <a href="adminPostBlog.do" style="text-decoration: none; color: black;">블로그</a> | <a href="adminPostEvent.do" style="text-decoration: none; color: rgb(224, 179, 57);">이벤트</a></h1>
                        <br><br>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                이벤트 관리
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <col width="50px"><col width="80px"><col width="60%"><col width="200px"><col width="20%">
                                    <thead>
                                    <tr></tr>
                                        <tr>
                                            <th><input type="checkbox" name="chkBtn" value="selectall" onclick="selectAll(this)"></th>
                                            <th>NO</th>
                                            <th>이벤트 제목</th>
                                            <th>작성일</th>
                                            <th>이벤트 현황</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><input type="checkbox" name="chkBtn"></td>
                                            <td>13</td>
                                            <td><a href="#" style="text-decoration:none; color:rgb(90, 197, 108); font-weight:bold;">2022 겨울나기 이벤트 시작</a></td>
                                            <td>2021.12.05</td>
                                            <td>
                                                <select>
                                                    <option value="wait">대 기</option>
                                                    <option value="ing">진행중</option>
                                                    <option value="finish">종 료</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tr></tr>
                                    <tr>
                                        <td colspan="7">	
                                        	<a class="adm_insert" href="#" style="text-decoration:none; font-size:11pt; background-color:rgb(90, 142, 221); color:white;">등 록</a>
	                                        <button type="button" onclick="" value="delete">삭 제</button>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="resources/admin/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>

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
        <style>
			button{
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
                                        <tr>
                                            <th><input type="checkbox" name="allChk"></th>
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
                                            <td><input type="checkbox" name="chk"></td>
                                            <td>B213G64</td>
                                            <td>주문인</td>
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
                                            <td><input type="checkbox" name="chk"></td>
                                            <td>B213G64</td>
                                            <td>주문자</td>
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
                                            <td><input type="checkbox" name="chk"></td>
                                            <td>A546</td>
                                            <td>옥수수</td>
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
                                    <tr>
                                        <td colspan="7">
                                            <button type="button" onclick="" value="insert" style="background-color:rgb(90, 142, 221); color:white;">등 록</button>
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

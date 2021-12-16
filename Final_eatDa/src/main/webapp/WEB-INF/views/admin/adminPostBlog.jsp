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
        <title>Admin_Post_Blog</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="resources/admin/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">Start Bootstrap</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion bg-secondary" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav" style="text-align: center;">
                            <div class="sb-sidenav-menu-heading">
                                <img src="assets/img/profile_admin.png" style="width: 60%; height: 60%;">
                                <br>
                                <a href="#" style="text-decoration:none; color: black;">eatDa_admin 님<br>반갑습니다 : )</a>
                            </div>
                            <a class="nav-link" href="adminMain.jsp" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-home" aria-hidden="true"></i></div>
                                HOME
                            </a>

                            <a class="nav-link" href="adminPostReply.jsp" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-bars" aria-hidden="true"></i></div>
                                Post
                            </a>

                            <a class="nav-link" href="adminRecipe.jsp" style="color: rgb(224, 179, 57);">
                                <div class="sb-nav-link-icon"><i class="fa fa-book" aria-hidden="true"></i></div>
                                Recipe
                            </a>

                            <a class="nav-link" href="adminProduct.jsp" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-shopping-cart" aria-hidden="true"></i></div>
                                Product
                            </a>

                            <a class="nav-link" href="adminOrder.jsp" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-truck" aria-hidden="true"></i></div>
                                Order
                            </a>

                            <a class="nav-link" href="adminUser.jsp" style="color: black;">
                                <div class="sb-nav-link-icon"><i class="fa fa-user" aria-hidden="true"></i></div>
                                User
                            </a>

                            <a class="nav-link" href="adminReport.jsp" style="color: black;">
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
                        <h1 class="title_tab"><a href="admin_post_reply.html" style="text-decoration: none; color: black;">댓글</a> | <a href="admin_post_blog.html" style="text-decoration: none; color: rgb(224, 179, 57);">블로그</a> | <a href="admin_post_event.html" style="text-decoration: none; color: black;">이벤트</a></h1>
                        <br><br>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                블로그 관리
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <col width="50px"><col width="80px"><col width="100px"><col width="40%"><col width="40%">
                                    <thead>
                                        <tr>
                                            <th><input type="checkbox" name="allChk"></th>
                                            <th>NO</th>
                                            <th>I D</th>
                                            <th>제 목</th>
                                            <th>댓 글</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><input type="checkbox" name="chk"></td>
                                            <td>13</td>
                                            <td>OksusuS2</td>
                                            <td>블로그 제목을 입력</td>
                                            <td>: )</td>
                                        </tr>
                                    </tbody>
                                    <tr>
                                        <td colspan="5" align="right">
                                            <input type="button" onclick="" value="삭 제">
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

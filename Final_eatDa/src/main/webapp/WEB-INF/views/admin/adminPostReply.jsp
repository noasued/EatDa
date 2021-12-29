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
        <title>Admin_Post_Reply</title>
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
			a{
				text-decoration:none;
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
                <nav class="sb-sidenav alert-warning" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav" style="text-align: center;">
                            <div class="sb-sidenav-menu-heading">
                                <img src="resources/admin/assets/img/profile_admin.png" style="width: 60%; height: 60%;">
                                <br>
                                <a href="#" style="text-decoration:none; color: black;">eatDa_admin 님<br>반갑습니다 : )</a>
                            </div>
                            <a class="nav-link home" href="adminMain.do" style="color: black">
                                <div class="sb-nav-link-icon"><i class="fa fa-home" aria-hidden="true"></i></div>
                                <span>HOME</span>
                            </a>

                            <a class="nav-link post" href="adminPostReply.do" style="color: rgb(224, 179, 57);">
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

                            <a class="nav-link user" href="adminUser.do" style="color: black;">
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
                        <h1 class="title_tab"><a href="adminPostReply.do" style="text-decoration: none; color: rgb(224, 179, 57);">댓글</a> | <a href="adminPostBlog.do" style="text-decoration: none; color: black;">블로그</a> | <a href="adminPostEvent.do" style="text-decoration: none; color: black;">이벤트</a></h1>
                        <br><br>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                댓글 관리
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <col width="50px"><col width="100px"><col width="40%"><col width="40%"><col width="200px">
                                    <thead>
                                    <tr></tr>
                                        <tr>
                                            <th><input type="checkbox" name="chkBtn" value="selectall" onclick="selectAll(this)"></th>
                                            <th>I  D</th>
                                            <th>게시글 제목</th>
                                            <th>댓 글</th>
                                            <th>작 성 일</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <td>
                                                <input type="button" onclick="" value="삭 제">
                                            </td>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td><input type="checkbox" name="chkBtn"></td>
                                            <td>OksusuS2</td>
                                            <td><a href="#" style="text-decoration:none; color:rgb(90, 197, 108); font-weight:bold;">콘치즈 1</a></td>
                                            <td><a href="">a</a></td>
                                            <td>2021.12.03</td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" name="chkBtn"></td>
                                            <td>OksusuS2</td>
                                            <td><a href="#" style="text-decoration:none; color:rgb(90, 197, 108); font-weight:bold;">콘치즈 2</a></td>
                                            <td><a href="">b</a></td>
                                            <td>2021.12.03</td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" name="chkBtn"></td>
                                            <td>OksusuS2</td>
                                            <td><a href="#" style="text-decoration:none; color:rgb(90, 197, 108); font-weight:bold;">콘치즈 3</a></td>
                                            <td><a href="">c</a></td>
                                            <td>2021.12.03</td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" name="chkBtn"></td>
                                            <td>OksusuS2</td>
                                            <td><a href="#" style="text-decoration:none; color:rgb(90, 197, 108); font-weight:bold;">콘치즈 4</a></td>
                                            <td><a href="">d</a></td>
                                            <td>2021.12.03</td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" name="chkBtn"></td>
                                            <td>OksusuS2</td>
                                            <td><a href="#" style="text-decoration:none; color:rgb(90, 197, 108); font-weight:bold;">콘치즈 5</a></td>
                                            <td><a href="">e</a></td>
                                            <td>2021.12.03</td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" name="chkBtn"></td>
                                            <td>OksusuS2</td>
                                            <td><a href="#" style="text-decoration:none; color:rgb(90, 197, 108); font-weight:bold;">콘치즈 6</a></td>
                                            <td><a href="">f</a></td>
                                            <td>2021.12.03</td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" name="chkBtn"></td>
                                            <td>OksusuS2</td>
                                            <td><a href="#" style="text-decoration:none; color:rgb(90, 197, 108); font-weight:bold;">콘치즈 7</a></td>
                                            <td><a href="">g</a></td>
                                            <td>2021.12.03</td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" name="chkBtn"></td>
                                            <td>OksusuS2</td>
                                            <td><a href="#" style="text-decoration:none; color:rgb(90, 197, 108); font-weight:bold;">콘치즈 8</a></td>
                                            <td><a href="">h</a></td>
                                            <td>2021.12.03</td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" name="chkBtn"></td>
                                            <td>OksusuS2</td>
                                            <td><a href="#" style="text-decoration:none; color:rgb(90, 197, 108); font-weight:bold;">콘치즈 9</td>
                                            <td><a href="">i</a></td>
                                            <td>2021.12.03</td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" name="chkBtn"></td>
                                            <td>OksusuS2</td>
                                            <td><a href="#" style="text-decoration:none; color:rgb(90, 197, 108); font-weight:bold;">콘치즈 10</a></td>
                                            <td><a href="">j</a></td>
                                            <td>2021.12.03</td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" name="chkBtn"></td>
                                            <td>OksusuS2</td>
                                            <td><a href="#" style="text-decoration:none; color:rgb(90, 197, 108); font-weight:bold;">콘치즈 11</a></td>
                                            <td><a href="">k</a></td>
                                            <td>2021.12.03</td>
                                        </tr>
                                    </tbody>
                                    <tr></tr>
                                    <tr>
                                        <td colspan="5">
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

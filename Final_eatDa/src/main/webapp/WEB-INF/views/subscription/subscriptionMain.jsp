<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Subscription_Main</title>
        <link rel="icon" type="image/x-icon" href="resources/subscription/assets/favicon.ico" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="resources/subscription/css/subscription_styles.css" rel="stylesheet" />
        <style>
            .tiledBackground{
                background-image: url(resources/subscription/assets/image/kitchen1.jpg);
                background-size: 1200px 600px;
                width: 100%;
                height: 490px;
            }
            
            button{
                border: none;
                background-color: transparent;
                color: blue;
            }
            
            
    .modal {
            display: none; 
            position: fixed; 
            z-index: 1; 
            left: 0;
            top: 0;
            overflow: auto; 
            background-color: rgb(0,0,0); 
            background-color: rgba(0,0,0,0.4); 
        }

        .modal-content {
            background-color: #fefefe;
            margin: 50% auto;
            padding: 5%;
            border: 1px solid #888;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,.close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }  

    #modal_btn{
    	font-size:15pt;
    }
    .modal_wrap{
        display: none;
        width: 50%;
        height: 100px;
        position: absolute;
        top:50%;
        left: 40%;
        margin: -250px 0 0 -250px;
        z-index: 2;
    }
    .black_bg{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 100%;
        background-color:rgba(0, 0,0, 0.5);
        top:100%;
        left: 100%;
        z-index: 1;
    }
    .modal_close{
        width: 26px;
        height: 26px;
        position: absolute;
        top: -30px;
        right: 0;
    }
    .modal_close> a{
        display: block;
        width: 100%;
        height: 100%;
        background:url(https://img.icons8.com/metro/26/000000/close-window.png);
        text-indent: -9999px;
    }
    #m_title{
    	font-size:15pt;
    	font-weight: bold;
    }
    #modal_btn{
    	font-size:15pt;
    }
    p{
    	font-size :10pt;
    }
            
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-warning">
            <div class="container px-5">
                <a class="navbar-brand" href="#!">eat_Da</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Recipe</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Blog</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Market</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Log-In</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <header class="tiledBackground">
            <div class="container px-5">
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-6">
                        <div class="text-center my-5">
                            <h1 class="display-5 fw-bolder text-white mb-2">구독 [ Subscription ]</h1><br>
                            <p class="lead text-white-50 mb-4">다양한 혜택과 함께 간편한 밀키트를 제공해드립니다 !</p><br>
                            <div class="d-grid gap-3 d-sm-flex justify-content-sm-center">
                                <a class="btn btn-primary btn-lg px-4 me-sm-3" href="#compare">구독 신청하러 가기</a>
                                <a class="btn btn-outline-light btn-lg px-4" href="#features">더 알아보기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <section class="py-5 border-bottom" id="features">
            <div class="container px-5 my-5">
                <div class="row gx-5">
			
					 <div class="col-lg-4 mb-5 mb-lg-0">
                        <div class="feature bg-warning bg-gradient text-white rounded-3 mb-3"><i class="bi bi-search"></i></div>
                        <h2 class="h4 fw-bolder">"구독"이란 무엇인가요?</h2><br>
                        <p>간단하게 끼니를 해결하고 싶으신 분들을 위해 준비했습니다.<br>장보러 가지 않고 집에서 간편하게 받아 드실 수 있도록<br>"eatDa"가 준비했습니다!</p><br>
                        
	                </div>
                    
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <div class="feature bg-warning bg-gradient text-white rounded-3 mb-3"><i class="bi bi-heart-fill"></i></div>
                        <h2 class="h4 fw-bolder">"구독"하면 무엇이 좋은가요?</h2><br>
                        <p>구독을 신청하신 회원께는 밀키트 구매 할인 혜택이 있습니다.<br>밀키트 배송과 함께 eatDa의 특별한 레시피까지!<br>메일로 받아보실 수 있습니다.</p><br>
                     
	                </div>
                   
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <div class="feature bg-warning bg-gradient text-white rounded-3 mb-3"><i class="bi bi-question"></i></div>
                        <h2 class="h4 fw-bolder">F A Q</h2><br>
                        <p>구독에 대해 아직도 잘 모르시겠다면?<br>자주 묻는 질문을 통해 궁금한 점을 해결해보세요 :)<br>구독 신청을 하기 전에 주의할 사항도 함께 확인해주세요.</p><br>
                        
					</div>
					
					<div class="accordion" id="accordionExample">
						
						  <div class="accordion-item">
						    <h2 class="accordion-header" id="headingOne">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">더 알아보기</button>
						    </h2>
						    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample" style="">
						      <div class="accordion-body">
						        <strong>"구독"이란? </strong><br>이러이런 점이 좋습니다. <code>서비스!!</code>아주 좋아요.
						      </div>
						    </div>
						  </div>
						  
						  <div class="accordion-item">
						    <h2 class="accordion-header" id="headingTwo">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">더 알아보기</button>
						    </h2>
						    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample" style="">
						      <div class="accordion-body">
						        <strong>구독하면 좋은 점</strong><br>첫 번째,~<br>두 번째,~<br>세 번째,<code>이런 장점</code>이 있습니다.
						      </div>
						    </div>
						 </div>
						 <div class="accordion-item">
						    <h2 class="accordion-header" id="headingThree">
						      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">더 알아보기</button>
						    </h2>
						    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample" style="">
						      <div class="accordion-body">
						        <strong>자주 묻는 질문</strong><br>1) ~~<br>2) ~~<br>3)~~
						    </div>
						  </div>
						</div> 
						 </div> 
					
                    </div>
                </div>

        </section>
        
        <section class="bg-light py-5 border-bottom" id="compare">
            <div class="container px-5 my-5">
                <div class="text-center mb-5">
                    <h2 class="fw-bolder">한 번에 비교하기</h2>
                    <p class="lead mb-0">구독 기간에 대해 궁금한 점을 한 눈에 비교해드립니다.</p>
                </div>
                <div class="row gx-5 justify-content-center">
                    <!-- Pricing card free-->
                    <div class="col-lg-6 col-xl-4">
                        <div class="card mb-5 mb-xl-0">
                            <div class="card-body p-5">
                                <div class="small text-uppercase fw-bold text-muted">Weekly</div>
                                <div class="mb-3">
                                    <span class="display-4 fw-bold">8,000</span>
                                    <span class="text-muted">/￦</span>
                                </div>
                                <ul class="list-unstyled mb-4">
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        <strong>1 week 1 mealkit</strong>
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        밀키트 한 번 발송
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        좋아요
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        좋아요
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        좋아요
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        좋아요
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        좋아요
                                    </li>
                                    
                                </ul>
                                <div class="d-grid"><a class="btn btn-primary" href="subForm.do">주간 구독 신청하기</a></div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-6 col-xl-4">
                        <div class="card mb-5 mb-xl-0">
                            <div class="card-body p-5">
                                <div class="small text-uppercase fw-bold">
                                    <i class="bi bi-star-fill text-warning"></i>
                                    MONTHLY
                                </div>
                                <div class="mb-3">
                                    <span class="display-4 fw-bold">30,000</span>
                                    <span class="text-muted">/ ￦</span>
                                </div>
                                <ul class="list-unstyled mb-4">
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        <strong>1 month 4 mealkit</strong>
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        한 달간 매 주 밀키트 발송
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        한 달동안 편하게 밀키트를 !
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        아주 좋아요
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        아주 좋아요
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        아주 좋아요
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        아주 좋아요
                                    </li>
                                
                                </ul>
                                <div class="d-grid"><a class="btn btn-primary" href="subForm.do">월간 구독 신청하기</a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-xl-4">
                        <div class="card">
                            <div class="card-body p-5">
                                <div class="small text-uppercase fw-bold text-muted">QUARTERLY</div>
                                <div class="mb-3">
                                    <span class="display-4 fw-bold">89,000</span>
                                    <span class="text-muted">/ ￦</span>
                                </div>
                                <ul class="list-unstyled mb-4">
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        <strong>1 quarter 12 mealkit</strong>
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        3개월 동안 매 주 밀키트 발송
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        맘 편히 밀키트를 즐길 수 있어요!
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        아주 좋아요
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        아주 좋아요
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        아주 좋아요
                                    </li>
                                    <li class="mb-2">
                                        <i class="bi bi-check text-primary"></i>
                                        <strong>이게 정말</strong>
                                        아주 좋아요
                                    </li>
                                </ul>
                                <div class="d-grid"><a class="btn btn-primary" href="subForm.do">분기 구독 신청하기</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <section class="py-5 border-bottom">
            <div class="container px-5 my-5 px-5">
                <div class="text-center mb-5">
                    <h2 class="fw-bolder">구독자 한마디</h2>
                    <p class="lead mb-0">♡ eatDa의 구독 서비스를 평가해주세요 ♡</p>
                </div>
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-6">
  
                        <div class="card mb-4">
                            <div class="card-body p-4">
                                <div class="d-flex">
                                    <div class="flex-shrink-0"><i class="bi bi-chat-dots text-primary fs-1"></i></div>
                                    <div class="ms-4">
                                        <p class="mb-1" style="font-size: 12pt;">타 사이트의 구독 서비스도 이용해봤지만, eatDa와의 가장 큰 차이점은 배송되는 밀키트와 함께 어떤 음식을 해먹을 수 있는지 레시피까지 보내주는 서비스였어요 !</p>
                                        <div class="small text-muted" style="text-align: right;">- 김 **, kim*****</div>
                                    </div>
                                </div>
                            </div>
                        </div>
 
                        <div class="card">
                            <div class="card-body p-4">
                                <div class="d-flex">
                                    <div class="flex-shrink-0"><i class="bi bi-chat-right-quote-fill text-primary fs-1"></i></div>
                                    <div class="ms-4">
                                        <p class="mb-1" style="font-size: 12pt;">분기구독까지 있어서 너무 편리한 것 같아요! 하지만 일주일에 한 번 받아먹는건...조금...아쉬워요ㅠㅠㅠ밀키트도 너무너무 맛있거든요 ㅎㅎ!</p>
                                        <div class="small text-muted" style="text-align: right;">- 곽 **, rhk*****</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="bg-light py-5">
            <div class="container px-5 my-5 px-5">
                <div class="text-center mb-5">
                    <div class="feature bg-warning bg-gradient text-white rounded-3 mb-3"><i class="bi bi-envelope"></i></div>
                    <h2 class="fw-bolder">한 줄평 남기기</h2>
                    <p class="lead mb-0">♡ 따뜻한 한마디가 eatDa에게 힘이 됩니다 ♡</p>
                </div>
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-6">
                        <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                            <div class="form-floating mb-3">
                                <input class="form-control" id="name" type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                <label for="name">이 름</label>
                                <div class="invalid-feedback" data-sb-feedback="name:required">필수 입력사항입니다.</div>
                            </div>

                            <div class="form-floating mb-3">
                                <input class="form-control" id="email" type="email" placeholder="name@example.com" data-sb-validations="required,email" />
                                <label for="email">이메일</label>
                                <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>
                                <div class="invalid-feedback" data-sb-feedback="email:email">필수 입력사항입니다.</div>
                            </div>

                            <div class="form-floating mb-3">
                                <input class="form-control" id="phone" type="tel" placeholder="(123) 456-7890" data-sb-validations="required" />
                                <label for="phone">휴대전화</label>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">필수 입력사항입니다.</div>
                            </div>

                            <div class="form-floating mb-3">
                                <textarea class="form-control" id="message" type="text" placeholder="Enter your message here..." style="height: 10rem" data-sb-validations="required"></textarea>
                                <label for="message">한 줄평</label>
                                <div class="invalid-feedback" data-sb-feedback="message:required">필수 입력사항입니다.</div>
                            </div>

                            <div class="d-none" id="submitSuccessMessage">
                                <div class="text-center mb-3">
                                    <div class="fw-bolder">한 줄평이 성공적으로 작성되었습니다.<br> 앞으로도 eatDa 많이 사랑해주실거죠 ?♡</div>
                                    
                                    <br />
                                    <a href="https://startbootstrap.com/solution/contact-forms" style="text-decoration: none; font-weight: bold; font-size: 15pt; color: rgb(247, 201, 0);">마켓 구경하러 가기</a>
                                </div>
                            </div>

                            <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">한 줄평 작성에 실패하였습니다. 다시 시도해주세요.</div></div>
                            
                            <div class="d-grid"><button class="btn btn-primary btn-lg disabled" id="submitButton" type="submit">완 료</button></div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        
        <footer class="py-5 alert-warning">
            <div class="container px-5"><p class="m-0 text-center text-dark">Copyright &copy; Your Website 2021</p></div>
        </footer>
       
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="resources/subscription/js/scripts.js"></script>
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        <script>
		  var modals = document.getElementsByClassName("modal_wrap");
		  var btns = document.getElementById("modal_btn");
		  console.log(btns);
		  var btnss= document.getElementsByClassName("btn");
		  console.log(btnss);
		  var divs = document.getElementsByClassName("modal_close");
		  var funcs = [];
		  
		  function Modal(num) {
		      return function() {
		          btns[num].onclick =  function() {
		              modals[num].style.display = "block";
		              console.log(num);
		          };
		      
		          divs[num].onclick = function() {
		              modals[num].style.display = "none";
		          };
		      };
		  }
		
		  for(var i = 0; i < btns.length; i++) {
		      funcs[i] = Modal(i);
		  }
		  
		  for(var j = 0; j < btns.length; j++) {
		      funcs[j]();
		  }
		  
		  window.onclick = function(event) {
		      if (event.target.className == "modal_wrap") {
		          event.target.style.display = "none";
		      }
		  };
		</script>
    </body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>다모아 택시</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500" rel="stylesheet">
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">


    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/Service_Guide.css">
  </head>
  <body>

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar" data-aos="fade-down" data-aos-delay="500">
      <div class="container">
        <a class="navbar-brand" href="dm_Main.jsp"><img src="images/main_logo.png"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto" style="height: 60px;">
            <li class="nav-item active"><a href="dm_Main.jsp" class="nav-link">홈</a></li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">소개</a>
              <div class="dropdown-menu" aria-labelledby="dropdown">
              	<a class="dropdown-item" href="Company.jsp">회사소개</a>
                <a class="dropdown-item" href="Service.jsp">서비스 소개</a>
                <a class="dropdown-item" href="Course.jsp">관광코스 소개</a>
                <a class="dropdown-item" href="Service_Guide.jsp">서비스 이용방법</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">예약</a>
              <div class="dropdown-menu" aria-labelledby="dropdown">
                <a class="dropdown-item" href="jang_reservation.jsp">장애인 택시 예약</a>
                <a class="dropdown-item" href="gwan_reservation.jsp">관광 택시 예약</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">기사</a>
              <div class="dropdown-menu" aria-labelledby="dropdown">
              	<a class="dropdown-item" href="introduce.jsp">기사 소개</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">후기</a>
              <div class="dropdown-menu" aria-labelledby="dropdown">
              	<a class="dropdown-item" href="review_boardView.jsp">게시판</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">고객센터</a>
              <div class="dropdown-menu" aria-labelledby="dropdown">
              	<a class="dropdown-item" href="notice_boardView.jsp">공지사항</a>
                <a class="dropdown-item" href="QnA.jsp">Q&A</a>
                <a class="dropdown-item" href="FAQ.jsp">FAQ</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">마이메뉴</a>
              <div class="dropdown-menu" aria-labelledby="dropdown">
              	<a class="dropdown-item" href="dmlogin_form.jsp" id="login">로그인/회원가입</a>
              	<a class="dropdown-item" href="sessionLogout.jsp" id="logout">로그아웃</a>
                <a class="dropdown-item" href="product-single.jsp">예약현황</a>
                <a class="dropdown-item" href="dm_privacy.jsp">개인정보</a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
	<% 		
		String id = (String) session.getAttribute("id");
		if(id==null || id.equals("")){
	%>
			<script>
				document.getElementById("logout").style.display='none';
			</script>
	<%		
		}else{
	%>
			<script>
				document.getElementById("login").style.display='none';
			</script>
	<%
		}
	%>
	<!-- END nav -->

    <section class="ftco-cover overlay custom_height" style="background-image: url(images/bg_3.jpg);" id="section-home" data-aos="fade"  data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center justify-content-center ftco-vh-75">
          <div class="col-md-9 text-center">
            <h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">서비스 소개</h1>
            <h2 class="h5 ftco-subheading mb-5" data-aos="fade-up"  data-aos-delay="600">목적에 맞는 서비스를 제공합니다.</a></h2>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->
   
	<div class="wrapper">
    <div class="lw-tabs">
        <div class="lw-tab-fixed">
            <h2>Plan Your Adventure</h2>
            <div id="lw-tab-nav" data-tab-nav="" class="lw-tab-nav">
                <ul>
                    <li class="is-active">
                        <a href="#lw-tab-1" data-tab="#lw-tab-1"><span>Experience</span></a>
                    </li>
                    <li>
                        <a href="#lw-tab-2" data-tab="#lw-tab-2"><span>Inspire</span></a>
                    </li>
                    <li>
                        <a href="#lw-tab-3" data-tab="#lw-tab-3"><span>Explore</span></a>
                    </li>
                    <li>
                        <a href="#lw-tab-4" data-tab="#lw-tab-4"><span>Connect</span></a>
                    </li>
                </ul>
            </div> <!-- /tab-nav -->
        </div>

        <div id="lw-tab-panels" data-tab-panels="" class="lw-tab-panels">

            <a href="#lw-tab-1" data-accordion-header="" class="lw-accordion-header theme-blue is-active">Experience</a>

            <div id="lw-tab-1" data-tab-panel="" class="lw-tab-panel theme-blue">

                <div class="lw-tab-content">
                    <div class="lw-tab-text-move">
                        <h3>Lorem Ipsum Dolor</h3>
                        <div class="lap-and-up-only"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam necessitatibus, voluptas blanditiis mollitia exercitationem tempora molestiae ut amet maiores quae, sed rerum quas, sequi soluta nostrum aliquam ea voluptatibus cumque.</p></div>
                        
                    </div>
                </div>
                <div class="lw-tab-image">
                    <div class="lw-tab-image-dimmer"></div>
                    <div class="stat lw-tab-text-move">
                        <p><b>200+</b> Miles of Trails</p>
                    </div>
                </div>
            </div>

            <a href="#lw-tab-2" data-accordion-header="" class="lw-accordion-header theme-purple">Inspire</a>

            <div id="lw-tab-2" data-tab-panel="" class="lw-tab-panel theme-purple">

                <div class="lw-tab-content">
                    <div class="lw-tab-text-move">
                        <h3>Lorem Ipsum Dolor</h3>
                        <div class="lap-and-up-only"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam necessitatibus, voluptas blanditiis mollitia exercitationem tempora molestiae ut amet maiores quae, sed rerum quas, sequi soluta nostrum aliquam ea voluptatibus cumque.</p></div>
                        
                    </div>
                </div>
                <div class="lw-tab-image">
                    <div class="lw-tab-image-dimmer"></div>
                    <div class="stat lw-tab-text-move">
                        <p><b>7000+</b> Things of Note</p>
                    </div>
                 </div>
            </div>

            <a href="#lw-tab-3" data-accordion-header="" class="lw-accordion-header theme-green">Explore</a>

            <div id="lw-tab-3" data-tab-panel="" class="lw-tab-panel theme-green">

                <div class="lw-tab-content">
                    <div class="lw-tab-text-move">
                        <h3>Lorem Ipsum Dolor</h3>
                        <div class="lap-and-up-only"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam necessitatibus, voluptas blanditiis mollitia exercitationem tempora molestiae ut amet maiores quae, sed rerum quas, sequi soluta nostrum aliquam ea voluptatibus cumque.</p></div>
                        
                    </div>
                </div>
                <div class="lw-tab-image">
                    <div class="lw-tab-image-dimmer"></div>
                    <div class="stat lw-tab-text-move">
                        <p><b>100+</b> Things of Note</p>
                    </div>
                </div>
            </div>

            <a href="#lw-tab-4" data-accordion-header="" class="lw-accordion-header theme-yellow">Connect</a>

            <div id="lw-tab-4" data-tab-panel="" class="lw-tab-panel theme-yellow">

                <div class="lw-tab-content">
                    <div class="lw-tab-text-move">
                        <h3>Lorem Ipsum Dolor</h3>
                        <div class="lap-and-up-only"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam necessitatibus, voluptas blanditiis mollitia exercitationem tempora molestiae ut amet maiores quae, sed rerum quas, sequi soluta nostrum aliquam ea voluptatibus cumque.</p></div>
                       
                    </div>
                </div>
                <div class="lw-tab-image">
                    <div class="lw-tab-image-dimmer"></div>
                    <div class="stat lw-tab-text-move">
                        <p><b>1000</b> Things of Note</p>
                    </div>
                </div>
           </div>
        </div>
    </div>
</div>

    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">About theOrder</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">About Us</a></li>
                <li><a href="#" class="py-2 d-block">Lawyers</a></li>
                <li><a href="#" class="py-2 d-block">Blog</a></li>
                <li><a href="#" class="py-2 d-block">Contact</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Communities</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Support</a></li>
                <li><a href="#" class="py-2 d-block">Practice Areas</a></li>
                <li><a href="#" class="py-2 d-block">Won Cases</a></li>
                <li><a href="#" class="py-2 d-block">Privacy</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Contact Information</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">198 West 21th Street, Suite 721 New York NY 10016</a></li>
                <li><a href="#" class="py-2 d-block">+ 1235 2355 98</a></li>
                <li><a href="#" class="py-2 d-block">info@yoursite.com</a></li>
                <li><a href="#" class="py-2 d-block">email@email.com</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Opening Hours</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Mon - Thu: 9:00 - 21 00</a></li>
                <li><a href="#" class="py-2 d-block">Fri 8:00 - 21 00</a></li>
                <li><a href="#" class="py-2 d-block">Sat 9:30 - 15: 00</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" class="text-primary">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
  <script src="js/Service_Guide.js"></script>
  </body>
</html>

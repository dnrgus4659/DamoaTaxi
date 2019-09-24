<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="Damoa_pro.review_BoardDAO" %>
<%@ page import="Damoa_pro.review_BoardDTO" %>
<%@ page import="java.util.ArrayList" %>
<%
	int count = 0;
	review_BoardDAO dbPro = review_BoardDAO.getInstance();
	count = dbPro.getArticleCount();
	ArrayList<review_BoardDTO> boardList =null;
	if(count >= 4){
		boardList = new review_BoardDAO().getList(1, 5);
	}
%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
  <head>
    <title>다모아택시</title>
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
    <link rel="stylesheet" href="css/style.css?ver=1">
  </head>
	
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar" data-aos="fade-down" data-aos-delay="500">
      <div class="container">
        <a class="navbar-brand" href="dm_Main.jsp"><img src="images/main_logo_big.png" style="width: 149px; height: 70px;"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto" >
            <li class="nav-item active"><a href="dm_Main.jsp" class="nav-link">홈</a></li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">소개</a>
              <div class="dropdown-menu" aria-labelledby="dropdown">
              	<a class="dropdown-item" href="Company.jsp">회사소개</a>
                <a class="dropdown-item" href="Service.jsp">서비스 소개</a>
                <a class="dropdown-item" href="Course.jsp">관광코스 소개</a>
                <a class="dropdown-item" href="Service_Guide.jsp">서비스 이용방법</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">예약</a>
              <div class="dropdown-menu" aria-labelledby="dropdown">
                <a class="dropdown-item" href="jang_reservation.jsp">장애인 택시 예약</a>
                <a class="dropdown-item" href="gwan_reservation.jsp">관광 택시 예약</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">기사</a>
              <div class="dropdown-menu" aria-labelledby="dropdown">
              	<a class="dropdown-item" href="introduce.jsp">기사 소개</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">후기</a>
              <div class="dropdown-menu" aria-labelledby="dropdown">
              	<a class="dropdown-item" href="review_boardView.jsp">게시판</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">고객센터</a>
              <div class="dropdown-menu" aria-labelledby="dropdown">
              	<a class="dropdown-item" href="notice_boardView.jsp">공지사항</a>
                <a class="dropdown-item" href="QnA.jsp">Q&A</a>
                <a class="dropdown-item" href="FAQ.jsp">FAQ</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">마이메뉴</a>
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
		String id=(String)session.getAttribute("id");
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
    <section class="ftco-cover overlay" style="background-image: url(images/Main_1.jpg);" id="section-home" data-aos="fade"  data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center ftco-vh-100">
          <div class="col-md-8 text-center">
            <h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">Welcome to DamoaTaxi</h1>
            <a href="jang_reservation.jsp" data-aos="fade-up" data-aos-delay="200" class="btn btn-outline-white px-4 py-3" style="margin-right: 30px;">장애인 택시 예약</a>
            <a href="gwan_reservation.jsp" data-aos="fade-up" data-aos-delay="200" class="btn btn-outline-white px-4 py-3">관광 택시 예약</a>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->

    <section class="ftco-section-2">
      <div class="container-fluid">
        <div class="section-2-blocks-wrapper row no-gutters">
          <div class="img col-sm-12 col-md-6" style="background-image: url('images/image_1.jpg');" data-aos="fade-right">
          </div>
          <div class="text col-md-6">
            <div class="text-inner align-self-start" data-aos="fade-up">

              <h3>이달의 추천 관광코스</h3>
              <p>7월 가장 핫한 관광 코스</p>

              <p>역사 코스 인사동(한복대여) -> 경복궁 -> 서울 역사박물관 -> 경희궁 -> 덕수궁 석조전</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <div class="ftco-section">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
          <div class="col-md-7 text-center" data-aos="fade-up">
            <h2>관광 코스</h2>
          </div>
        </div>

        <div class="row">
          <div class="col-md-6 col-lg-4" data-aos="fade-up">
            <div class="media block-6 d-block text-center">
              <div class="icon mb-4"><span class="flaticon-gavel"></span></div>
              <div class="media-body">
                <h3 class="heading">A 코스 : 랜드마크 투어</h3>
                <p>숭례문에서 사진촬영 -> 문화역 서울 284에서 역 외관 관찰 및 박물관 전시 관람 -> 덕수궁 고궁관람 및 한복체험 -> 광화문광장 사진촬영   -> 경복궁 고궁관람 및 한복체험 -> 서울광장 문화 행사</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="media block-6 d-block text-center">
              <div class="icon mb-4"><span class="flaticon-balance"></span></div>
              <div class="media-body">
                <h3 class="heading">B 코스 : 먹거리 투어</h3>
                <p>광장시장에서 마약김밥 시식 -> 남산에서 남산돈까스 시식 -> 종로5가에서 곱창 시식 -> 신당동에서 신당동떡볶이 시식 -> 을지로 노가리 시식</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="media block-6 d-block text-center">
              <div class="icon mb-4"><span class="flaticon-lawyer"></span></div>
              <div class="media-body">
                <h3 class="heading">C 코스 : 문화 투어</h3>
                <p>경복궁 옆 국립현대 미술관 -> 서울 시립미술관 -> 국립 현대미술관 -> 우정아트 센터</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


  <div class="ftco-section testimony-img" id="ftco-testimony" style="background-image: url(images/image_8.jpg);" data-aos="fade"  data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row justify-content-center mb-5 pb-5">
        <div class="col-md-7 text-center heading" data-aos="fade-up">
          <h2>사용자후기</h2>
        </div>
      </div>
    </div>
    <div class="container-fluid">
     <% if (count <= 4) { %>
      <div class="row d-flex no-gutters" align="center">
		<h2 style="color:white;" align="center">후기가 없습니다!</h2>        
      </div>
      <%} else {%>
      <div class="row d-flex no-gutters">
   	  <%
    	  for(int i = 0; i<5; i++){
				review_BoardDTO board = boardList.get(i);  
      %>
        <div class="col-lg align-self-sm-end" data-aos="fade-up">
          <div class="testimony">
             <blockquote>
                <a href="review_boardShow.jsp?boardID=<%=board.getBoardID() %>"><p style="color:white;">&ldquo;<%=board.getBoardTitle() %>&rdquo;</p></a>
              </blockquote>
              <div class="author d-flex mt-4">
                <div class="image mr-3 align-self-center">
                  <img src="../upload/<%=board.getBoardFile() %>" alt="이미지가 없습니다.">
                </div>
                <div class="name align-self-center"><%=board.getUserID() %> <span class="position">조회수 : <%=board.getBoardHit() %></span></div>
              </div>
          </div>
        </div>
	      <%}%>
	 </div>
   	  <%}%>
    </div>
  </div>

  <div class="ftco-section bg-light">
    <div class="container">
      <div class="row justify-content-center mb-5 pb-5">
        <div class="col-md-7 text-center"  data-aos="fade-up">
          <h2>이달의 기사님</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-6 col-md-4" data-aos="fade-up">
          <div class="block-10">
            <div class="person-info mb-3">
              <span class="name">권욱현</span>
              <span class="position">운전경력 20년 같은 2년차</span>
            </div>
            <img src="images/person_1.jpg" alt="" class="img-fluid">
          </div>
        </div>
        <div class="col-sm-6 col-md-4" data-aos="fade-up">
          <div class="block-10">
            <div class="person-info mb-3">
              <span class="name">이준</span>
              <span class="position">무면허</span>
            </div>
            <img src="images/person_3.jpg" alt="" class="img-fluid">
          </div>
        </div>
        <div class="col-sm-6 col-md-4" data-aos="fade-up">
          <div class="block-10">
            <div class="person-info mb-3">
              <span class="name">장찬모</span>
              <span class="position">30년차</span>
            </div>
            <img src="images/person_2.jpg" alt="" class="img-fluid">
          </div>
        </div>
      </div>
    </div>
  </div>

   <div class="ftco-section">
    <div class="container">
      <div class="row justify-content-center mb-5 pb-5">
        <div class="col-md-7 text-center"  data-aos="fade-up">
          <h2>Contact Us</h2>
        </div>
      </div>
      <div class="row block-9" data-aos="fade-up">
        <div class="col-md-6 pr-md-5">
          <form action="#">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Your Name">
            </div>
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Your Email">
            </div>
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Subject">
            </div>
            <div class="form-group">
              <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
            </div>
            <div class="form-group">
              <input type="submit" value="Send message" class="btn btn-primary">
            </div>
          </form>
        </div>
        <div class="col-md-6" data-aos="fade-up" id="map"></div>
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
  <script src="js/main.js"></script>

  </body>
</html>

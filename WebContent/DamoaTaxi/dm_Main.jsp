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
 	<link rel="stylesheet" href="css/time.css">
 	<link rel="stylesheet" href="css/lineup.css">
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
                <a class="dropdown-item" href="carlist.jsp">차량소개</a>
                <a class="dropdown-item" href="Service_Guide.jsp">서비스 이용방법</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">예약</a>
              <div class="dropdown-menu" aria-labelledby="dropdown">
                <a class="dropdown-item" href="./reservation/jang_reservation.jsp">장애인 택시 예약</a>
                <a class="dropdown-item" href="./reservation/gwan_reservation.jsp">관광 택시 예약</a>
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
                <a class="dropdown-item" href="reservation_status.jsp">예약현황</a>
                <a class="dropdown-item" href="dm_privacy.jsp">개인정보</a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
	<% 		
		String id=(String)session.getAttribute("id");
		String category=(String)session.getAttribute("category");
		if(id==null || id.equals("")){
	%>
			<script>
				document.getElementById("logout").style.display='none';
			</script>
	<%		
		}else if(id.equals("admin") || category.equals("Idriver") || category.equals("Tdriver")){
	%>
		<script>
			location.href='./manage/manageMain.jsp';
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
            <a href="./reservation/jang_reservation.jsp" data-aos="fade-up" data-aos-delay="200" class="btn btn-outline-white px-4 py-3" style="margin-right: 30px;">장애인 택시 예약</a>
            <a href="./reservation/gwan_reservation.jsp" data-aos="fade-up" data-aos-delay="200" class="btn btn-outline-white px-4 py-3">관광 택시 예약</a>
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
            <h2>다모아 택시는 특수목적을 가진 택시입니다.</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-4" data-aos="fade-up">
            <div class="media block-6 d-block text-center">
              <div class="icon mb-4"><span><img src="images/q.PNG"></span></div>
              <div class="media-body">
                <h3 class="heading">베스트 드라이버</h3>
                <p>저희는 안전하고 경력을 가진 기사님들을 <br>선출하였고 고객님들의 성향을 고려하여 <br>고객님들에게 맞는 기사님을 직접 선택하여 <br>이용하실 수도 있습니다.</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="media block-6 d-block text-center">
              <div class="icon mb-4"><span><img src="images/qq.PNG"></span></div>
              <div class="media-body">
                <h3 class="heading">다양한 목적</h3>
                <p>저희 다모아 택시는 일반고객, 장애고객, <br>관광고객등 다양한 목적을 가지고 있으신 <br>이용객들이 안전하고 편리하게 사용하시길<br>바라는 마음으로 제작되었습니다.</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="media block-6 d-block text-center">
              <div class="icon mb-4"><span><img src="images/qqq.PNG"></span></div>
              <div class="media-body">
                <h3 class="heading">만족도 평가</h3>
                <p>저희 다모아 택시는 다른 플랫폼과 <br>다르게 이용객과 기사님들의 후기및 <br>평점제를 사용하여 등급을 나누어 보다 <br>쾌적한 환경을 제공합니다.</p>
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

	<section class="ftco-section-2">
	<div class="container-fluid">                 
	<div class="text col-md-12">
	<div class="text-inner align-self-start" data-aos="fade-up">
		<body>
		<center>
		<div class="body1">
		<h1>서비스 이용 안내</h1>
    		<div class="container1">
        		<div class="card">
            	<div class="face face1">
                	<div class="content">
                    	<div class="icon">                                        
                         <img src="./images/employee.png" style="width:70%" higth="20px">                    
                    </div>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <h3>회사소개</h3>
                    <p>저희 Domoa Taxi는 장애인 이용객을 위한 픽업 및 맞춤 서비스를 운영하고 있습니다. 
                    고객의 필요에 따른 다양한 차종, 요금제, 관광 안내, 시간 대절,
                    청각 장애인들을 위한 언어 서비스로 최대의 만족을 얻을수 있습니다.</p>
               </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <div class="icon">                        
                         <img src="./images/customer-service.png" style="width:70%">                    
                    </div>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <h3>안내</h3>
                    <p>장애인 이용객의 경우: 맟춤 서비스를 제공하고 있습니다.
                    고객의 필요 따른 다양한 차종이 구비되어 있으며 청각장애인의 경우를 위한 언어 서비스도 준비되어 있습니다.
                    </p>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <div class="icon">
                         <img src="./images/timetable.png" style="width:70%">           
                    </div>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <h3>운영시간</h3>
                    <p>24시간 사용가능 합니다</p>
                    </center>
					</div>
				</div>
			</div>
    </section>

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
    <div class="asd">이용약관 &nbsp &nbsp 개인정보 처리방침
    </div>
    <div>다모아 택시 | 대표:권욱현<br></div>
    <div>서울특별시 강서구 발산점<br></div>
    <div>고객문의:DamoaTaxi1234@naver.com<br></div>
    <div>연락문의:010-0000-0000 | 02-000-0000<br></div>
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

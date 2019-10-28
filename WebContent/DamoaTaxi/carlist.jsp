<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>DamoaTaxi</title>
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
 	<link rel="stylesheet" href="css/Course.css">
	<link rel="stylesheet" href="css/carlist.css">

  </head>
  <body>

    <jsp:include page="nav.jsp" flush="false"></jsp:include>
    
	<% 		
		String id=(String)session.getAttribute("id");
		String category=(String)session.getAttribute("category");
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
            <h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">차량 소개</h1>
            <h2 class="h5 ftco-subheading mb-5" data-aos="fade-up"  data-aos-delay="600">예약 시 예시로 드리는 기본 리스트입니다</a></h2>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->
		
	<div class="cards">

<div class="card">
    <img class="card__image" src="./images/StarRex.jpg" alt="water" />
    <div class="card-title">
      <a href="#" class="toggle-info btn">
        <span class="left"></span>
        <span class="right"></span>
      </a>
      <h2>
          장애인 택시1
          <small>스타렉스</small>
      </h2>
    </div>
    <div class="card-flap flap1">
      <div class="card-description">
      호흡기 장애인을 위해 관련장비가 구비되어있습니다.<br> 
      휠체어를 탑승한 상태에서 택시 이용이 가능합니다.(모든 휠체어 이용가능)<br> 
      시각장애인의 경우, 안내견 동반 탑승이 가능하고, 시각장애인용 음성 지원 기능은 준비되어있습니다.<br> 
      </div>
    </div>
  </div>

  <div class="card">
    <img class="card__image" src="./images/sonata.jpg" alt="water" />
    <div class="card-title">
      <a href="#" class="toggle-info btn">
        <span class="left"></span>
        <span class="right"></span>
      </a>
      <h2>
          장애인택시2
          <small>소나타</small>
      </h2>
    </div>
    <div class="card-flap flap1">
      <div class="card-description">
      호흡기 장애인을 위한 관련장비가 없습니다.<br> 
       휠체어를 탑승한 상태에서 택시 이용이 불가능합니다.<br> 
       시각장애인의 경우, 안내견 동반 탑승이 가능하고, 시각장애인용 음성 지원 기능은 준비되어 있습니다.<br> 
      </div>
    </div>
  </div>

  <div class="card">
    <img class="card__image" src="./images/carnival.jpg" alt="river" />
    <div class="card-title">
      <a href="#" class="toggle-info btn">
        <span class="left"></span>
        <span class="right"></span>
      </a>
      <h2>
          장애인 택시3
          <small>카니발</small>
      </h2>
    </div>
    <div class="card-flap flap1">
      <div class="card-description">
       호흡기 장애인을 위한 관련장비가 구비되어있지않습니다.<br> 
      휠체어를 탑승한 상태에서 택시 이용이 불가능합니다<br> 
      대신 표준 사이즈의 수동 휠체어를 이용할 시, 기사분이 승차를 도와줍니다<br> 
      시각장애인의 경우, 안내견 동반 탑승이 가능하고, 시각장애인용 음성 지원 기능은 준비되어있습니다<br> 
      </div>
    </div>
  </div>

  <div class="card">
    <img class="card__image" src="./images/StarRex2.jpg" alt="kite" />
    <div class="card-title">
      <a href="#" class="toggle-info btn">
        <span class="left"></span>
        <span class="right"></span>
      </a>
      <h2>
          관광택시1
          <small>스타렉스</small>
      </h2>
    </div>
    <div class="card-flap flap1">
      <div class="card-description">
        안락한 좌석에 리무진을 이용하실 수 있습니다. <br>
        장시간 비행때문에 지친 고객님들을 위해서<br>
        최적의 형상과 소재로 마감한 윙타입 헤드레스트를 제공합니다<br> 
      </div>
      <div class="card-flap flap2">
      </div>
    </div>
  </div>
  
  <div class="card">
    <img class="card__image" src="./images/sonata.jpg" alt="underwater" />
    <div class="card-title">
      <a href="#" class="toggle-info btn">
        <span class="left"></span>
        <span class="right"></span>
      </a>
      <h2>
          관광택시2
          <small>소나타</small>
      </h2>
    </div>
    <div class="card-flap flap1">
      <div class="card-description">
        나파가죽시트를 적용하여 안락함을 적용합니다<br> 
      </div>
      <div class="card-flap flap2">
      </div>
    </div>
  </div>

  <div class="card">
    <img class="card__image" src="./images/carnival.jpg" alt="desert" />
    <div class="card-title">
      <a href="#" class="toggle-info btn">
        <span class="left"></span>
        <span class="right"></span>
      </a>
      <h2>
          관광택시3
          <small>카니발</small>
      </h2>
    </div>
    <div class="card-flap flap1">
      <div class="card-description">
         휴대폰 무선충전시스템을 제공하여 휴대폰에 배터리가 없을 시 제공하고 있습니다. <br>    
      </div>
      <div class="card-flap flap2">
      </div>
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
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script src="js/Course.js"></script>
  <script src="js/Carlist.js"></script>
  

  </body>
</html>

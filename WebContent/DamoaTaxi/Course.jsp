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
            <h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">관광코스 소개</h1>
            <h2 class="h5 ftco-subheading mb-5" data-aos="fade-up"  data-aos-delay="600">예약 시 예시로 드리는 기본 코스입니다</a></h2>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->

        <div class="slider-container">
  		<div class="slider-control left inactive"></div>
  		<div class="slider-control right"></div>
  			<ul class="slider-pagi"></ul>
  			<div class="slider">
    			<div class="slide slide-0 active">
      			<div class="slide__bg"></div>
      			<div class="slide__content">
        			<svg class="slide__overlay" viewBox="0 0 720 405" preserveAspectRatio="xMaxYMax slice">
          				<path class="slide__overlay-path" d="M0,0 150,0 500,405 0,405" />
        			</svg>
        			<div class="slide__text">
          				<h2 class="slide__text-heading">A Course<br>랜드 마크 투어</h2>
          				<p class="slide__text-desc">숭례문에서 사진촬영<br>
          				 문화역 서울 284에서 박물관 전시관람<br>
								덕수궁 고궁관람 및 한복 체험<br> 
								광화문 광장 사진 촬영<br>
								경복궁 고궁관람 및 한복체험<br>
								서울광장 문화행사</p>
						<a class="slide__text-link" onclick="window.open('ACourse.jsp','관광택시 A코스','width=450px, height=800, scrollbars=no, resizable=no, toolbars=no, menubar=no')">바로가기</a>
        			</div>
      			</div>
    		</div>
    		<div class="slide slide-1 ">
      			<div class="slide__bg"></div>
      			<div class="slide__content">
        			<svg class="slide__overlay" viewBox="0 0 720 405" preserveAspectRatio="xMaxYMax slice">
          				<path class="slide__overlay-path" d="M0,0 150,0 500,405 0,405" />
        			</svg>
        		<div class="slide__text">
          			<h1 class="slide__text-heading">B Course<br>먹거리투어</h1>
          			<p class="slide__text-desc">
          			 광장시장에서마약김밥시식<br>
          			  남산에서 돈까스 시식<br>
          			  종로 5가에서 곱창시식<br>
          			  신당동에서 신당동 떡볶이 시식<br>
          			  을지로 노가리 시식</p>
          		<a class="slide__text-link" onclick="window.open('BCourse.jsp','관광택시 B코스','width=450px, height=800, scrollbars=no, resizable=no, toolbars=no, menubar=no')">바로가기</a>
        		</div>
     	 		</div>
    		</div>
    		<div class="slide slide-2">
      			<div class="slide__bg"></div>
      			<div class="slide__content">
        			<svg class="slide__overlay" viewBox="0 0 720 405" preserveAspectRatio="xMaxYMax slice">
        	  			<path class="slide__overlay-path" d="M0,0 150,0 500,405 0,405" />
        			</svg>
        	<div class="slide__text">
          		<h2 class="slide__text-heading">C Course<br>문화투어</h2>
          			<p class="slide__text-desc">
          			덕수궁 옆 국립 현대 미술관<br>
          			서울 시립미술관<br>
					대림 미술관</p>
          			<a class="slide__text-link" onclick="window.open('CCourse.jsp','관광택시 C코스','width=450px, height=800, scrollbars=no, resizable=no, toolbars=no, menubar=no')">바로가기</a>        	
          	</div>
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
  

  </body>
</html>

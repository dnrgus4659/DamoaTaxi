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
    <link rel="stylesheet" href="css/Service.css">
  </head>
  <body>

  <jsp:include page="nav.jsp" flush="false"></jsp:include>
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

    <section>
  
  <article>
    <div class="box"><img src="./images/StarRex.jpg" alt="" /></div>
  <div class="box">
    <div class="feed">        
    <h4>안녕하세요 저희 다모아 택시를 이용해주시는 고객님들!<br>
              장애인택시에 대해서 설명 드리겠습니다</h4><br>
      <p>■첫번째:장애인고객님들을 위해서 응급치료가 빠르게 가능하도록  차량에 구비해놓았습니다.<br><br>
      ※단! 응급치료가 가능하지 않은 차량도 있으니 예약하실때 차종선택을 하실때 주의 하시기 바랍니다.<br><br>
      ■두번째:다모아 택시의 이용방법은 메뉴바 소개->이용방법에 있으니 그것을 잘 봐주시기 바랍니다.<br><br>
      ■세번째:저희 다모아 택시는 고객여러분의 안전한 이동경험을 위해 안전운행 메뉴얼를 이용자 대응매뉴얼이 포함되며,매 운행 시 이용자에게 드라이버에 대한 평가를 받아 드립니다<br> 
    </p>
    <p>저희 다모아 택시는 최선을 다해 고객여러분을 모시겠습니다.</p>
    </div>
  </div>

</article>

<article>
  <div class="box"><img src="./images/Genesis.jpg" alt="" /></div>
  <div class="box">
    <div class="feed">        
    <h4>안녕하세요 저희 다모아 택시를 이용해주시는 고객님들!<br>
              관광택시에 대해서 설명 드리겠습니다</h4><br>
      <p>■첫번째:관광코스에 대해 자세한 사항은 메뉴=>소개=>관광코스=>링크를 누르시면 자세한 사항을 보실 수 있습니다.<br><br>
      ■두번째:관광코스 요금결제는 동일합니다. <br><br>
       ※단! 관광코스에서 보시지 않을 코스는 예약 직전에 말씀해주시기 바랍니다. 이점은 저희 다모아에서 책임지지 않습니다!!!<br><br>
    </p>
    <p>저희 다모아 택시는 최선을 다해 고객여러분을 모시겠습니다.</p>
    </div>
  </div>

</article>
</section>

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

  </body>
</html>

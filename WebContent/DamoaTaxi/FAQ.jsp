<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
	<title>다모아택시</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/FAQ_reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="css/FAQ_style.css"> <!-- Resource style -->
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
	<script src="js/modernizr.js"></script> <!-- Modernizr -->
	
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
    <section class="ftco-cover overlay" style="background-image: url(images/faq.png);" id="section-home" data-aos="fade"  data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center ftco-vh-100">
          <div class="col-md-8 text-center">
            <h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">FAQ</h1>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->
<section class="cd-faq">
	<div class="cd-faq-items">
		<ul id="basics" class="cd-faq-group">
			<li class="cd-faq-title"><h2>예약</h2></li>
			<li>
				<a class="cd-faq-trigger" href="#0">예약내용은 어디에서 확인가능한가요?</a>
				<div class="cd-faq-content">
					<p>[회원 로그인 예약시]
사이트 상단메뉴의 마이페이지 > 예약 조회 화면에서 확인가능하며, 주문번호(숫자)를 클릭하시면 예약내용을 상세하게 확인할 수 있습니다.

[비회원 예약시]
현재는 비회원이신 분들은 사이트 내에서 예약내용 확인이 불가능합니다. 예약시 입력하신 메일주소로 메일이 발송되오니, 메일을 확인하여 주십시요. *스팸함으로 전송되는 경우도 있으니 참고바랍니다.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">장애인콜택시를 이용하기 위한 접수방법을 알고</a>
				<div class="cd-faq-content">
					<p>장애인콜택시를 신청하시려면 콜센터(국번없이 1588-4388)에 전화 또는 문자(40자 이내)를 이용하시거나, 
    인터넷(http:calltaxi.sisul.or.kr), 모바일앱을 통하여 접수하시면 됩니다.
    * 앱 - 안드로이드폰(구글 플레이스토어)/아이폰(앱스토어) :장콜 혹은 장애인콜택시 신청

장애인콜택시의 접수 방식은 크게 바로콜, 예약(전일접수), 정기접수 세가지로 나뉩니다.
 > 바로콜(원칙) : 이용시점에 접수
 > 정기접수 : 정기적으로 같은 시각에, 동일한 출발자애서 동일한 목적지를 이용하는 고객의 신청을 받아 대신 접수해주는 방식 (*예약제 아님)

  - 신청가능 기간 : 최소 1개월부터 최장 6개월
  - 1일 2회만 신청이 가능하며, 출발지, 목적지 및 시간변경 불가
  - 치료, 재활, 통학, 출근, 귀가 목적으로만 신청가능 

>전일접수(예약)
  - 대     상 : 휠체어를 이용하는 지체,뇌병변 1급 장애인
  - 접수방법 : 이용희망시간 24시간 전부터 접수 ( 오전 7시, 8시, 10시에 한하여 시행)
    * 차고지별 이용자가 많을 경우 제한운행이 불가피함을 알려드립니다.

연락처 : 장애인콜택시 콜센터 ( 1588-4388)</p>
				</div> <!-- cd-faq-content -->
			</li>
		</ul> <!-- cd-faq-group -->

		<ul id="mobile" class="cd-faq-group">
			<li class="cd-faq-title"><h2>이용</h2></li>
			<li>
				<a class="cd-faq-trigger" href="#0">장애인콜택시 운행시간 및 요금수전에 대해 알고 싶습니다 </a>
				<div class="cd-faq-content">
					<p>장애인 콜택시는 24시간 연중무휴로 운행하고 있습니다.
 운행시간  
     - 주간 : 오전 7부터 오후 10시                * 각 조별 1일 10시간 시차제 운행
     - 야간 : 오후 7시부터 익일 오전 07:00 
   > 주간(평일)에정구직 운전원9개조로 편성 (각조 48명) 시차제 운영
   > 야간에는 22대, 2개조 격일제 운행          * 파트타임 운전자 별도 운행

 이용요금 : 도시철도요금의 3배 이내로 아래와 같습니다.
   > 기본요금 : 5km까지 1,500원
   > 추가요금 : 5km초과 10km까지 매 km마다 280원 
                 : 10km초과시 부터 매 km마다 70원
   > 시간요금 : 지역할증 미적용

 연락처 : 장애인콜택시 콜센터 ( 1588-4388)</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">장애인 콜택시 운행지역은 어디인지 알고 싶습니다.</a>
				<div class="cd-faq-content">
					<p>운행지역은 서울시계내 운행을 원칙으로 하고 있습니다. 
단, 서울시 인접 12개지역 및 인천국제공항에 한하여 운행을 하고 있습니다. 
 - 인접지역 : 부천시, 김포시, 양주시, 고양시, 의정부시, 남양주시, 구리시, 하남시, 성남시, 과천시, 안양시, 광명시
 - 수도권지역(도서지역 제외)에 장애인의 재활을 목적으로 설치된 병원에서 진료 및 치료를 목적으로 이동하는 경우 사전에 콜센터의 승인을 얻어 이용할 수 있습니다.
 * 인접지역 및 수도권지역의 운행은 서울시내에서 출발하는 경우만 가능 </p>
				</div> <!-- cd-faq-content -->
			</li>
		</ul> <!-- cd-faq-group -->

		<ul id="account" class="cd-faq-group">
			<li class="cd-faq-title"><h2>사이트관련</h2></li>
			<li>
				<a class="cd-faq-trigger" href="#0">사전 예약없이 서울관광택시 이용이 가능합니까?</a>
				<div class="cd-faq-content">
					<p>서울관광택시는 100% 예약제로 운영되고 있습니다. 사전 예약없이 택시를 사용할수 없습니다.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">서울관광택시 에서 사용할수 있는 차량은?</a>
				<div class="cd-faq-content">
					<p>중형블랙 : 소나타,그랜져 대형택시 : 카니발리무진,스타렉스리무진,스타렉스 고급택시 : 벤츠리무진,체어맨리무진,스타크레프트 </p>
				</div> <!-- cd-faq-content -->
			</li>
		</ul> <!-- cd-faq-group -->

		<ul id="payments" class="cd-faq-group">
			<li class="cd-faq-title"><h2>결제</h2></li>
			<li>
				<a class="cd-faq-trigger" href="#0">세금계산서 발행은 가능합니까?</a>
				<div class="cd-faq-content">
					<p>네 세금계산서 발행 가능합니다. 세금계산서 발행시 부가세 10% 합산됩니다.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">결제 수단은 뭐가 있나요?</a>
				<div class="cd-faq-content">
					<p>카드, 계좌이체 등이 있습니다.</p>
				</div> <!-- cd-faq-content -->
			</li>
		</ul> <!-- cd-faq-group -->
	</div> <!-- cd-faq-items -->
	<a href="#0" class="cd-close-panel">Close</a>
</section> <!-- cd-faq -->
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
<script src="js/FAQ_main.js"></script> <!-- Resource jQuery -->
</body>
</html>
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
            <h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">서비스 이용방법</h1>
            <h2 class="h5 ftco-subheading mb-5" data-aos="fade-up"  data-aos-delay="600">이용방법 가이드를 참조하세요</a></h2>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->
   
	<div class="wrapper">
    <div class="lw-tabs">
        <div class="lw-tab-fixed">
            <h2>이용방법 가이드</h2>
            <div id="lw-tab-nav" data-tab-nav="" class="lw-tab-nav">
                <ul>
                    <li class="is-active">
                        <a href="#lw-tab-1" data-tab="#lw-tab-1"><span>Step1</span></a>
                    </li>
                    <li>
                        <a href="#lw-tab-2" data-tab="#lw-tab-2"><span>Step2</span></a>
                    </li>
                    <li>
                        <a href="#lw-tab-3" data-tab="#lw-tab-3"><span>Step3</span></a>
                    </li>
                    <li>
                        <a href="#lw-tab-4" data-tab="#lw-tab-4"><span>Step4</span></a>
                    </li>
                </ul>
            </div> <!-- /tab-nav -->
        </div>

        <div id="lw-tab-panels" data-tab-panels="" class="lw-tab-panels">

            <a href="#lw-tab-1" data-accordion-header="" class="lw-accordion-header theme-blue is-active">로그인/회원가입</a>

            <div id="lw-tab-1" data-tab-panel="" class="lw-tab-panel theme-blue">

                <div class="lw-tab-content">
                    <div class="lw-tab-text-move">
                        <h3>로그인/회원가입</h3>
                        <div class="lap-and-up-only">
                        <p>
                        ①마이메뉴->로그인/회원가입<br>
                        ②로그인 입력 폼 아래에 회원가입/바로가기 버튼 누르기<br>
                        ③회원가입은 두가지로 분류됨(장애인택시,관광택시)<br>
                        ④아이디 입력란에 사용할 아이디를 입력하고 중복확인 버튼 누르기<br>
                        ⑤그 후 다른 입력란에 다 작성 후 회원가입 버튼을 누르면 회원가입 완료!<br>
                        ※단! 장애인 택시의 경우는 장애인 증명서가 필요합니다.<br>
                        장애인 증명서를 다운받으셔서 등록해 주시기 바랍니다.<br>
                        <a href="http://www.minwon.go.kr/main?a=AA020InfoCappViewApp&HighCtgCD=&CappBizCD=14600000273"
                         class="btn">장애인증명서 다운로드 페이지</a>
                        </p>
                        
                        </div>
                        
                    </div>
                </div>
                <div class="lw-tab-image">
                    <div class="lw-tab-image-dimmer"></div>
                    <div class="stat lw-tab-text-move">
                    </div>
                </div>
            </div>

            <a href="#lw-tab-2" data-accordion-header="" class="lw-accordion-header theme-purple">예약</a>

            <div id="lw-tab-2" data-tab-panel="" class="lw-tab-panel theme-purple">

                <div class="lw-tab-content">
                    <div class="lw-tab-text-move">
                        <h3>예약</h3>
                        <div class="lap-and-up-only">
                        <p>
                        (장애인 택시 예약하는 방법)<br>
                        ①예약->장애인예약 클릭<br>
                        ②예약자명,이용시간,휴대폰번호,승차장소,하차장소를 입력하세요.<br>
                        ③예약날짜,탑승인원,기사지정은 선택해주세요.<br>
                        ④③번의 기사지정 같은 경우는 다른 이용객이 있을 경우 예약이 불가능합니다.<br>
                        그 점을 유의해주시기바랍니다.<br>
                        </p>
                        <p>
                        (관광 택시 예약하는 방법)<br>
                        ①예약->장애인예약 클릭<br>
                        ②예약자명,이용시간,휴대폰번호을 입력하세요.<br>
                        ③예약날짜,탑승인원,기사지정,승,하장소를 선택해주세요.<br>
                        ④③번의 기사지정 같은 경우는 다른 이용객이 있을 경우 예약이 불가능합니다.<br>
                        그 점을 유의해주시기바랍니다.<br>
                        ⑤관광코스는 고객님께서 원하시지 않으면 변경할 수 있습니다.<br>
                        ※미리 세부사항에 알려주세요!!
                        </p>
                        </div>
                        
                    </div>
                </div>
                <div class="lw-tab-image">
                    <div class="lw-tab-image-dimmer"></div>
                    <div class="stat lw-tab-text-move">
            
                    </div>
                 </div>
            </div>

            <a href="#lw-tab-3" data-accordion-header="" class="lw-accordion-header theme-green">예약현황</a>

            <div id="lw-tab-3" data-tab-panel="" class="lw-tab-panel theme-green">

                <div class="lw-tab-content">
                    <div class="lw-tab-text-move">
                        <h3>예약현황</h3>
                        <div class="lap-and-up-only">
                        <p>
                        ①로그인->마이메뉴->예약현황 순으로 하셔야합니다.<br>
                        ②예약현황에는 장바구니와 예약현황으로 분류되어 있습니다.<br>
                        ③예약현황은 장바구니에서 결제를 해야 예약이 됩니다.<br>
                        </p>
                        </div>
                        
                    </div>
                </div>
                <div class="lw-tab-image">
                    <div class="lw-tab-image-dimmer"></div>
                    <div class="stat lw-tab-text-move">
                     
                    </div>
                </div>
            </div>

            <a href="#lw-tab-4" data-accordion-header="" class="lw-accordion-header theme-yellow">결제</a>

            <div id="lw-tab-4" data-tab-panel="" class="lw-tab-panel theme-yellow">

                <div class="lw-tab-content">
                    <div class="lw-tab-text-move">
                        <h3>결제</h3>
                        <div class="lap-and-up-only">
                        <p>
                        ①로그인->마이메뉴->예약현황->장바구니 아래쪽 결제하기버튼 누르기<br>
                        ②결제방법은 현장결제,계좌이체,신용카드<br>
                        ③계좌이체는 033-663-5895로 보내주시면 됩니다.<br>
                        ④신용카드결제는 총 5가지에 지정된 카드로만 결제가 가능합니다.<br>
                        (우리,신한,국민(카카오뱅크포함),하나,BC)<br>
                        ⑤기존에 저희 다모아 택시를 이용하신 고객분들께만 제공되는 서비스입니다<br>
                        </p>
                        <p>
                      	★포인트 적립사항<br>
                     	장애인택시, 관광택시 둘다 택시이용시 적립10% 적용<br>
                     	 ex)결제액 5000원 금액시 500dp적립<br>
                  		※카드포인트에 대한 내역은 저희 다모아 택시에서는 해당상황이 없다는 점을 알아주시기 바랍니다.<br>
                        </p>
                        </div>
 
                    </div>
                </div>
                <div class="lw-tab-image">
                    <div class="lw-tab-image-dimmer"></div>
                    <div class="stat lw-tab-text-move">
                        
                    </div>
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
  <script src="js/Service_Guide.js"></script>
  </body>
</html>

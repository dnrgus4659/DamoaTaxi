<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="Damoa_pro.review_BoardDAO" %>
<%@ page import="Damoa_pro.review_BoardDTO" %>
<%@ page import="manage.driverDAO" %>
<%@ page import="manage.driverDTO" %>
<%@ page import="java.util.ArrayList" %>
<%
	int count = 0;
	review_BoardDAO dbPro = review_BoardDAO.getInstance();
	count = dbPro.getArticleCount();
	ArrayList<review_BoardDTO> boardList =null;
	driverDAO dbPro1 = driverDAO.getInstance();

    ArrayList<driverDTO> driverIList = new driverDAO().getIList();
    ArrayList<driverDTO> driverTList = new driverDAO().getTList();
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
 	<link rel="stylesheet" href="css/Feature.css">
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

	<section class="tabs">
  <ul class="tabs__header">
    <li class="tabs__header--title js-tabs-title active" data-tab="#tab-1">회사소개</li>
    <li class="tabs__header--title js-tabs-title" data-tab="#tab-2">안내</li>
    <li class="tabs__header--title js-tabs-title" data-tab="#tab-3">운영시간</li>
  </ul>
  <div class="tabs__underline js-tabs-underline"></div>
  <article class="tabs__content js-tabs-content active" id="tab-1">
    <h1 class="tabs__content--title">회사소개</h1>
    <p class="tabs__content--text">저희 Domoa Taxi는 장애인 이용객을 위한 픽업 및 맞춤 서비스를 운영하고 있습니다. 
                    고객의 필요에 따른 다양한 차종, 요금제, 관광 안내, 시간 대절,
                    청각 장애인들을 위한 언어 서비스로 최대의 만족을 얻을수 있습니다.</p>
  </article>
  <article class="tabs__content js-tabs-content" id="tab-2">
    <h1 class="tabs__content--title">안내</h1>
    <p class="tabs__content--text">장애인 이용객의 경우: 맟춤 서비스를 제공하고 있습니다.
                    고객의 필요 따른 다양한 차종이 구비되어 있으며 청각장애인의 경우를 위한 언어 서비스도 준비되어 있습니다.</p>
  </article>
  <article class="tabs__content js-tabs-content" id="tab-3">
    <h1 class="tabs__content--title">운영시간</h1>
    <p class="tabs__content--text">24시간 사용가능 합니다</p>
  </article>
</section>

  <div class="ftco-section bg-light">
    <div class="container">
      <div class="row justify-content-center mb-5 pb-5">
        <div class="col-md-7 text-center"  data-aos="fade-up">
          <h2>이달의 기사님</h2>
        </div>
      </div>
      <div class="row">
        <%
			for(int i = 0; i<3; i++){
				driverDTO Idriver = driverIList.get(i);
		%>
          <div class="col-sm-6 col-md-4 mb-4" data-aos="fade-up">
            <div class="block-10">
              <div class="person-info mb-3">
                <span class="name"><%=Idriver.getName() %></span>
                <span class="position"><%=Idriver.getCareer() %>년차</span>
              </div>
              <img alt="이미지가 없습니다." src="../upload/<%=Idriver.getFile() %>" class="img-fluid" style="width: 300px; height: 300px;">
            </div>
          </div>
        <%} %>
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
  <script src="js/Feature.js"></script>
  </body>
</html>

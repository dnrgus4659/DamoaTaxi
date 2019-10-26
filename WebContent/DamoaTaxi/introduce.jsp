<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="manage.driverDAO" %>
<%@ page import="manage.driverDTO" %>
<%@ page import="java.util.ArrayList" %>
<%
	driverDAO dbPro = driverDAO.getInstance();

    ArrayList<driverDTO> driverIList = new driverDAO().getIList();
    ArrayList<driverDTO> driverTList = new driverDAO().getTList();
%>
<!DOCTYPE html>
<html>
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
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
	<jsp:include page="nav.jsp" flush="false"></jsp:include>
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

    <section class="ftco-cover overlay custom_height" style="background-image: url(images/bg_1.jpg);" id="section-home" data-aos="fade"  data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center justify-content-center ftco-vh-75">
          <div class="col-md-9 text-center">
            <h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">기사 소개</h1>
            <h2 class="h5 ftco-subheading mb-5" data-aos="fade-up"  data-aos-delay="600">엄격한 기준으로 채용된 기사들로만 이루어져 있으며, 관광이나 장애인 택시 이용 시
            <br>최대한 불편함 없이 운영할 것을 약속드립니다.</h2>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->

    <div class="ftco-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
          <div class="col-md-7 text-center"  data-aos="fade-up">
            <h2>장애인 택시 기사</h2>
          </div>
        </div>
        <div class="row">
        <%
			for(int i = 0; i<driverIList.size(); i++){
				driverDTO Idriver = driverIList.get(i);
		%>
          <div class="col-sm-6 col-md-4 mb-4" data-aos="fade-up">
            <div class="block-10">
              <div class="person-info mb-3">
                <span class="name"><%=Idriver.getName() %></span>
                <span class="position"><%=Idriver.getCareer() %>년차</span>
                <span class="position">예약 현황 : <%=Idriver.getStatus() %></span>
              </div>
              <img alt="이미지가 없습니다." src="../upload/<%=Idriver.getFile() %>" class="img-fluid" style="width: 300px; height: 300px;">
            </div>
          </div>
        <%} %>
        </div>
      </div>
    </div>

    <div class="ftco-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
          <div class="col-md-7 text-center"  data-aos="fade-up">
            <h2>관광 택시 기사</h2>
          </div>
        </div>
        <div class="row">
          <%
			for(int i = 0; i<driverTList.size(); i++){
				driverDTO Tdriver = driverTList.get(i);
		%>
          <div class="col-sm-6 col-md-4 mb-4" data-aos="fade-up">
            <div class="block-10">
              <div class="person-info mb-3">
                <span class="name"><%=Tdriver.getName() %></span>
                <span class="position"><%=Tdriver.getCareer() %>년차</span>
                <span class="position">예약 현황 : <%=Tdriver.getStatus() %></span>
              </div>
              <img alt="이미지가 없습니다." src="../upload/<%=Tdriver.getFile() %>" class="img-fluid" style="width: 300px; height: 300px;">
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
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>

  </body>
</html>

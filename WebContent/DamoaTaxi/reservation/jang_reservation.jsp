<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="manage.driverDAO" %>
<%@ page import="manage.driverDTO" %>
<%@ page import="java.util.ArrayList" %>
<%
	driverDAO dbPro = driverDAO.getInstance();

    ArrayList<driverDTO> driverIList = new driverDAO().getIList();
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>다모아택시</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

	<link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png" />
	<link rel="icon" type="image/png" href="img/favicon.png" />

	<!--     Fonts and icons     -->
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

	<!-- CSS Files -->
	<link href="css/material-bootstrap-wizard.css" rel="stylesheet" />
	
	<link rel="stylesheet" href="../css/open-iconic-bootstrap.min.css">
	<link rel="stylesheet" href="../css/animate.css">
	<link rel="stylesheet" href="../css/owl.carousel.min.css">
	<link rel="stylesheet" href="../css/owl.theme.default.min.css">
	
	<link rel="stylesheet" href="../css/aos.css">
	<link rel="stylesheet" href="../css/ionicons.min.css">
	<link rel="stylesheet" href="../css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="../css/icomoon.css">
	<link rel="stylesheet" href="css/style.css?ver=1">
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar" data-aos="fade-down" data-aos-delay="500">
      <div class="container">
        <a class="navbar-brand" href="../dm_Main.jsp"><img src="../images/main_logo_big.png" style="width: 149px; height: 70px;"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto" >
            <li class="nav-item active"><a href="../dm_Main.jsp" class="nav-link">홈</a></li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">소개</a>
              <div class="dropdown-menu" aria-labelledby="dropdown">
              	<a class="dropdown-item" href="../Company.jsp">회사소개</a>
                <a class="dropdown-item" href="../Service.jsp">서비스 소개</a>
                <a class="dropdown-item" href="../Course.jsp">관광코스 소개</a>
                <a class="dropdown-item" href="../Service_Guide.jsp">서비스 이용방법</a>
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
              	<a class="dropdown-item" href="../introduce.jsp">기사 소개</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">후기</a>
              <div class="dropdown-menu" aria-labelledby="dropdown">
              	<a class="dropdown-item" href="../review_boardView.jsp">게시판</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">고객센터</a>
              <div class="dropdown-menu" aria-labelledby="dropdown">
              	<a class="dropdown-item" href="../notice_boardView.jsp">공지사항</a>
                <a class="dropdown-item" href="../QnA.jsp">Q&A</a>
                <a class="dropdown-item" href="../FAQ.jsp">FAQ</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">마이메뉴</a>
              <div class="dropdown-menu" aria-labelledby="dropdown">
              	<a class="dropdown-item" href="../dmlogin_form.jsp" id="login">로그인/회원가입</a>
              	<a class="dropdown-item" href="../sessionLogout.jsp" id="logout">로그아웃</a>
                <a class="dropdown-item" href="../product-single.jsp">예약현황</a>
                <a class="dropdown-item" href="../dm_privacy.jsp">개인정보</a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
	<% 		
		String id=(String)session.getAttribute("id");
		String category = (String)session.getAttribute("category");
		if(id==null || id.equals("")){
	%>
			<script>
				document.getElementById("logout").style.display='none';
				alert('로그인 후 이용하실 수 있습니다.');
				location.href="../dmlogin_form.jsp";
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
	<section class="ftco-cover overlay custom_height" style="background-image: url(../images/image_5.jpg);" id="section-home" data-aos="fade" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row align-items-center justify-content-center ftco-vh-75">
				<div class="col-md-9 text-center">
			    	<h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">예약</h1>
				</div>	
			</div>
		</div>
	</section>
    <!-- END section -->
    <!--   Big container   -->
    <div class="container">
        <div class="row">
	        <div class="col mb-lg-5">
	            <!--      Wizard container        -->
	            <div class="wizard-container">
	                <div class="card wizard-card" data-color="orange" id="wizard">
	                    <form action="../../reservationInsertServlet" method="post" id="reservForm">
	                    	<div class="wizard-header">
	                        	<h3 class="wizard-title">
	                        		장애인 택시 예약
	                        	</h3>
								<h5>항상 최선을 다해 모시겠습니다</h5>
	                    	</div>
							<div class="wizard-navigation">
								<ul>
		                            <li><a href="#details" data-toggle="tab">예약 정보</a></li>
		                            <li><a href="#captain" data-toggle="tab">차종 선택</a></li>
		                            <li><a href="#description" data-toggle="tab">세부사항</a></li>
		                        </ul>
							</div>
	                        <div class="tab-content">
	                            <div class="tab-pane" id="details">
	                            	<div class="row">
		                            	<div class="col-sm-12">
		                                	<h4 class="info-text">예약자 정보 입력</h4>
		                            	</div>
	                                	<div class="col-sm-6">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="material-icons">portrait</i>
												</span>
												<div class="form-group label-floating">
		                                          	<label class="control-label">예약자명</label>
		                                          	<input id="name" name="name" type="text" class="form-control">
		                                        </div>
											</div>
											<div class="input-group">
												<span class="input-group-addon">
													<i class="material-icons">date_range</i>
												</span>
												<div class="form-group label-floating">
		                                          	<label class="control-label">이용날짜</label>
		                                          	<div class="controls">
											            <input class="datepicker form-control" id="date" name="date" type="text"/>
													</div>
		                                        </div>
											</div>
	                                	</div>
	                                	<div class="col-sm-6">
	                                    	<div class="input-group">
												<span class="input-group-addon">
													<i class="material-icons">flight_takeoff</i>
												</span>
												<div class="form-group label-floating">
		                                          	<label class="control-label">승차장소</label>
		                                          	<input id="getIn" name="getIn" type="text" class="form-control">
		                                        </div>
											</div>
											<div class="input-group">
												<span class="input-group-addon">
													<i class="material-icons">flight_land</i>
												</span>
												<div class="form-group label-floating">
		                                          	<label class="control-label">하차장소</label>
		                                          	<input id="getOut" name="getOut" type="text" class="form-control">
		                                        </div>
											</div>
		                                </div>
		                                <div class="col-sm-6">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="material-icons">departure_board</i>
												</span>
												<div class="form-group label-floating">
		                                          	<label class="control-label">이용시간(ex.15:00)</label>
		                                          	<input id="time" name="time" type="text" class="form-control">
		                                        </div>
											</div>
											<div class="input-group">
												<span class="input-group-addon">
													<i class="material-icons">phone</i>
												</span>
												<div class="form-group label-floating">
		                                          	<label class="control-label">휴대폰번호('-'없이 입력)</label>
		                                          	<input id="phone" name="phone" type="text" class="form-control">
		                                        </div>
											</div>
	                                	</div>
	                                	<div class="col-sm-6">
											<div class="input-group">
												<span class="input-group-addon" style="width: 100px;">
													<i class="material-icons">person_add</i>
												</span>
												<div class="form-group label-floating">
		                                          	<label class="control-label">탑승인원</label>
		                                          	<select id="person" name="person" class="form-control">
														<option disabled="" selected=""></option>
	                                                	<option value="1"> 1 </option>
	                                                	<option value="2"> 2 </option>
	                                                	<option value="3"> 3 </option>
	                                                	<option value="4"> 4 </option>
	                                                	<option value="5"> 5 </option>
	                                                	<option value="6"> 6 </option>
		                                        	</select>
		                                        </div>
											</div>
											<div class="input-group">
												<span class="input-group-addon">
													<i class="material-icons">how_to_reg</i>
												</span>
												<div class="form-group label-floating">
		                                          	<label class="control-label">기사지정</label>
		                                          	<select id="driver" name="driver" class="form-control">
														<option disabled selected></option>
														<%
															for(int i = 0; i<driverIList.size(); i++){
																driverDTO Idriver = driverIList.get(i);
																if(Idriver.getStatus().equals("가능")){
														%>
	                                                				<option value="<%=Idriver.getName() %>"><%=Idriver.getName() %> 기사님(<%=Idriver.getStatus() %>)</option>
	                                                			<%}else{ %>
	                                                				<option disabled value="<%=Idriver.getName() %>"><%=Idriver.getName() %> 기사님(<%=Idriver.getStatus() %>)</option>
	                                                			<%} %>
	                                                	<%	} %>
		                                        	</select>
		                                        </div>
											</div>
	                                	</div>
		                            </div>
		                        </div>
	                            <div class="tab-pane" id="captain">
	                                <h4 class="info-text">이용하실 차종을 선택해주세요 </h4>
	                                <div class="row">
	                                    <div class="col-sm-10 offset-1">
	                                        <div class="col-sm-4 float-left">
	                                            <div class="choice" data-toggle="wizard-radio">
	                                            	<input class="d-none" type="radio" id="car" name="car" value="starex">
	                                                <div class="icon">
	                                                    <i class="material-icons">local_taxi</i>
	                                                </div>
	                                                <h6>스타렉스(최대 2인)</h6>
	                                            </div>
	                                        </div>
	                                        <div class="col-sm-4 float-left">
	                                            <div class="choice" data-toggle="wizard-radio">
	                                            	<input class="d-none" type="radio" id="car" name="car" value="sonata">
	                                                <div class="icon">
	                                                    <i class="material-icons">drive_eta</i>
	                                                </div>
	                                                <h6>소나타(최대 4인)</h6>
	                                            </div>
	                                        </div>
											<div class="col-sm-4 float-left">
	                                            <div class="choice" data-toggle="wizard-radio">
	                                            	<input class="d-none" type="radio" id="car" name="car" value="carnival">
	                                                <div class="icon">
	                                                    <i class="material-icons">airport_shuttle</i>
	                                                </div>
	                                                <h6>카니발(최대 6인)</h6>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="tab-pane" id="description">
	                                <div class="row">
	                                	<div class="col-sm-12">
		                                	<h4 class="info-text">요청사항</h4>
		                            	</div>
	                                    <div class="col-sm-6 offset-1">
                                    		<div class="form-group">
	                                            <label>휠체어유무등 요청사항을 작성해주세요</label>
	                                            <textarea class="form-control" id="requestContent" name="requestContent" placeholder="" rows="6" style="border-bottom: 1px solid #d2d2d2;"></textarea>
	                                        </div>
	                                    </div>
	                                    <div class="col-sm-4">
	                                    	<div class="form-group">
	                                            <label class="control-label">예시</label>
	                                            <p class="description">"인원은 2명이고 휠체어 1대 있습니다."</p>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
                        	<div class="wizard-footer">
                            	<div class="pull-right">
		                        	<input type="hidden" id="id" name="id" value="<%=id %>"/>
		                        	<input type="hidden" id="category" name="category" value="I"/>
                                    <input type='button' class='btn btn-next btn-fill btn-warning btn-wd' name='next' value='다음' />
                                    <button type='button' class='btn btn-finish btn-fill btn-warning btn-wd' name='addreserv' id='addreserv' onclick="addreservation()">추가예약(담기)</button>
                                    <input type='button' class='btn btn-finish btn-fill btn-warning btn-wd' name='finish' id='finish' value='예약하기' />
                                </div>
                                <div class="pull-left">
                                    <input type='button' class='btn btn-previous btn-fill btn-default btn-wd' name='previous' value='이전' />
                                </div>
                                <div class="clearfix"></div>
                        	</div>
	                    </form>
	                </div>
	            </div> <!-- wizard container -->
	        </div>
    	</div> <!-- row -->
	</div> <!--  big container -->
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
  
  <!--   Core JS Files   -->
	<script src="js/jquery-2.2.4.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/jquery.bootstrap.js" type="text/javascript"></script>

	<!--  Plugin for the Wizard -->
	<script src="js/material-bootstrap-wizard.js?ver=2"></script>

	<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
	<script src="js/jquery.validate.min.js"></script>
	
	<script src="../js/popper.min.js"></script>
	<script src="../js/jquery.easing.1.3.js"></script>
	<script src="../js/jquery.waypoints.min.js"></script>
	<script src="../js/jquery.stellar.min.js"></script>
	<script src="../js/owl.carousel.min.js"></script>
	<script src="../js/jquery.magnific-popup.min.js"></script>
	<script src="../js/aos.js"></script>
	<script src="../js/jquery.animateNumber.min.js"></script>
	<script src="../js/main.js"></script>
	<script src="../js/bootstrap-datepicker.js"></script>
	<script type="text/javascript">
	 $('.datepicker').datepicker({
    	 weekStart:1,
    	 color: 'red'
	 });
	</script>
	</body>
</html>

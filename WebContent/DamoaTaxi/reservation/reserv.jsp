<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
	<!-- <link href="css/bootstrap.min.css" rel="stylesheet" /> -->
	<link href="css/material-bootstrap-wizard.css" rel="stylesheet" />
	
	<link rel="stylesheet" href="../css/open-iconic-bootstrap.min.css">
	<link rel="stylesheet" href="../css/animate.css">
	<link rel="stylesheet" href="../css/owl.carousel.min.css">
	<link rel="stylesheet" href="../css/owl.theme.default.min.css">
	<!-- <link rel="stylesheet" href="../css/magnific-popup.css">변화x -->
	
	<link rel="stylesheet" href="../css/aos.css">
	<link rel="stylesheet" href="../css/ionicons.min.css">
	<!-- <link rel="stylesheet" href="../css/bootstrap-datepicker.css">변화x -->
	<!-- <link rel="stylesheet" href="../css/jquery.timepicker.css">변화x -->
	<!-- <link rel="stylesheet" href="../css/flaticon.css">변화 x -->
	<link rel="stylesheet" href="../css/icomoon.css">
	<link rel="stylesheet" href="../css/style.css?ver=2">
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar" data-aos="fade-down" data-aos-delay="500">
      <div class="container">
        <a class="navbar-brand" href="dm_Main.jsp"><img src="../images/main_logo_big.png" style="width: 149px; height: 70px;"></a>
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
	<section class="ftco-cover overlay custom_height" style="background-image: url(../images/image_5.jpg);" id="section-home" data-aos="fade" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row align-items-center justify-content-center ftco-vh-75">
				<div class="col-md-9 text-center">
			    	<h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">장애인 택시 예약</h1>
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
	                <div class="card wizard-card" data-color="red" id="wizard">
	                    <form action="" method="">
	                <!--        You can switch " data-color="blue" "  with one of the next bright colors: "green", "orange", "red", "purple"             -->
	                    	<div class="wizard-header">
	                        	<h3 class="wizard-title">
	                        		Book a Room
	                        	</h3>
								<h5>This information will let us know more about you.</h5>
	                    	</div>
							<div class="wizard-navigation">
								<ul>
		                            <li><a href="#details" data-toggle="tab">Account</a></li>
		                            <li><a href="#captain" data-toggle="tab">Room Type</a></li>
		                            <li><a href="#description" data-toggle="tab">Extra Details</a></li>
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
													<i class="material-icons">email</i>
												</span>
												<div class="form-group label-floating">
		                                          	<label class="control-label">예약자 명</label>
		                                          	<input name="name" type="text" class="form-control">
		                                        </div>
											</div>
											<div class="input-group">
												<span class="input-group-addon">
													<i class="material-icons">lock_outline</i>
												</span>
												<div class="form-group label-floating">
		                                          	<label class="control-label">흠뭐하지</label>
		                                          	<input name="name2" type="password" class="form-control">
		                                        </div>
											</div>
	                                	</div>
	                                	<div class="col-sm-6">
	                                    	<div class="form-group label-floating">
	                                        	<label class="control-label">Country</label>
                                        		<select class="form-control">
													<option disabled="" selected=""></option>
                                                	<option value="Afghanistan"> Afghanistan </option>
                                                	<option value="Albania"> Albania </option>
                                                	<option value="Algeria"> Algeria </option>
                                                	<option value="American Samoa"> American Samoa </option>
                                                	<option value="Andorra"> Andorra </option>
                                                	<option value="Angola"> Angola </option>
                                                	<option value="Anguilla"> Anguilla </option>
                                                	<option value="Antarctica"> Antarctica </option>
                                                	<option value="...">...</option>
	                                        	</select>
	                                    	</div>
											<div class="form-group label-floating">
	                                        	<label class="control-label">Daily Budget</label>
                                        		<select class="form-control">
													<option disabled="" selected=""></option>
                                                	<option value="Afghanistan"> < $100 </option>
                                                	<option value="Albania"> $100 - $499 </option>
                                                	<option value="Algeria"> $499 - $999 </option>
                                                	<option value="American Samoa"> $999+ </option>
	                                        	</select>
	                                    	</div>
		                                	</div>
		                            	</div>
		                            </div>
	                            <div class="tab-pane" id="captain">
	                                <h4 class="info-text">What type of room would you want? </h4>
	                                <div class="row">
	                                    <div class="col-sm-10 offset-1">
	                                        <div class="col-sm-4 float-left">
	                                            <div class="choice" data-toggle="wizard-radio" rel="tooltip" title="This is good if you travel alone.">
	                                                <input type="radio" name="job" value="Design">
	                                                <div class="icon">
	                                                    <i class="material-icons">weekend</i>
	                                                </div>
	                                                <h6>Single</h6>
	                                            </div>
	                                        </div>
	                                        <div class="col-sm-4 float-left">
	                                            <div class="choice" data-toggle="wizard-radio" rel="tooltip" title="Select this room if you're traveling with your family.">
	                                                <input type="radio" name="job" value="Code">
	                                                <div class="icon">
	                                                    <i class="material-icons">home</i>
	                                                </div>
	                                                <h6>Family</h6>
	                                            </div>
	                                        </div>
											<div class="col-sm-4 float-left">
	                                            <div class="choice" data-toggle="wizard-radio" rel="tooltip" title="Select this option if you are coming with your team.">
	                                                <input type="radio" name="job" value="Code">
	                                                <div class="icon">
	                                                    <i class="material-icons">business</i>
	                                                </div>
	                                                <h6>Business</h6>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="tab-pane" id="description">
	                                <div class="row">
	                                	<div class="col-sm-12">
		                                	<h4 class="info-text">Drop us a small description.</h4>
		                            	</div>
	                                    <div class="col-sm-6 offset-1">
                                    		<div class="form-group">
	                                            <label>Room description</label>
	                                            <textarea class="form-control" placeholder="" rows="6" style="border-bottom: 1px solid #d2d2d2;"></textarea>
	                                        </div>
	                                    </div>
	                                    <div class="col-sm-4">
	                                    	<div class="form-group">
	                                            <label class="control-label">Example</label>
	                                            <p class="description">"The room really nice name is recognized as being a really awesome room. We use it every sunday when we go fishing and we catch a lot. It has some kind of magic shield around it."</p>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
                        	<div class="wizard-footer">
                            	<div class="pull-right">
                                    <input type='button' class='btn btn-next btn-fill btn-danger btn-wd' name='next' value='Next' />
                                    <input type='submit' class='btn btn-finish btn-fill btn-danger btn-wd' name='finish' value='Finish' />
                                </div>
                                <!-- <div class="pull-left">
                                    <input type='button' class='btn btn-previous btn-fill btn-default btn-wd' name='previous' value='Previous' />
									<div class="footer-checkbox">
										<div class="col-sm-12">
										  <div class="checkbox">
											  <label>
												  <input type="checkbox" name="optionsCheckboxes">
											  </label>
											  Subscribe to our newsletter
										  </div>
									  </div>
									</div>
                                </div> -->
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
	<script src="js/material-bootstrap-wizard.js"></script>

	<!--  More information about jquery.validate here: http://jqueryvalidation.org/	 -->
	<script src="js/jquery.validate.min.js"></script>
	
	<!-- <script src="../js/jquery-migrate-3.0.1.min.js"></script> -->
	<script src="../js/popper.min.js"></script>
	<script src="../js/jquery.easing.1.3.js"></script>
	<script src="../js/jquery.waypoints.min.js"></script>
	<script src="../js/jquery.stellar.min.js"></script>
	<script src="../js/owl.carousel.min.js"></script>
	<script src="../js/jquery.magnific-popup.min.js"></script>
	<script src="../js/aos.js"></script>
	<script src="../js/jquery.animateNumber.min.js"></script>
	<script src="../js/main.js"></script>
	
	</body>
</html>

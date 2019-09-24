<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
  <head>
    <title>DamoaTaxi</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="Author" content="http://pablogarciafernandez.com" />
    <meta name="description" content="Table Responsive" />
    <meta name="keywords" content="table, responsive" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    
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
    <link rel="stylesheet" href="css/style.css?ver=3">
    <link rel="stylesheet" type="text/css" href="css/dm_privacy.css">
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
		String category=(String)session.getAttribute("category");
		if(id==null || id.equals("")){
	%>
			<script>
				alert("로그인이 필요합니다.");
				document.getElementById("logout").style.display='none';
				history.go(-1);
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

    <section class="ftco-cover overlay custom_height" style="background-image: url(images/image_5.jpg);" id="section-home" data-aos="fade"  data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center justify-content-center ftco-vh-75">
          <div class="col-md-9 text-center">
            <h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">회원 정보</h1>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->

    <div class="ftco-section bg-light">
    <div class="container">
      <div class="row block-9 justify-content-center" data-aos="fade-up">
        <div class="col-md-11 pr-md-1">
          <center>
          <table class="type10">
    <thead>
    <tr>
        <th scope="cols">회원정보</th>
        <th scope="cols"></th>
    </tr>
    </thead>
    <%
    	Connection conn=null;
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	
    	
    	try{
    		String jdbcUrl="jdbc:mysql://localhost:3306/2019_2A01_DamoaTaxi";
    		String dbId="jspid";
    		String dbPass="jsppass";
    		
    		Class.forName("com.mysql.jdbc.Driver");
    		conn=DriverManager.getConnection(jdbcUrl,dbId,dbPass);
    		if(category.equals("I")){
    			String sql = "select * from impairment_member where impairment_ID=?";
    			pstmt=conn.prepareStatement(sql);
    			pstmt.setString(1, id);
    			rs=pstmt.executeQuery();
    			String impairment_category = "장애인 택시 고객";
    			while(rs.next()){
    				String impairment_ID = rs.getString("impairment_ID");
    				String impairment_Password = rs.getString("impairment_Password");
    				String impairment_Password_check = rs.getString("impairment_Password_check");
    				String impairment_name = rs.getString("impairment_name");
    				String impairment_phone_number = rs.getString("impairment_phone_number");
    				String impairment_email = rs.getString("impairment_email");
    				String impairment_certificate = rs.getString("impairment_certificate");
    				String impairment_point = rs.getString("impairment_point");
    				String impairment_zipcode = rs.getString("impairment_zipcode");
    				String impairment_address = rs.getString("impairment_address");
    			%>
    				<tbody>
    			    <tr>
    			        <th scope="row">회원유형</th>
    			        <td><%=impairment_category %></td>
    			    </tr>
    			    <tr>
    			        <th scope="row">회원명</th>
    			        <td><%=impairment_name %></td>
    			    </tr>
    			    <tr>
    			        <th scope="row">아이디</th>
    			        <td><%=impairment_ID %><button type="button" class="btn btn-info" style="float:right;" data-toggle="modal" data-target="#ID_modi_Modal">변경하기</button></td>
    			    </tr>
    			    <tr>
    			        <th scope="row">비밀번호</th>
    			        <td>********<button type="button" class="btn btn-info" style="float:right;" data-toggle="modal" data-target="#password_modi_Modal">변경하기</button></td>
    			    </tr>
    			    <tr>
    			        <th scope="row">연락처</th>
    			        <td><%=impairment_phone_number %><button type="button" class="btn btn-info" style="float:right;" data-toggle="modal" data-target="#Phone_modi_Modal">변경하기</button></td>
    			    </tr>
    			    <tr>
    			        <th scope="row">이메일</th>
    			        <td><%=impairment_email %><button type="button" class="btn btn-info" style="float:right;" data-toggle="modal" data-target="#email_modi_Modal">변경하기</button></td>
    			    </tr>
    			    <tr>
    			        <th scope="row">우편번호</th>
    			        <td><%=impairment_zipcode %><button type="button" class="btn btn-info" style="float:right;" data-toggle="modal" data-target="#zipcode_modi_Modal">변경하기</button></td>
    			    </tr>
    			    <tr>
    			        <th scope="row">주소</th>
    			        <td><%=impairment_address %></td>
    			    </tr>
    			    <tr>
    			        <th scope="row">포인트</th>
    			        <td><%=impairment_point %>dp</td>
    			    </tr>
    			    </tbody>
    			<%
    			}
    		}else{
    			String sql = "select * from travel_member where travel_ID=?";
    			pstmt=conn.prepareStatement(sql);
    			pstmt.setString(1, id);
    			rs=pstmt.executeQuery();
    			String travel_category = "관광 택시 고객";
    			while(rs.next()){
    				String travel_ID = rs.getString("travel_ID");
    				String travel_Password = rs.getString("travel_Password");
    				String travel_Password_check = rs.getString("travel_Password_check");
    				String travel_name = rs.getString("travel_name");
    				String travel_phone_number = rs.getString("travel_phone_number");
    				String travel_email = rs.getString("travel_email");
    				String travel_point = rs.getString("travel_point");
    				String travel_zipcode = rs.getString("travel_zipcode");
    				String travel_address = rs.getString("travel_address");
    			%>	
    				<tbody>
    			    <tr>
    			        <th scope="row">회원유형</th>
    			        <td><%=travel_category %></td>
    			    </tr>
    			    <tr>
    			        <th scope="row">회원명</th>
    			        <td><%=travel_name %></td>
    			    </tr>
    			    <tr>
    			        <th scope="row">아이디</th>
    			        <td><%=travel_ID %><button type="button" class="btn btn-info" style="float:right;" data-toggle="modal" data-target="#ID_modi_Modal">변경하기</button></td>
    			    </tr>
    			    <tr>
    			        <th scope="row">비밀번호</th>
    			        <td>********<button type="button" class="btn btn-info" style="float:right;" data-toggle="modal" data-target="#password_modi_Modal">변경하기</button></td>
    			    </tr>
    			    <tr>
    			        <th scope="row">연락처</th>
    			        <td><%=travel_phone_number %><button type="button" class="btn btn-info" style="float:right;"  data-toggle="modal" data-target="#Phone_modi_Modal">변경하기</button></td>
    			    </tr>
    			    <tr>
    			        <th scope="row">이메일</th>
    			        <td><%=travel_email %><button type="button" class="btn btn-info" style="float:right;" data-toggle="modal" data-target="#email_modi_Modal">변경하기</button></td>
    			    </tr>
    			    <tr>
    			        <th scope="row">우편번호</th>
    			        <td><%=travel_zipcode %><button type="button" class="btn btn-info" style="float:right;" data-toggle="modal" data-target="#zipcode_modi_Modal">변경하기</button></td>
    			    </tr>
    			    <tr>
    			        <th scope="row">주소</th>
    			        <td><%=travel_address %></td>
    			    </tr>
    			    <tr>
    			        <th scope="row">포인트</th>
    			        <td><%=travel_point %>dp</td>
    			    </tr>
    			    </tbody>
    			<%
    			}
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		if(rs!=null)
    			try{rs.close();}catch(SQLException sqle){}
    		if(pstmt!=null)
    			try{pstmt.close();}catch(SQLException sqle){}
    		if(conn!=null)
    			try{conn.close();}catch(SQLException sqle){}
    	}
    		%>    
    
</table>
  <a href="delete_privacy.jsp"><button class="btn btn-primary">회원탈퇴</button></a>
        </div>
      </div>
    </div>
  </div>
	<!-- Modal -->
	<div id="ID_modi_Modal" class="modal fade" role="dialog" tabindex="-1" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div class="modal-content panel-success">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">아이디 변경하기</h4>
					</div>	
					<div class="modal-body">
						<div class="input-group mt-2">
							<input type="hidden" id="category" value="<%=category %>">
						    <input type="text" class="form-control width100" id="New_id" name="New_id" placeholder="바꿀아이디">
						    <span class="input-group-btn">
						        <button type="button" class="btn btn-info mt-2 ml-2" onclick="ID_check()">중복확인</button>
						    </span>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" id="modifySubmit" class="btn btn-primary" onclick="Modify_id()">변경하기</button>
					</div>				
				</div>
			</div>
		</div>
	</div>
	<!-- end Modal -->
	<!-- Modal -->
	<div id="password_modi_Modal" class="modal fade" role="dialog" tabindex="-1" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div class="modal-content panel-success">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">비밀번호 변경하기</h4>
					</div>	
					<div class="modal-body">
						<input type="hidden" id="category" value="<%=category %>">
						<input type="password" class="form-control width100" id="current_password" name="current_password" placeholder="현재 비밀번호">
						<input type="password" class="form-control width100 mt-2" id="new_password" name="new_password" placeholder="바꿀 비밀번호">
						<input type="password" class="form-control width100 mt-2" id="new_password_chk" name="new_password_chk" placeholder="비밀번호 확인">
					</div>
					<div class="modal-footer">
						<button type="button" id="modifySubmit" class="btn btn-primary" onclick="Modify_password()">변경하기</button>
					</div>				
				</div>
			</div>
		</div>
	</div>
	<!-- end Modal -->
	<!-- Modal -->
	<div id="Phone_modi_Modal" class="modal fade" role="dialog" tabindex="-1" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div class="modal-content panel-success">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">연락처 변경하기</h4>
					</div>	
					<div class="modal-body">
						<input type="hidden" id="category" value="<%=category %>">
						<input type="text" class="form-control" id="form_num" name="form_num" placeholder="바꿀 연락처" style="display:block;">
					</div>
					<div class="modal-footer">
						<button type="button" id="modifySubmit" class="btn btn-primary" onclick="Modify_phone()">변경하기</button>
					</div>				
				</div>
			</div>
		</div>
	</div>
	<!-- end Modal -->
	<!-- Modal -->
	<div id="email_modi_Modal" class="modal fade" role="dialog" tabindex="-1" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div class="modal-content panel-success">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">이메일 변경하기</h4>
					</div>	
					<div class="modal-body">
						<input type="hidden" id="category" value="<%=category %>">
						<input type="text" class="form-control" id="form_email" name="form_email" placeholder="바꿀 이메일" style="display:block;">
					</div>
					<div class="modal-footer">
						<button type="button" id="modifySubmit" class="btn btn-primary" onclick="Modify_email()">변경하기</button>
					</div>				
				</div>
			</div>
		</div>
	</div>
	<!-- end Modal -->
	<!-- Modal -->
	<div id="zipcode_modi_Modal" class="modal fade" role="dialog" tabindex="-1" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div class="modal-content panel-success">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">주소 변경하기</h4>
					</div>	
					<div class="modal-body">
						<div class="input-group mt-2">
							<input type="hidden" id="category" value="<%=category %>">
						    <input type="text" class="form-control width100" id="New_id" name="New_id" placeholder="우편번호" readonly>
						    <span class="input-group-btn">
						        <button type="button" class="btn btn-info mt-2 ml-2" onclick="search_address()">주소검색</button>
						    </span>
						    <input type="text" class="form-control width100" id="New_id" name="New_id" placeholder="주소검색 후 상세주소 입력">
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" id="modifySubmit" class="btn btn-primary" onclick="Modify_id()">변경하기</button>
					</div>				
				</div>
			</div>
		</div>
	</div>
	<!-- end Modal -->
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
  <script src="js/privacy.js?ver=2"></script>
  </body>
</html>

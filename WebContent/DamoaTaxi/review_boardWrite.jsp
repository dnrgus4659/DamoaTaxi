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
    <link rel="stylesheet" href="css/style.css?ver=4">
  </head>
  <body>

<jsp:include page="nav.jsp" flush="false"></jsp:include>
	<% 		
		String id=(String)session.getAttribute("id");
		if(id==null || id.equals("")){
	%>
			<script>
				alert("로그인 후 이용하실 수 있습니다.");
				history.go(-1);
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
	
	<section class="ftco-cover overlay custom_height" style="background-image: url(images/review_boardMain.jpg);" id="section-home" data-aos="fade"  data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center justify-content-center ftco-vh-75">
          <div class="col-md-9 text-center">
            <h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">후기 게시판</h1>
            <h2 class="h5 ftco-subheading mb-5" data-aos="fade-up"  data-aos-delay="600">후기 작성</h2>
          </div>
        </div>
      </div>
    </section>
    <div class="ftco-section">
    	<div class="container">
    		<div class="row">
    			<form action="../review_boardWrite" method="post" enctype="multipart/form-data" style="width:100%;">
    				<table class="table table-bordered table-hover" style="text-align:center; border:1px solid #dddddd">
    					<thead>
			  			<tr>
			  				<th colspan="3"><h4>게시물 작성 양식</h4></th>
			  			</tr>
			  		</thead>
			  		<tbody>
			  			<tr>
			  				<td style="width:150px;"><h5>아이디</h5></td>
			  				<td><%= id %>
			  				<input type="hidden" name="userID" value="<%= id %>"></td>
			  			</tr>
			  			<tr>
			  				<td style="width:150px;"><h5>글 제목</h5></td>
			  				<td><input type="text" class="form-control" maxlength="50" id="boardTitle" name="boardTitle" placeholder="글 제목을 입력하세요."></td>
			  			</tr>
			  			<tr>
			  				<td style="width:150px;"><h5>글 내용</h5></td>
			  				<td>
			  					<textarea class="form-control" rows="10" id="boardContent" name="boardContent" maxlength="2048" placeholder="글 내용을 입력하세요"></textarea>
							</td>
			  			</tr>
			  			<tr>
			  				<td style="width:150px;" align="center"><h5>후기 사진</h5><h5>업로드</h5></td>
			  				<td colspan="2">					  
						        <div class="input-group js-input-file" style="display: flex;">
                                    <input class="input-file" type="file" name="file" id="file">
                                    <label class="label--file" for="file">파일 선택</label>
                                    <span class="input-file__info">파일을 선택 하지 않으셨습니다.</span>
                                </div>
                                <div class="label--desc">최대 용량 10 MB</div>
			  				</td>
			  			</tr>
			  			<tr>
			  				<td colspan="3" align="right"><h5 style="color:red;"></h5><input class="btn btn-primary" type="submit" value="등록"></td>
			  			</tr>
			  		</tbody>
    				</table>
    			</form>
    		</div>
    	</div>
    </div>
	<%
		String messageContent=null;
		if(session.getAttribute("messageContent") != null){
			messageContent = (String) session.getAttribute("messageContent");
		}
		String messageType = null;
		if(session.getAttribute("messageType") != null){
			messageType = (String) session.getAttribute("messageType");
		}
		if(messageContent != null){
	%>
	<div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-hidden="ture">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div class="modal-content <% if(messageType.equals("오류 메세지")) out.println("panel-warning"); else out.println("panel-success");%>">
					<div class="modal-header panel-heading">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="ture">&</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">
							<%= messageType %>
						</h4>
					</div>
					<div class="modal-body">
						<%=messageContent %>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$('#messageModal').modal('show');
	</script>
	<%
		session.removeAttribute("messageContent");
		session.removeAttribute("messageType");
		}
	%>
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
  <script src="js/main.js"></script>
  <script type="text/javascript">
  (function ($) {
	    'use strict';	    
	    try {
	        var file_input_container = $('.js-input-file');
	        if (file_input_container[0]) {
	            file_input_container.each(function () {
	                var that = $(this);
	                var fileInput = that.find(".input-file");
	                var info = that.find(".input-file__info");
	                fileInput.on("change", function () {
	                    var fileName;
	                    fileName = $(this).val();
	                    if (fileName.substring(3,11) == 'fakepath') {
	                        fileName = fileName.substring(12);
	                    }
	                    if(fileName == "") {
	                        info.text("No file chosen");
	                    } else {
	                        info.text(fileName);
	                    }
	                })
	            });
	        }
	    }
	    catch (e) {
	        console.log(e);
	    }
	})(jQuery);
  </script>
  </body>
</html>

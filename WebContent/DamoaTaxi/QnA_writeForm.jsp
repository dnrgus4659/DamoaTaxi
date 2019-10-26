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

    <section class="ftco-cover overlay custom_height" style="background-image: url(images/image_5.jpg);" id="section-home" data-aos="fade"  data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center justify-content-center ftco-vh-75">
          <div class="col-md-9 text-center">
            <h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">글쓰기</h1>
            <h2 class="h5 ftco-subheading mb-5" data-aos="fade-up"  data-aos-delay="600">솔직하게 적어주시면 많은 도움이 됩니다</a></h2>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->
	<% 
	int num = 0, ref = 1, re_step = 0, re_level = 0;
	String strV = "";
	try{
		if(request.getParameter("num")!=null){
			num=Integer.parseInt(request.getParameter("num"));
			ref=Integer.parseInt(request.getParameter("ref"));
			re_step=Integer.parseInt(request.getParameter("re_step"));
			re_level=Integer.parseInt(request.getParameter("re_level"));
		}
	%>
    <div class="ftco-section bg-light">
    <div class="container">
      <div class="row block-9 justify-content-center" data-aos="fade-up">
        <div class="col-md-8 pr-md-5">
          <form method="post" name="writeform" action="QnA_writePro.jsp" onsubmit="return writeSave()">
            <input type="hidden" name="num" value="<%=num%>">
		    <input type="hidden" name="ref" value="<%=ref%>">
		    <input type="hidden" name="re_step" value="<%=re_step%>">
		    <input type="hidden" name="re_level" value="<%=re_level%>">
            <div class="form-group">
              <input type="text" class="form-control" name="writer" placeholder="이름" style="ime-mode:active;" maxlength="10">
            </div>
            <%
			    if(request.getParameter("num")==null) 
			    	strV = "";
			    else
			    	strV = "[답변]";
		    %>
		    <div class="form-group">
              <input type="text" class="form-control" name="subject" value="<%=strV%>" placeholder="제목" maxlength="50">
            </div>
            <div class="form-group">
              <input type="email" class="form-control" name="email" placeholder="Email" style="ime-mode:inactive;" maxlength="30">
            </div>
            <div class="form-group">
              <textarea class="form-control" name="content" rows="13" cols="40" placeholder="내용" style="ime-mode:active;"></textarea>
            </div>
            <div class="form-group">
              <input type="password" size="8" maxlength="12" name="passwd" style="ime-mode:inactive;" placeholder="비밀번호" class="form-control"> 
            </div>
            <div class="form-group text-center">
              <input type="submit" value="등록" class="btn btn-primary">
              <input type="reset" value="다시작성" class="btn btn-primary">
              <input type="button" value="목록보기" OnClick="window.location='QnA.jsp'" class="btn btn-primary">
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
	<%
  		}catch(Exception e){}
	%> 
	
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
	<script type="text/javascript">
	function writeSave(){
		eval writeform = document.writeform;
		
		if(!writeform.writer.value){
		  alert("작성자를 입력하십시요.");
		  writeform.writer.focus();
		  return false;
		}
		
		if(!writeform.subject.value){
		  alert("제목을 입력하십시요.");
		  writeform.subject.focus();
		  return false;
		}
		
		if(!writeform.content.value){
		  alert("내용을 입력하십시요.");
		  writeform.content.focus();
		  return false;
		}
	        
		if(!writeform.passwd.value){
		  alert(" 비밀번호를 입력하십시요.");
		  writeform.passwd.focus();
		  return false;
		}
	 };
	</script>
  </body>
</html>

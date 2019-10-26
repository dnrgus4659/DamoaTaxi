<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Damoa_pro.QnA_BoardDAO" %>
<%@ page import = "Damoa_pro.QnA_BoardDTO" %>
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
<%
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");
  try{
	  QnA_BoardDAO dbPro = QnA_BoardDAO.getInstance(); 
	  QnA_BoardDTO article =  dbPro.updateGetArticle(num);

%>

	<section class="ftco-cover overlay custom_height" style="background-image: url(images/image_5.jpg);" id="section-home" data-aos="fade"  data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center justify-content-center ftco-vh-75">
          <div class="col-md-9 text-center">
            <h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">글수정</h1>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->
    
    <div class="ftco-section bg-light">
	    <div class="container">
		    <div class="row block-9 justify-content-center" data-aos="fade-up">
			    <div class="col-md-8 pr-md-5">
			    <form method="post" name="writeform" 
					action="QnA_updatePro.jsp?pageNum=<%=pageNum%>" onsubmit="return writeSave()">
					<table class="table table-bordered">
					  <tr>
					    <td width="70" style="text-align:center; vertical-align: middle;">이 름</td>
					    <td align="left">
					       <input type="text" class="form-control" size="10" maxlength="10" name="writer" 
					         value="<%=article.getWriter()%>" style="ime-mode:active;">
						   <input type="hidden" name="num" value="<%=article.getNum()%>"></td>
					  </tr>
					  <tr>
					    <td width="70" style="text-align:center; vertical-align: middle;" >제 목</td>
					    <td align="left" width="330">
					       <input type="text" class="form-control" size="40" maxlength="50" name="subject"
					        value="<%=article.getSubject()%>" style="ime-mode:active;"></td>
					  </tr>
					  <tr>
					    <td  width="70" style="text-align:center; vertical-align: middle;">Email</td>
					    <td align="left" width="330">
					       <input type="text" class="form-control" size="40" maxlength="30" name="email" 
					        value="<%=article.getEmail()%>" style="ime-mode:inactive;"></td>
					  </tr>
					  <tr>
					    <td  width="70" style="text-align:center; vertical-align: middle;" >내 용</td>
					    <td align="left" width="330">
					     <textarea name="content" rows="13" cols="40" class="form-control"
					       style="ime-mode:active;"><%=article.getContent()%></textarea></td>
					  </tr>
					  <tr>
					    <td  width="70" style="text-align:center; vertical-align: middle;" >비밀번호</td>
					    <td align="left" width="330" >
					     <input type="password" class="form-control" size="8" maxlength="12" 
					               name="passwd" style="ime-mode:inactive;">
					     
						 </td>
					  </tr>
					  <tr>      
					   <td colspan=2 align="center"> 
					     <input type="submit" class="btn btn-info" value="글수정" >  
					     <input type="reset" class="btn btn-info" value="다시작성">
					     <input type="button" value="목록보기" class="btn btn-info"
					       onclick="document.location.href='QnA.jsp?pageNum=<%=pageNum%>'">
					   </td>
					 </tr>
					 </table>
					</form>
			    </div>
		    </div>
	    </div>
   	</div>

<%
}catch(Exception e){}%>      

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
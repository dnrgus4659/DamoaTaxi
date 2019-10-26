<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Damoa_pro.QnA_BoardDAO" %>
<%@ page import = "Damoa_pro.QnA_BoardDTO" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<html>
<head>
<title>게시판</title>
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
	<section class="ftco-cover overlay custom_height" style="background-image: url(images/image_8.jpg);" id="section-home" data-aos="fade"  data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center justify-content-center ftco-vh-75">
          <div class="col-md-9 text-center">
            <h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">글내용 보기</h1>
          </div>
        </div>
      </div>
    </section>
    <div class="ftco-section">
      <div class="container">
        <div class="row">
        	<%
			   int num = Integer.parseInt(request.getParameter("num"));
			   String pageNum = request.getParameter("pageNum");
			
			   SimpleDateFormat sdf = 
			        new SimpleDateFormat("yyyy-MM-dd HH:mm");
			
			   try{
				   QnA_BoardDAO dbPro = QnA_BoardDAO.getInstance(); 
				   QnA_BoardDTO article =  dbPro.getArticle(num);
			  
				  int ref=article.getRef();
				  int re_step=article.getRe_step();
				  int re_level=article.getRe_level();
			%>
			<table class="table table-bordered" style="text-align:center;">  
			  <thead>
			  	<tr>
				    <th>글번호</th>
				    <th>조회수</th>
				    <th>작성자</th>
				    <th>작성일</th>
			    </tr>
			  </thead>
			  <tbody>
				  <tr>
					  <td style="background-color:#eeeeee; text-align:center;"><%=article.getNum()%></td>
					  <td style="background-color:#eeeeee; text-align:center;"><%=article.getReadcount()%></td>
					  <td style="background-color:#eeeeee; text-align:center;"><%=article.getWriter()%></td>
					  <td style="background-color:#eeeeee; text-align:center;"><%= sdf.format(article.getReg_date())%></td>
				  </tr>
			  </tbody>
			  <tr>
			    <th colspan="4" style="background-color:#ffffff; text-align:center;">글제목</th>
			  </tr>
			  <tr>
			  	<td colspan="4" style="background-color:#eeeeee; text-align:center;"><%=article.getSubject()%></td>
			  </tr>
			  <tr>
			    <td colspan="4" style="background-color:#ffffff; text-align:center;">글내용</td>
			  </tr>
			  <tr>
			  	<td align="left" colspan="4" style="background-color:#eeeeee; text-align:center;"><pre style="white-space: pre-wrap;word-break:break-all;" align="left"><%=article.getContent()%></pre></td>
			  </tr>
			  <tr>      
			    <td colspan="4" align="right" > 
				  <input type="button" value="글수정" class="btn btn-info"
			       onclick="document.location.href='QnA_updateForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
				   &nbsp;&nbsp;&nbsp;&nbsp;
				  <input type="button" value="글삭제" class="btn btn-info"
			       onclick="document.location.href='QnA_deleteForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
				   &nbsp;&nbsp;&nbsp;&nbsp;
			      <input type="button" value="답글쓰기" class="btn btn-info"
			       onclick="document.location.href='QnA_writeForm.jsp?num=<%=num%>&ref=<%=ref%>&re_step=<%=re_step%>&re_level=<%=re_level%>'">
				   &nbsp;&nbsp;&nbsp;&nbsp;
			       <input type="button" value="글목록" class="btn btn-info"
			       onclick="document.location.href='QnA.jsp?pageNum=<%=pageNum%>'">
			    </td>
			  </tr>
			</table>    
			<%
			 }catch(Exception e){} 
			 %>
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
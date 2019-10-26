<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "Damoa_pro.QnA_BoardDAO" %>
<%@ page import = "Damoa_pro.QnA_BoardDTO" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%!
    int pageSize = 10;
    SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<%
    String pageNum = request.getParameter("pageNum");

    if (pageNum == null) {
        pageNum = "1";
    }

    int currentPage = Integer.parseInt(pageNum);
    int startRow = (currentPage - 1) * pageSize + 1;
    int endRow = currentPage * pageSize;
    int count = 0;
    int number = 0;
    List<QnA_BoardDTO> articleList = null; 
    
    QnA_BoardDAO dbPro = QnA_BoardDAO.getInstance();
    count = dbPro.getArticleCount();
    
    if (count > 0) {
        articleList = dbPro.getArticles(startRow, pageSize);
    }

	number = count-(currentPage-1)*pageSize;
%>
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
	
	<section class="ftco-cover overlay custom_height" style="background-image: url(images/image_8.jpg);" id="section-home" data-aos="fade"  data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center justify-content-center ftco-vh-75">
          <div class="col-md-9 text-center">
            <h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">Q&A</h1>
            <h2 class="h5 ftco-subheading mb-5" data-aos="fade-up"  data-aos-delay="600">질의 응답</h2>
          </div>
        </div>
      </div>
    </section>    
    <div class="ftco-section">
      <div class="container">
        <div class="row">
        	<% if (count == 0) { %>

			<table class="table table-bordered" style="text-align:center; border:1px solid #dddddd">
		    	<thead>
		    		<tr>
		        		<th style="background-color:#eeeeee; text-align:center; width:100px;">번호</th>
		        		<th style="background-color:#eeeeee; text-align:center;">제목</th>
		        		<th style="background-color:#eeeeee; text-align:center; width:130px;">작성자</th>
		        		<th style="background-color:#eeeeee; text-align:center; width:200px;">작성일</th>
		        		<th style="background-color:#eeeeee; text-align:center; width:100px;">조회수</th>
		        		<th style="background-color:#eeeeee; text-align:center; width:150px;">IP</th>
		    		</tr>
		    	</thead>
		    	<tbody>
		    		<tr>
		    			<td colspan="6" align="center">게시판에 저장된 글이 없습니다.</td>
		    		</tr>
		    	</tbody>
		    </table>
			
			<% } else {%>
        	<p>글목록(전체 글:<%=count%>)</p>
        	<table class="table table-hover" style="text-align:center; border:1px solid #dddddd">
        		<thead>
        			<tr>
        				<th style="background-color:#eeeeee; text-align:center; width:100px;">번호</th>
        				<th style="background-color:#eeeeee; text-align:center;">제목</th>
        				<th style="background-color:#eeeeee; text-align:center; width:130px;">작성자</th>
        				<th style="background-color:#eeeeee; text-align:center; width:200px;">작성일</th>
        				<th style="background-color:#eeeeee; text-align:center; width:100px;">조회수</th>
        				<th style="background-color:#eeeeee; text-align:center; width:150px;">IP</th>
        			</tr>
        		</thead>
        		<tbody>
        		<%  
					for (int i = 0 ; i < articleList.size() ; i++) {
						QnA_BoardDTO article = articleList.get(i);
				%>
        			<tr height="30">
						<td  width="50" > <%=number--%></td>
						<td  width="250" align="left">
						<%
							int wid=0; 
							if(article.getRe_level()>0){
							wid=5*(article.getRe_level());
						%>
							<img src="images/level.png" width="<%=wid%>" height="16">
							<img src="images/re.png">
						<%  }else{%>
								<img src="images/level.png" width="<%=wid%>" height="16">
						<%  }%>
						           
						<a href="QnA_content.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>"><%=article.getSubject()%></a> 
						<% if(article.getReadcount()>=20){%>
							<img src="images/hot.gif" border="0"  height="16"><%}%> </td>
							<td width="100" align="center"> 
							<a href="mailto:<%=article.getEmail()%>"><%=article.getWriter()%></a></td>
							<td><%= sdf.format(article.getReg_date())%></td>
							<td><%=article.getReadcount()%></td>
							<td><%=article.getIp()%></td>
						<%}%>
					</tr>
        		</tbody>
        	</table>
        	<%}%>
        </div>
        <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
        <%
			if (count > 0) {
				int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
				int startPage =1;
					
				if(currentPage % 10 != 0)
					startPage = (int)(currentPage/10)*10 + 1;
				else
					startPage = ((int)(currentPage/10)-1)*10 + 1;
			
				int pageBlock = 10;
				int endPage = startPage + pageBlock - 1;
				if (endPage > pageCount) endPage = pageCount;
			        
				if (startPage > 10) { 
				%>
					<a href="QnA.jsp?pageNum=<%= startPage - 10 %>">&lt;</a>
				<%
				}
				for (int i = startPage ; i <= endPage ; i++) {  %>
				<a href="QnA.jsp?pageNum=<%= i %>">[<%= i %>]</a>
			<%      }
			        
				if (endPage < pageCount) {  %>
				<a href="QnA.jsp?pageNum=<%= startPage + 10 %>">&gt;</a>
			<%
				}
			} %>
			</div>
          </div>
        </div>
        <div class="col text-right">
          <div class="form-group text-right">
            <input type="button" value="글쓰기" class="btn btn-primary" onclick="location.href='QnA_writeForm.jsp'">
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

  </body>
</html>

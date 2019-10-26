<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="Damoa_pro.review_BoardDAO" %>
<%@ page import="Damoa_pro.review_BoardDTO" %>
<%@ page import="java.util.ArrayList" %>
<%!
    int pageSize = 6;
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

    review_BoardDAO dbPro = review_BoardDAO.getInstance();
    count = dbPro.getArticleCount();

    ArrayList<review_BoardDTO> boardList = new review_BoardDAO().getList(startRow, pageSize);

	number = count-(currentPage-1)*pageSize;
%>
<!DOCTYPE html>
<html>
  <head>
    <title>DamoaTaxi</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script> <!-- jquery가 먼저 로드 된 후에 부트스트랩이 로드 되야함 -->
  	
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
  </head>
  <body>

<jsp:include page="nav.jsp" flush="false"></jsp:include>
	<% 		
		String id = (String) session.getAttribute("id");
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
	
	<section class="ftco-cover overlay custom_height" style="background-position: 50% 630px;background-image:url(images/review_boardMain.jpg);" id="section-home" data-aos="fade"  data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center justify-content-center ftco-vh-75">
          <div class="col-md-9 text-center">
            <h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">후기 게시판</h1>
            <h2 class="h5 ftco-subheading mb-5" data-aos="fade-up"  data-aos-delay="600">후기를 남겨주세요!</h2>
          </div>
        </div>
      </div>
    </section>
    
    <div class="ftco-section">
      <div class="container">
        <div class="row">
        <% if (count == 0) { %>
		<div class="col-md-6 col-lg-4 blog-entry">
		    <div class="text">
				<div class="meta">
					<h3>게시글이 없습니다!</h3>
		        </div>
	        </div>
        </div>
			
		<% } else {
			for(int i = 0; i<boardList.size(); i++){
			  				review_BoardDTO board = boardList.get(i);
		%>
          <div class="col-md-6 col-lg-4 blog-entry">
            <a href="review_boardShow.jsp?boardID=<%=board.getBoardID() %>" class="block-20"><img alt="이미지가 없습니다." src="../upload/<%=board.getBoardFile() %>">
            </a>
            <div class="text">
              <h3 class="heading"><a href="review_boardShow.jsp?boardID=<%=board.getBoardID() %>"><%=board.getBoardTitle() %></a></h3>
              <div class="meta">
                <div><span class="icon-calendar"></span> <%=board.getBoardDate() %></div>
                <div><span class="icon-person"></span> <%=board.getUserID() %></div>
                <div><span class="icon-eye"></span> <%=board.getBoardHit() %></div>
              </div>
            </div>
          </div>
         <%
			}
		}
		 %> 
        </div>
        <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
			 <%
				if (count > 0) {
					int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
					int startPage =1;
						
					if(currentPage % 5 != 0)
						startPage = (int)(currentPage/5)*5 + 1;
					else
						startPage = ((int)(currentPage/5)-1)*5 + 1;
				
					int pageBlock = 5;
					int endPage = startPage + pageBlock - 1;
					if (endPage > pageCount) endPage = pageCount;
				    %>
				    <ul>
				    <%    
					if (startPage > 5) { 
					%>
                		<li><a href="review_boardView.jsp?pageNum=<%= startPage - 5 %>">&lt;</a></li>
                			
					<%
					} 
					for (int i = startPage ; i <= endPage ; i++) {  
					%>
						<li><a href="review_boardView.jsp?pageNum=<%= i %>"><%= i %></a></li>
					<%  }
				        
					if (endPage < pageCount) {  %>
						<li><a href="review_boardView.jsp?pageNum=<%= startPage + 5 %>">&gt;</a></li>
              			
				<%
					}
				%>
			    	</ul>
			    <%
				} 
				%>
            </div>
          </div>
        </div>
        <div class="col text-right">
          <div class="form-group text-right">
            <a href="review_boardWrite.jsp" class="btn btn-primary" type="submit">글쓰기</a>
          </div>
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
							<span aria-hidden="ture">X</span>
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

  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>

  </body>
</html>

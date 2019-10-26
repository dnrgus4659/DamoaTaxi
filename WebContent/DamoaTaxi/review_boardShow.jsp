<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="Damoa_pro.review_BoardDAO" %>
<%@ page import="Damoa_pro.review_BoardDTO" %>
<%@ page import="Damoa_pro.CommentDAO"%>
<%@ page import="Damoa_pro.CommentDTO"%>
<%@ page import="java.util.ArrayList" %>
<%!
    SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<%
	String boardID=null;
	if(request.getParameter("boardID") != null){
		boardID = (String) request.getParameter("boardID");
	}
	review_BoardDAO boardDAO = new review_BoardDAO();
	review_BoardDTO board = boardDAO.getBoard(boardID);
	boardDAO.hit(boardID);
	ArrayList<CommentDTO> CommentList = new CommentDAO().getList(boardID);
	CommentDAO commentDAO = new CommentDAO();
	int count = 0;
	count = commentDAO.getCommentCount(boardID);
%>
<!DOCTYPE html>
<html>
  <head>
    <title>DamoaTaxi</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
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

    <section class="ftco-cover overlay custom_height" style="background-image: url(images/review_boardMain.jpg);" id="section-home" data-aos="fade"  data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center justify-content-center ftco-vh-75">
          <div class="col-md-9 text-center">
            <h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">후기 게시판</h1>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->

    <div class="ftco-section">
      <div class="container">
        <div class="row">
          <div class="col-md-8">
            <h2 class="mb-3"><%=board.getBoardTitle() %></h2>
            <hr>
			<pre style="white-space: pre-wrap;word-break: break-all;" align="left"><%=board.getBoardContent() %></pre>
            
            <div class="tag-widget post-tag-container mb-5 mt-5" align="right">
              <div class="tagcloud">
                <%
			  		if(id != null && id.equals(board.getUserID())){
			  	%>
			  			<a href="review_boardUpdate.jsp?boardID=<%=boardID %>" class="tag-cloud-link">수정</a>
			  			<a href="../review_boardDelete?boardID=<%=boardID %>
			  				&userID=<%=id %>" class="tag-cloud-link" 
			  				onclick="return confirm('정말로 삭제하시겠습니까?')">삭제
			  			</a>
			  	<%
                	}
			  	%>
			  	<a href="review_boardView.jsp" class="tag-cloud-link">목록</a>
              </div>
            </div>
            
            <div class="about-author d-flex pt-5">
              <div class="bio align-self-md-center mr-4">
                
              </div>
              <div class="desc align-self-md-center">
                <h3>작성자</h3>
                <p><%=board.getUserID() %></p>
              </div>
            </div>
          </div> <!-- .col-md-8 -->
          <div class="col-md-4 sidebar">
            <div class="sidebar-box">
              <h3>작성날짜</h3>
              <p><%=board.getBoardDate() %></p>
            </div>

            <div class="sidebar-box">
              <h3>조회수</h3>
              <p><%=board.getBoardHit() %></p>
            </div>

            <div class="sidebar-box">
              <h3>첨부파일</h3>
              <p><a href="review_boardDownload.jsp?boardID=<%=board.getBoardID() %>"><%=board.getBoardFile() %></a></p>
            </div>
          </div>
          
          <!-- comment -->
          <div class="col">
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
			<div class="tag-widget post-tag-container mb-5 mt-5" align="left">
              <div class="tagcloud">
            	<h5 style="display:inline; margin-right: 20px;">댓글(<%=count %>)</h5><a onclick="commetShow()" class="tag-cloud-link">댓글 보기</a> 
              </div>
            </div>
            
			<table id="comment" class="table table-borderless" style="text-align:center;display:none;">
        		<%  
					for (int i = 0 ; i < CommentList.size() ; i++) {
						CommentDTO comment = CommentList.get(i);
				%>
        			<tr>
        				<th style="text-align:left;">
	        				<%
								int wid=0; 
								if(comment.getRe_level()>0){
								wid=20*(comment.getRe_level());
							%>
								<img src="images/level.png" width="<%=wid%>" height="16">
							<%  }%>
	        				<%=comment.getId() %>
        				</th>
        				<th style="text-align:right;"><%= sdf.format(comment.getReg_date())%></th>
        			</tr>
        			<tr height="30">
						<td align="left" colspan="2" id="commentContent<%=comment.getNum()%>">
						<%
							if(comment.getRe_level()>0){
							wid=20*(comment.getRe_level());
						%>
							<img src="images/level.png" width="<%=wid%>" height="16">
							<span class="icon-arrow-right"></span>
						<%  }else{%>
							<img src="images/level.png" width="<%=wid%>" height="16">
						<%  }%>
						           
						<%=comment.getContent()%>
						</td>
					</tr>
					<form action="../CommentWrite" method="post" name="ReplyWriteform">
					<input type="hidden" name="num" value="<%=comment.getNum()%>">
				    <input type="hidden" name="ref" value="<%=comment.getRef()%>">
				    <input type="hidden" name="re_step" value="<%=comment.getRe_step()%>">
				    <input type="hidden" name="re_level" value="<%=comment.getRe_level()%>">
				    <input type="hidden" name="boardID" value="<%=boardID%>">
				    <input type="hidden" name="writer" value="<%=id%>">
					<tr id="reply<%=comment.getNum()%>" style="display: none;">
						<td style="width: 80%;">
							<textarea class="form-control" name="content" rows="2" cols="40" style="ime-mode:active;"></textarea>
						</td>
						<td style="width: 20%; vertical-align: middle;">
							<input type="submit" value="답글쓰기" class="btn btn-info">
						</td>
					<tr>
					</form>
					<form action="../CommentUpdate" method="post" name="ReplyUpdateform">
					<input type="hidden" name="num" value="<%=comment.getNum()%>">
					<input type="hidden" name="boardID" value="<%=boardID%>">
					<tr id="commentUpdate<%=comment.getNum()%>" style="display: none;">
						<td style="width: 80%;">
							<textarea class="form-control" name="upContent" rows="2" cols="40" style="ime-mode:active;"></textarea>
						</td>
						<td style="width: 20%; vertical-align: middle;">
							<input type="submit" value="수정" class="btn btn-info">
						</td>
					<tr>
					</form>
					<tr>
						<td align="right" colspan="2">
							<%
						  		if(id != null && id.equals(board.getUserID())){
						  	%>
							<a class="btn btn-link" onclick="replyUpdateShow('<%=comment.getNum()%>')">수정</a>
							   &nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" value="댓글삭제" class="btn btn-link"
						       onclick="document.location.href='../CommentDelete?num=<%=comment.getNum()%>&boardID=<%=comment.getBoardID()%>'">
							   &nbsp;&nbsp;&nbsp;&nbsp;
							<%
						  		}
							%>
						    <input type="button" value="답글쓰기" class="btn btn-link"
						       onclick="JavaScript:replyShow('<%=comment.getNum()%>')">
						</td>
						<!-- 댓글 답글쓰기 할때 ref값 넘겨 줄때 댓글 입력을 위한 ref기본값이 들어 가므로 num값을 ref의 값으로 넘겨줌 -->
					</tr>
					<%}%>
        	</table>
        
            <form method="post" name="CommentWriteform" action="../CommentWrite">
            <input type="hidden" name="num" value="<%=num%>">
		    <input type="hidden" name="ref" value="<%=ref%>">
		    <input type="hidden" name="re_step" value="<%=re_step%>">
		    <input type="hidden" name="re_level" value="<%=re_level%>">
		    <input type="hidden" name="boardID" value="<%=boardID%>">
            
              <%if(id != null){ %>
              	<input type="hidden" class="form-control" name="writer" value="<%=id%>">
              <%}else if(id == null){ 
            	  strV = "로그인 후 이용하실 수 있습니다.";
                }else if(request.getParameter("num")==null) {
                	strV = "";
                }else{
                	strV = "[답변]";
                }
		    %>
		    <!-- 수정 필요 -->
            <div class="form-group">
              <textarea class="form-control" name="content" rows="5" cols="40" placeholder="<%=strV %>" style="ime-mode:active;"></textarea>
            </div>
            <div class="form-group text-right">
            <% if(id != null){ %>
              <input type="submit" value="등록" class="btn btn-primary">
              <input type="reset" value="다시작성" class="btn btn-primary">
            <%} %>
            </div>
          </form>
            <%
		  		}catch(Exception e){}
			%>
          </div>
          <!-- end comment -->
          
        </div>
      </div>
    </div> 
    <!-- .section -->
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
  <script src="js/reviewboard.js?ver=1"></script>
  </body>
</html>
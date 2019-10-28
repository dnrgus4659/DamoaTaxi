<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="reservation.cartDTO" %>
<%@ page import="reservation.cartDAO" %>
<%@ page import="reservation.buyDTO" %>
<%@ page import="reservation.buyDAO" %>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
  <head>
    <title>DamoaTaxi</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Table Responsive" />
    <meta name="keywords" content="table, responsive" />

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
    <link rel="stylesheet" type="text/css" href="css/dm_privacy.css">
  </head>
  <body>

   <jsp:include page="nav.jsp" flush="false"></jsp:include>
    
	<% 		
		String id=(String)session.getAttribute("id");
		String category = (String)session.getAttribute("category");
		if(id==null || id.equals("")){
	%>
			<script>
				document.getElementById("logout").style.display='none';
				alert('로그인 후 이용하실 수 있습니다.');
				location.href="./dmlogin_form.jsp";
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
            <h1 class="ftco-heading mb-4" data-aos="fade-up" data-aos-delay="500">예약현황</h1>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->

    <div class="ftco-section bg-light">
    <div class="container">
      <div class="row block-9 justify-content-center" data-aos="fade-up" style="white-space: nowrap;">
        <div class="col pr-md-1">
		    <nav>
            	<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
		            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">장바구니</a>
		            <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">예약현황</a>
		        </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                    <%
	                    List<cartDTO> cartLists = null;
	                    cartDTO cartList = null;
	                    int count = 0;
	                    cartDAO cart = cartDAO.getInstance();
	                    count = cart.getListCount(id);
	                    
	                    if(count == 0){
                    %>
                    <table class="table table-hover" cellspacing="0" style="text-align: center;">
                        <thead>
                            <tr>
                                <th>담긴 예약이 없습니다!!</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                    <%}else{ 
                    	cartLists = cart.getCart(id);
                    %>
                    <table class="table table-hover" cellspacing="0" style="table-layout:fixed; text-align: center;">
                        <thead>
                            <tr>
                                <th>이름</th>
                                <th>날짜</th>
                                <th>승차</th>
                                <th>하차</th>
                                <th>시간</th>
                                <th>전화번호</th>
                                <th>인원</th>
                                <th>기사</th>
                                <th style="width: 100px;">요청사항</th>
                                <th>차종</th>
                                <th>결제금액</th>
                                <th>비고</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
						   for(int i=0;i<cartLists.size();i++){
						     cartList = (cartDTO)cartLists.get(i);
						%>
                        	<tr>
                                <td><%=cartList.getName() %></td>
                                <td><%=cartList.getDate() %></td>
                                <td style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;" title="<%=cartList.getGetIn() %>"><%=cartList.getGetIn() %></td>
                                <td style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;" title="<%=cartList.getGetOut() %>"><%=cartList.getGetOut() %></td>
                                <td><%=cartList.getTime() %></td>
                                <td><%=cartList.getPhone() %></td>
                                <td><%=cartList.getPerson() %></td>
                                <td><%=cartList.getDriver() %></td>
                                <td style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;" title="<%=cartList.getRequestContent() %>"><%=cartList.getRequestContent() %></td>
                                <td><%=cartList.getCar() %></td>
                                <td><%=cartList.getPrice() %></td>
                                <td>
	                                <a href="../cartDelete?num=<%=cartList.getNum()%>" class="tag-cloud-link" 
						  				onclick="return confirm('정말로 삭제하시겠습니까?')">삭제
						  			</a>
						        </td>
                            </tr>
                        <%
						   }
                        %>
                        </tbody>
                    </table>	
                    <%} %>
                    <div style="float: right;">
		            	<input type="button" class="btn btn-finish btn-fill btn-warning btn-wd" onclick="location.href='payment.jsp'" value="결제하기">
		            </div>
                </div>
                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                    <%
	                    List<buyDTO> buyLists = null;
	                    buyDTO buyList = null;
	                    int buylistcount = 0;
	                    buyDAO buy = buyDAO.getInstance();
	                    buylistcount = buy.getListCount(id);
	                    
	                    if(buylistcount == 0){
                    %>
                    <table class="table table-hover" cellspacing="0" style="text-align: center;">
                        <thead>
                            <tr>
                                <th>예약 현황이 없습니다!!</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                    <%}else{ 
                    	buyLists = buy.getList(id);
                    %>
                    <table class="table table-hover" cellspacing="0" style="table-layout:fixed; text-align: center;">
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>예약자명</th>
                                <th>기사</th>
                                <th>승차</th>
                                <th>하차</th>
                                <th>가격</th>
                                <th>결제일자</th>
                                <th>계좌번호</th>
                                <th>상황</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
						   for(int i=0;i<buyLists.size();i++){
						     buyList = (buyDTO)buyLists.get(i);
						%>
                        	<tr>
                                <td><%=buyList.getNum() %></td>
                                <td><%=buyList.getName() %></td>
                                <td><%=buyList.getDriver() %></td>
                                <td style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;" title="<%=buyList.getGetIn() %>"><%=buyList.getGetIn() %></td>
                                <td style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;" title="<%=buyList.getGetOut() %>"><%=buyList.getGetOut() %></td>
                                <td><%=buyList.getPrice() %></td>
                                <td><%=buyList.getBuy_date() %></td>
                                <td><%=buyList.getAccount() %></td>
                                <td><%=buyList.getStatus() %></td>
                            </tr>
                        <%
						   }
                        %>
                        </tbody>
                    </table>	
                    <%} %>
                </div>
            </div>
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

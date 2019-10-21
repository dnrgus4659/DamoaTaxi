<%@page import="reservation.buyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <%
	String id=(String)session.getAttribute("id");
	String category=(String)session.getAttribute("category");
	buyDAO buy = buyDAO.getInstance();
    String driverName = buy.getDriverName(id);
  %>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- <meta name="description" content="">
  <meta name="author" content=""> -->

  <title>관리페이지</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">

</head>

<body>

  <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
      <%
      		if(id.equals("admin")){
      	%>
        <div class="sidebar-heading">관리자님 환영합니다.</div>
        <%	
        	}else{
        %>
      <div class="sidebar-heading"><%=driverName %> 기사님<br> 환영합니다.</div>
      <%
        	}
      %>
      <div class="list-group list-group-flush">
      	<%
      		if(id.equals("admin")){
      	%>
        <a href="manageMain.jsp?content=manageDriver" class="list-group-item list-group-item-action bg-light">기사관리</a>
        <%	
        	}
        %>
        <a href="manageMain.jsp?content=manageReservation" class="list-group-item list-group-item-action bg-light">예약관리</a>
        <a href="manageMain.jsp?content=managePayment" class="list-group-item list-group-item-action bg-light">결제현황</a>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Menu Toggle Script -->
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>

</body>

</html>
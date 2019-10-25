<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="reservation.buyDTO" %>
<%@ page import="reservation.buyDAO" %>
<%@ page import="java.util.List"%>
<%
	String id=(String)session.getAttribute("id");
	String category=(String)session.getAttribute("category");
%>
<!DOCTYPE html>
<html>
<head>

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

  <div class="d-flex" id="wrapper">
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">
      <div class="container-fluid">
        <h1 class="mt-4">예약 관리페이지</h1>
        <%
	    	List<buyDTO> buyLists = null;
	        buyDTO buyList = null;
	        int buylistcount = 0;
	        buyDAO buy = buyDAO.getInstance();
	        String driverName = buy.getDriverName(id);
	        buylistcount = buy.getDriverListCount(driverName);
	        
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
        	buyLists = buy.getDriverList(driverName);
        %>
        <table class="table table-hover" cellspacing="0" style="text-align: center; white-space: nowrap;">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>예약자명</th>
                    <th>기사</th>
                    <th>승차</th>
                    <th>하차</th>
                    <th>가격</th>
                    <th>결제일자</th>
                    <th style="width: 400px; word-break: break-all; white-space: pre-wrap;">요청사항</th>
                    <th>상황</th>
                    <th>비고</th>
                </tr>
            </thead>
            <tbody>
            <%
				for(int i=0;i<buyLists.size();i++){
					buyList = (buyDTO)buyLists.get(i);
			%>
            	<tr style="vertical-align: middle;">
                    <td><%=buyList.getNum() %></td>
                    <td><%=buyList.getName() %></td>
                    <td><%=buyList.getDriver() %></td>
                    <td><%=buyList.getGetIn() %></td>
                    <td><%=buyList.getGetOut() %></td>
                    <td><%=buyList.getPrice() %></td>
                    <td><%=buyList.getBuy_date() %></td>
                    <td style="width: 400px; word-break: break-all; white-space: pre-wrap;"><%=buyList.getRequestContent() %></td>
                    <td><%=buyList.getStatus() %></td>
                    <td style="padding : 5px 0px 0px 0px;">
                    	<input type='button' name='certain' id='certain' onclick="document.location.href='../../reservationCertain?num=<%=buyList.getNum() %>&price=<%=buyList.getPrice() %>&id=<%=buyList.getId() %>'" value='예약확정' class='btn btn-finish btn-fill btn-warning btn-wd' />
                    	<input type='button' name='start' id='start' onclick="document.location.href='../../reservationStart?num=<%=buyList.getNum() %>'" value='예약출발' class='btn btn-finish btn-fill btn-warning btn-wd' />
                    	<input type='button' name='end' id='end' onclick="document.location.href='../../reservationEnd?num=<%=buyList.getNum() %>'" value='예약종료' class='btn btn-finish btn-fill btn-warning btn-wd' />
                    </td>
    			</tr>
            <%
				}
            %>
            </tbody>
        </table>	
        <%} %>
      </div>
    </div>
    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  
</body>

</html>
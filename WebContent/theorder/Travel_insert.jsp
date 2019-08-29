<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="Travel_signup" class="Damoa_pro.Travel_signup" scope="page"/>
<jsp:setProperty name="Travel_signup" property="*"/>
<%
	String travel_ID=Travel_signup.getTravel_ID();              
	String travel_Password=Travel_signup.getTravel_Password();       
	String travel_Password_check=Travel_signup.getTravel_Password_check();  
	String travel_name=Travel_signup.getTravel_name();            
	String travel_phone_number=Travel_signup.getTravel_phone_number();    
	String travel_email=Travel_signup.getTravel_email();           
	String travel_point=Travel_signup.getTravel_point();     
	String travel_zipcode=Travel_signup.getTravel_zipcode();           
	String travel_address=Travel_signup.getTravel_address();
	String travel_category = Travel_signup.getTravel_category();
	String str="";
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try{
		String jdbcUrl="jdbc:mysql://localhost:3306/2019_2A01_DamoaTaxi";
		String dbId = "jspid";
		String dbPass = "jsppass";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(jdbcUrl,dbId,dbPass);
		String sql = "insert into travel_member values(?,?,?,?,?,?,?,?,?,?)";
		
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,travel_ID);
		pstmt.setString(2,travel_Password);
		pstmt.setString(3,travel_Password_check);
		pstmt.setString(4,travel_name);
		pstmt.setString(5,travel_phone_number);
		pstmt.setString(6,travel_email);
		pstmt.setString(7,travel_point);
		pstmt.setString(8,travel_zipcode);
		pstmt.setString(9,travel_address);
		pstmt.setString(10,travel_category);
		pstmt.executeUpdate();
		str="회원가입이 완료 되었습니다.";
	}catch(Exception e){
		e.printStackTrace();
		str="회원가입 실패 다시 확인해주세요.";
	}finally{
		if(pstmt!=null)
			try{pstmt.close();}catch(SQLException sqle){}
		if(conn!=null)
			try{conn.close();}catch(SQLException sqle){}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록</title>
</head>
<body>
	<center>
		<%=str %><br>
		<a href="dm_Main.jsp"><input type="button" value="확인"></a>
	</center>
</body>
</html>

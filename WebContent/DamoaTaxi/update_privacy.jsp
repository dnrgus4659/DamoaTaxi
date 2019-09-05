<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String phoneNum = request.getParameter("phoneNum");
	String email = request.getParameter("email");
	String zipcode = request.getParameter("zipcode");
	String address = request.getParameter("address");
	String password = request.getParameter("password");
	String password_check = request.getParameter("password_check");
	
	String category=(String)session.getAttribute("category");
	String str="";
	Connection conn=null;
	PreparedStatement pstmt = null;
	
	try{
		String jdbcUrl="jdbc:mysql://localhost:3306/2019_2A01_DamoaTaxi";
		String dbId="jspid";
		String dbPass="jsppass";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(jdbcUrl,dbId,dbPass);
		if(category.equals("I")){
			String sql = "update impairment_member set impairment_name=?,impairment_phone_number=?,impairment_email=?,impairment_zipcode=?,impairment_address=?,impairment_Password=?,impairment_Password_check=? where impairment_ID=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,name);
			pstmt.setString(2,phoneNum);
			pstmt.setString(3,email);
			pstmt.setString(4,zipcode);
			pstmt.setString(5,address);
			pstmt.setString(6,password);
			pstmt.setString(7,password_check);
			pstmt.setString(8,id);
			pstmt.executeUpdate();
			str="정보수정이 완료 되었습니다.";
		}else{
			String sql = "update travel_member set travel_name=?,travel_phone_number=?,travel_email=?,travel_zipcode=?,travel_address=?,travel_Password=?,travel_Password_check=? where travel_ID=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,name);
			pstmt.setString(2,phoneNum);
			pstmt.setString(3,email);
			pstmt.setString(4,zipcode);
			pstmt.setString(5,address);
			pstmt.setString(6,password);
			pstmt.setString(7,password_check);
			pstmt.setString(8,id);
			pstmt.executeUpdate();
			str="정보수정이 완료 되었습니다.";
		}
	}catch(Exception e){
		e.printStackTrace();
		str="정보수정 실패 다시 확인해주세요.";
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
<title>수정</title>
</head>
<body>
	<center>
		<%=str %><br>
		<a href="dm_Main.jsp"><input type="button" value="확인"></a>
	</center>
</body>
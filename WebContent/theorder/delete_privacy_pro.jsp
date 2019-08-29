<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String category=(String)session.getAttribute("category");
	String str="";
	
	Connection conn=null;
	PreparedStatement pstmt = null;
	ResultSet rs=null;
	
	try{
		String jdbcUrl="jdbc:mysql://localhost:3306/2019_2A01_DamoaTaxi";
		String dbId="jspid";
		String dbPass="jsppass";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(jdbcUrl,dbId,dbPass);
		if(category.equals("I")){
			String sql = "select impairment_ID,impairment_Password from impairment_member where impairment_ID=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,id);
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				String rId=rs.getString("impairment_ID");
				String rPassword=rs.getString("impairment_Password");
				
				if(id.equals(rId) && password.equals(rPassword)){
					sql="delete from impairment_member where impairment_ID=?";
					pstmt=conn.prepareStatement(sql);
					pstmt.setString(1,id);
					pstmt.executeUpdate();
					str="회원탈퇴가 완료 되었습니다.";
				}
			}
		}else{
			String sql = "select travel_ID,travel_Password from travel_member where travel_ID=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,id);
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				String rId=rs.getString("travel_ID");
				String rPassword=rs.getString("travel_Password");
				if(id.equals(rId) && password.equals(rPassword)){
					sql="delete from travel_member where travel_ID=?";
					pstmt=conn.prepareStatement(sql);
					pstmt.setString(1,id);
					pstmt.executeUpdate();
					str="회원탈퇴가 완료 되었습니다.";
				}
			}
		}
	}catch(Exception e){
		e.printStackTrace();
		str="회원탈퇴 실패 다시 확인해주세요.";
	}finally{
		if(rs != null)
			try{rs.close();}catch(SQLException sqle){}
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
<title>회원탈퇴</title>
</head>
<body>
	<% session.invalidate(); %>  
	<center>
		<%=str %><br>
		<a href="dm_Main.jsp"><input type="button" value="확인"></a>
	</center>
</body>
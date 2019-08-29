<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="impairment_signup" class="Damoa_pro.impairment_signup" scope="page"/>
<jsp:setProperty name="impairment_signup" property="*"/>
<%
	String impairment_ID=impairment_signup.getImpairment_ID();              
	String impairment_Password=impairment_signup.getImpairment_Password();       
	String impairment_Password_check=impairment_signup.getImpairment_Password_check();  
	String impairment_name=impairment_signup.getImpairment_name();            
	String impairment_phone_number=impairment_signup.getImpairment_phone_number();    
	String impairment_email=impairment_signup.getImpairment_email();           
	String impairment_certificate=impairment_signup.getImpairment_certificate();     
	String impairment_point=impairment_signup.getImpairment_point();           
	String impairment_zipcode=impairment_signup.getImpairment_zipcode();         
	String impairment_address=impairment_signup.getImpairment_address();
	String impairment_category=impairment_signup.getImpairment_category();
	String str="";
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try{
		String jdbcUrl="jdbc:mysql://localhost:3306/2019_2A01_DamoaTaxi";
		String dbId = "jspid";
		String dbPass = "jsppass";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(jdbcUrl,dbId,dbPass);
		String sql = "insert into impairment_member values(?,?,?,?,?,?,?,?,?,?,?)";
		
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,impairment_ID);
		pstmt.setString(2,impairment_Password);
		pstmt.setString(3,impairment_Password_check);
		pstmt.setString(4,impairment_name);
		pstmt.setString(5,impairment_phone_number);
		pstmt.setString(6,impairment_email);
		pstmt.setString(7,impairment_certificate);
		pstmt.setString(8,impairment_point);
		pstmt.setString(9,impairment_zipcode);
		pstmt.setString(10,impairment_address);
		pstmt.setString(11,impairment_category);
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

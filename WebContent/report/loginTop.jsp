<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<style>
		#logo{
			position: relative;
			width: max-content;
			height: auto;
			float: left;
		}
		#loginSuccess{
			position: relative;
			width:max-content;
			height: max-content;
			float: right;
		}
		tr,td{
			padding : 5px;
		}
		p{
			font-family: Coolvetica, Arial;
			font-size: 3rem;
			margin: auto;
			width: max-content;
			padding: 5px;
		}
	</style>
</head>
<%
	String id="";
	try{
		id=(String)session.getAttribute("id");
		if(id==null || id.equals(""))
			response.sendRedirect("Main.jsp");
		else{
%>
<body>
	<div id="logo">
		<p>Today`s Highlight</p>
	</div>
	<div id="loginSuccess">
		<b><%=id %></b>님 환영합니다.
		<form method="post" action="sessionLogout.jsp">
			<input type="submit" value="로그아웃"/>
		</form>
	</div>
</body>
</html>
<% 
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>


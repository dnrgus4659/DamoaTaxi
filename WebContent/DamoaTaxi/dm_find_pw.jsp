<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Damoa_pro.find" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String id = request.getParameter("id");
	String phoneNum = request.getParameter("phoneNum");
	
	find logon = find.getInstance();
	int check = logon.findPw(id, phoneNum);
	
	if(check == 1){
		String pw = logon.selectPw(phoneNum);%>
		<script>
			alert("비밀번호는 <%=pw%> 입니다.");
			history.go(-1);
		</script>
	<%}else{%>
		<script>
			alert("잘못입력하셨습니다.");
			history.go(-1);
		</script>
	<%}%>

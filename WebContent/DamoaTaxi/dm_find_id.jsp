<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Damoa_pro.find" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String name = request.getParameter("name");
	String phoneNum = request.getParameter("phoneNum");
	
	find logon = find.getInstance();
	int check = logon.findId(name, phoneNum);

	if(check == 1){
		String id = logon.selectId(phoneNum);%>
		<script>
			alert("아이디는 <%=id%> 입니다.");
			history.go(-1);
		</script>
	<%}else{%>
		<script>
			alert("잘못입력하셨습니다.");
			history.go(-1);
		</script>
	<%}%>

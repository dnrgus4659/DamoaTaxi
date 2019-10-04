<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Damoa_pro.find" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = (String)request.getParameter("id");
	int check = 0;
	find logon = find.getInstance();
	check = logon.check(id);
    
	if(check == 1){%>
		<script>
			alert("중복된 아이디 입니다. 다른 아이디 입력 부탁드립니다.");
			opener.document.form.travel_ID.value="";
			self.close();
		</script>
	<%}else{%>
		<script>
			if (confirm("생성 가능한 아이디 입니다. 확인 시 변경 불가합니다.") == true){    //확인
				opener.document.form.travel_ID.readOnly=true;
				self.close();
			}else{   //취소
				opener.document.form.travel_ID.value="";
				self.close();
			}
			
		</script>
	<%}%>

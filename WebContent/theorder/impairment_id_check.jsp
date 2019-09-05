<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Damoa_pro.find" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("impairment_ID");
	
	find logon = find.getInstance();
	int check = logon.check(id);
    
	if(check == 1){%>
		<script>
			alert("중복된 아이디 입니다. 다른 아이디 입력 부탁드립니다.");
			/* opener.form.travel_ID.value=""; */
			history.go(-1);
		</script>
	<%}else{%>
		<script>
			if (confirm("생성 가능한 아이디 입니다. 확인 시 변경 불가합니다.") == true){    //확인
				<%-- opener.form.travel_ID.value=<%=id%>;
				opener.form.travel_ID.disabled=true; --%>
				history.go(-1);
			}else{   //취소
				/* opener.form.travel_ID.value=""; */
				history.go(-1);
			}
			
		</script>
	<%}%>

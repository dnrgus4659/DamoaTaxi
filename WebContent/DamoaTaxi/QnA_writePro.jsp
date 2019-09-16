<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Damoa_pro.QnA_BoardDAO" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="article" scope="page" class="Damoa_pro.QnA_BoardDTO">
   <jsp:setProperty name="article" property="*"/>
</jsp:useBean>
 
<%
    article.setReg_date(new Timestamp(System.currentTimeMillis()) );
	article.setIp(request.getRemoteAddr());

	QnA_BoardDAO dbPro = QnA_BoardDAO.getInstance();
    dbPro.insertArticle(article); 

    response.sendRedirect("QnA.jsp");
%>
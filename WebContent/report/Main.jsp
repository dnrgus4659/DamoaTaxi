<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<style>
		body,html{
			height:100%;
		}
		table{
			width:100%;
			height:100%;
			border-collapse: collapse;
			color:black;
		}	
		#top{
			height:20%;
		}
		#mid{
			height:70%;
		}
		#left{
			width:200px;
		}
		#bottom{
			height:10%;
		}
	</style>

<title>report</title>
</head>
<body>
	<%! 
		String content = null; 
		String name ="";
	%>
	<% 
		content = request.getParameter("content");
		if(content == null){
			content = "contentHome.jsp";
		} 
		else{
			content += ".jsp";
		}
		
		String id=(String)session.getAttribute("id");
		if(id==null || id.equals("")){
			name="top.jsp";
		}
		else
			name="loginTop.jsp";
	%>
	<table>
		<tr id="top">
			<td colspan="2"><jsp:include page="<%=name %>" flush="false"/></td>
		</tr>
		<tr id="mid">
			<td id="left"><jsp:include page="left.jsp" flush="false"/></td>
			<td id="content"><jsp:include page="<%=content %>" flush="false"/></td>
		</tr>
		<tr id="bottom">
			<td colspan="2"><jsp:include page="bottom.jsp" flush="false"/></td>
		</tr>
	</table>
</body>
</html>

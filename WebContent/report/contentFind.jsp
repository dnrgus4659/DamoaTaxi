<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
		width:auto;
		height:auto;
	}
</style>
</head>
<body>
<center>
	<form method="post" action="findId.jsp">
		<table>
			<tr>
				<td colspan="2" align="center">아이디 찾기</td>
			</tr>
			<tr>
				<td align="right">별명</td><td align="left"><input type="text" name="nickname"></td>
			</tr>
			<tr>
				<td align="right">비밀번호</td><td align="left"><input type="password" name="passwd"></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="찾기"></td>
			</tr>
		</table>
	</form>
	<form method="post" action="findPw.jsp">
		<table>
			<tr>
				<td colspan="2" align="center">비밀번호 찾기</td>
			</tr>
			<tr>
				<td align="right">별명</td><td align="left"><input type="text" name="nickname"></td>
			</tr>
			<tr>
				<td align="right">아이디</td><td align="left"><input type="text" name="id"></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="찾기"></td>
			</tr>
		</table>
	</form>
</center>
	
</body>
</html>

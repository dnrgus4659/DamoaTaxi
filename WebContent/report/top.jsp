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
		#login,#loginSuccess{
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
<body>
	<div id="logo">
		<p>Today`s Highlight</p>
	</div>
	<form method="post" action="login.jsp">
		<div id="login">
			<table>
				<tr><td>아이디</td><td><input type="text" name="id"/></td><td>비밀번호</td><td><input type="password" name="passwd"/></td><td><input type="submit" value="로그인"></td></tr>
			</table>
		</div>
	</form>
</body>
</html>


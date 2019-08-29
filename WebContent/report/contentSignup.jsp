<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
<style type="text/css">
	input[type=text]:hover
	{
		border:2px solid black;
		border-radius:5px;
	}
	input[type=password]:hover
	{
		border:2px solid black;
		border-radius:5px;
	}
	input[type=text]#id,#name2, input[type=password]#pw
	{
		width: 55%; padding: 5px; margin: 5px 0px 5px 0px;
	}
	input[type=text]#mem_num1,#mem_num2
	{
		width: 25%; padding: 5px; margin: 5px 0px 5px 0px;
	}
	input[type=text]#pn
	{
		width: 55%; padding: 5px; margin: 0px 0px 0px 0px;
	}
	input[type=text]#very
	{
		width: 229px; padding: 5px; margin: 0px 0px 10px 0px;
	}
	#header
	{
		padding: 20px 0px 20px 0px; 
		text-align:center; 
		font-family:중고딕; 
		font-size:25pt; 
		font-weight:bold; 
		margin-top: 70px;
		width: 700px;
		height: auto;
		background-color: rgba(255,255,255,0.7);
	}
	select#bot
	{
		width: 100%; padding: 5px; margin: 0px 0px 0px 0px;
	}
	input[type=checkbox]#ch3
	{
		margin: 0px 4px 22px 4px;
	}
	label
	{
		color:#FF5E00
	}
	p
	{
		font-size:15pt; margin: 5px 0px 5px; font-weight:bold;
	}
	#ing
	{
		border:1px solid;
		border-radius:6px;
		background-color:white;
		font:12px 굴림;
		width:100px;
		height:30px;
		margin:5px 0px 0px 0px;
	}
	#ing2
	{
		border:1px solid;
		border-radius:6px;
		background-color:white;
		font:12px 굴림;
		width:50px;
		height:30px;
		margin: 0px 0px 10px 0px;
	}
	#sub
	{
		border:1px solid;
		border-radius:6px;
		background-color:orange;
		font:15px 돋움;
		font-weight:bold;
		color:white;
		width:200px;
		height:50px;
	}
	#main2 {
		width: 700px;
		height: auto;
		background-color: rgba(255,255,255,0.7);
		padding-bottom: 10px;
	}
</style>
</head>
<body>
	<form name="myform" method="post" action="insert.jsp">
		<center>
		<div id="header">
			 개인회원 가입
		</div>
		<div id="main2">
				<table width="610">
				<tr>
					<td colspan="3">
						<hr size="1" width="600"/>
					</td>
				</tr>
				<tr>
					<td>
						 아이디
					</td>
					<td colspan="2">
						<input type="text" id="id" maxlength="20" placeholder="6~10자 영문, 숫자" name="mem_id">
					</td>
				</tr>
				<tr>
					<td>
						 비밀번호
					</td>
					<td colspan="2">
						<input type="password" id="pw" name="mem_passwd" maxlength="20" placeholder="6~16자 영문, 숫자, 특수문자">
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr size="1" width="600"/>
					</td>
				</tr>
				<tr>
					<td>
						 이름
					</td>
					<td colspan="2">
						<input type="text" id="name2" name="mem_name" maxlength="20">
					</td>
				</tr>
				<tr>
					<td>
						 별명
					</td>
					<td colspan="2">
						<input type="text" id="name2" name="mem_nickname" maxlength="20">
					</td>
				</tr>
				<tr>
					<td>
						주민번호
					</td>
					<td colspan="2">
						<input type="text" id="mem_num1" name="mem_num1" maxlength="6"> - <input type="text" id="mem_num2" name="mem_num2" maxlength="7">
					</td>
				</tr>
				<tr>
					<td>
						 이메일
					</td>
					<td colspan="2">
						<input type="text" id="name2" name="mem_email" maxlength="30">
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr size="1" width="600"/>
					</td>
				</tr>
				<tr>
					<td>
							 휴대폰 번호
					</td>
					<td colspan="2">
						<input type="text" id="pn" name="mem_phone" maxlength="13">
					</td>
				</tr>
				<tr>
					<td>
						 우편번호
					</td>
					<td colspan="2">
						<input type="text" id="name2" name="mem_zipcode" maxlength="7">
					</td>
				</tr>
				<tr>
					<td>
						 주소
					</td>
					<td colspan="2">
						<input type="text" id="name2" name="mem_address" maxlength="60">
					</td>
				</tr>
				<tr>
					<td>
						 직업
					</td>
					<td colspan="2">
						<input type="text" id="name2" name="mem_job" maxlength="30">
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<hr size="1" width="600"/>
					</td>
				</tr>					
					</table>
					<input type="submit" id="sub" value="가입하기">
					</center>
				</div>
			</form>
</body>
</html>
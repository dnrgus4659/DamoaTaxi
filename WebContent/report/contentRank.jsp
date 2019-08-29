<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	body,html{
		height:100%;
	}
	table{
		width:100%;
		border:none;
	}
	.color{
		background:lightsteelblue;
	}
	video{
		width: 360px;
		height: 200px;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<td>1등</td>
			<td>
				<video controls="controls" src="./video/1.mp4" type="video/mp4"></video>
			</td>
		</tr>
		<tr>
			<td>2등</td>
			<td>
				<video controls="controls" src="./video/2.mp4" type="video/mp4"></video>
			</td>
		</tr>
		<tr>
			<td>3등</td>
			<td>
				<video controls="controls" src="./video/3.mp4" type="video/mp4"></video>
			</td>
		</tr>
	</table>
</body>
</html>
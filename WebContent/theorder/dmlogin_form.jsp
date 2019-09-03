<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/dmlogin_util.css">
	<link rel="stylesheet" type="text/css" href="css/dmlogin_main.css?ver=1">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login101">
				<!--<div class="login100-pic js-tilt" data-tilt>
				</div>-->
				<div class="login100-form validate-form">
				<h1>Damoa Taxi</h1>
					<form class="login100-form validate-form" method="post" action="login.jsp">
						<span class="login100-form-title">
							회원 로그인
						</span>
	
						<div class="wrap-input100 validate-input" data-validate = "아이디를 입력하세요">
							<input class="input100" type="text" name="id" placeholder="아이디">
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							</span>
						</div>
	
						<div class="wrap-input100 validate-input" data-validate = "비밀번호를 입력하세요">
							<input class="input100" type="password" name="passwd" placeholder="비밀번호">
							<span class="focus-input100"></span>
							<span class="symbol-input100">
								<i class="fa fa-lock" aria-hidden="true"></i>
							</span>
						</div>
						
						<div class="container-login100-form-btn">
							<input type="submit" class="login100-form-btn" value="로그인">
						</div>
	
						<div class="text-center p-t-12">
							<a class="txt2" href="dm_findID.jsp">
								아이디
							</a>
							<span class="txt2">/</span>
							<a class="txt2" href="dm_findPW.jsp">
								비밀번호 찾기
							</a>
						</div>
	
						<div class="text-center p-t-0">
							<a class="txt2" href="signup_category.html">
								회원가입 바로가기
								<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
							</a>
						</div>
						<br>
						<div style="text-align:center">sns계정으로 회원가입/로그인 <br>
							 <img src="images/gogle.JPG">
							 <img src="images/naver.JPG">
							 <img src="images/hub.JPG">
							 <img src="images/facebook.JPG">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/dmlogin_main.js"></script>

</body>
</html>
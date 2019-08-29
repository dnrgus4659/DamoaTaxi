<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#menu{
	    justify-content: center;
	    align-items: center;
	    /* background: #112c38; */
  	}
  	#list {
	    margin: 0;
	    padding: 0;
	    width: 100%;
	    height: 50px;
	    display: table-cell;
	    letter-spacing: 0;
	    justify-content: space-around;
  	}
  	#list li {
	    list-style: none;
	    margin: 0 20px;
	    transition: 0.5s;
	    padding : 6px;
  	}
  	#list li a {
	    display: block;
	    position: relative;
	    text-decoration: none;
	    padding: 5px;
	    font-size: 18px;
	    color: black;
	    text-transform: uppercase;
	    transition: 0.5s;
  	}
  	#list:hover li a {
	    transform: scale(1.5);
	    opacity: .2;
	    filter: blur(5px);
  	}
  	#list li a:hover {
	    transform: scale(2);
	    opacity: 1;
	    filter: blur(0);
  	}
  	#list li a:before {
	    content: '';
	    position: absolute;
	    top: 0;
	    left: 0;
	    width: 100%;
	    height: 100%;
	    background: #ff497c;
	    transition:transform 0.5s;
	    transform-origin: right;
	    transform: scaleX(0);
	    z-index: -1;
  	}
  	#list li a:hover:before {
	    transition:transform 0.5s;
	    transform-origin: left;
	    transform: scaleX(1);
  	}
</style>
</head>
<body>
	<div id="menu">
	    <ul id="list">
			<li><a href="Main.jsp?content=contentHome">홈</a></li>
			<li><a href="Main.jsp?content=contentRank">랭킹</a></li>
			<li><a href="Main.jsp?content=contentBoard">게시판</a></li>
			<li><a href="Main.jsp?content=contentSignup">회원가입</a></li>
			<li><a href="Main.jsp?content=contentFind">ID/PW찾기</a></li>
		</ul>
  	</div>	
</body>
</html>

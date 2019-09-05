<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	* {
	font-family: 'Malgun gothic','Sans-Serif','Arial';
	}
	/* 공통 */
	.fl {
		float:left;
	}
	.tc {
		text-align:center;
	}
	
	/* 게시판 목록 */
	#board_area {
		width: 900px;
		position: relative;
	}
	.list-table {
		margin-top: 40px;
	}
	.list-table thead th{
		height:40px;
		border-top:2px solid #09C;
		border-bottom:1px solid #CCC;
		font-weight: bold;
		font-size: 17px;
	}	
	.list-table tbody td{
		text-align:center;
		padding:10px 0;
		border-bottom:1px solid #CCC; height:20px;
		font-size: 1	4px 
	}
	#write_btn {
		position: absolute;
		margin-top:20px;
		right: 0;
	}	
</style>
</head>
<body>
	<div id="board_area"> 
  <h1>하이라이트 게시판</h1>
  <h4>자유롭게 글을 쓸 수 있는 게시판입니다.</h4>
    <table class="list-table">
      <thead>
          <tr>
              <th width="70">번호</th>
                <th width="500">제목</th>
                <th width="120">글쓴이</th>
                <th width="100">작성일</th>
                <th width="100">조회수</th>
            </tr>
        </thead>
      <tbody>
        <tr>
          <td width="70"></td>
          <td width="500"></td>
          <td width="120"></td>
          <td width="100"></td>
          <td width="100"></td>
        </tr>
      </tbody>
    </table>
    <div id="write_btn">
      <input type="submit" value="글쓰기"/>
    </div>
  </div>
</body>
</html>
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
	/* ���� */
	.fl {
		float:left;
	}
	.tc {
		text-align:center;
	}
	
	/* �Խ��� ��� */
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
  <h1>���̶���Ʈ �Խ���</h1>
  <h4>�����Ӱ� ���� �� �� �ִ� �Խ����Դϴ�.</h4>
    <table class="list-table">
      <thead>
          <tr>
              <th width="70">��ȣ</th>
                <th width="500">����</th>
                <th width="120">�۾���</th>
                <th width="100">�ۼ���</th>
                <th width="100">��ȸ��</th>
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
      <input type="submit" value="�۾���"/>
    </div>
  </div>
</body>
</html>
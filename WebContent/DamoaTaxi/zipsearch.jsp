<%@ page import="java.sql.*" contentType="text/html; charset=UTF-8"%>
<%@ page import="Damoa_pro.jekimDB"%>
    
    <script>
    	function AutoInput(zip, address){
    		zip1 = zip;
    		opener.document.form.zipcode.value=zip1;
    		opener.document.form.address.value=address;
    		self.close();
    	}
    </script>
    
<table align=center border=0>
	<tr>
	<td bgcolor="#A3ACD5" width=100><font size=2><center>우편번호</center></font></td>
	<td bgcolor="#A3ACD5" width=350><font size=2><center>주소</center></font></td>
	</tr>
	<%
	jekimDB usedb = new jekimDB();
	request.setCharacterEncoding("utf-8");
	
	usedb.connect();
	String dong=request.getParameter("dong");
	
	String sql="select * from zipcode where DONG like '%"+dong+"%' or DORO like '%"+dong+"%'";
	ResultSet rs=usedb.resultQuery(sql);
	
	if(rs.next()){
		do{
			String zip=rs.getString("ZIPCODE");
			String sido=rs.getString("SIDO");
			String gugun=rs.getString("GUGUN");
			String don = rs.getString("DONG");
			String gita = rs.getString("GITA");
			String dorosido=rs.getString("DOROSIDO");
			String dorogugun=rs.getString("DOROGUGUN");
			String doro = rs.getString("DORO");
			String dorogita1 = rs.getString("DOROGITA1");
			String dorogita2 = rs.getString("DOROGITA2");
			if(gita==null) gita="";
			if(dorogita1==null) dorogita1="";
			if(dorogita2==null) dorogita2="";
			
			String doroaddress = dorosido+" "+dorogugun+" "+doro+" "+dorogita1+" "+dorogita2;
			String guaddress = sido+" "+gugun+" "+don+" "+gita;
					
	%>
	<tr>
		<td bgcolor="#eeeeee"><center><font size=2>
		<a href="JavaScript:AutoInput('<%=zip%>', '<%=doroaddress%>')"><%=zip%></a>
		</font></center></td>
		<td bgcolor="#eeeeee">&nbsp;&nbsp;&nbsp;
		<font size=2><a style="text-decoration:none;" href="JavaScript:AutoInput('<%=zip %>','<%=doroaddress %>')">
		<%=doroaddress %><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=guaddress %></a></font></td>
	</tr>
	<%
		}while(rs.next());
	%>
	</table>
	<%
	}
	else
	{
	%>
	</table>
	<font size=2><center><br>찾고자하는 동이 존재하지 않습니다<br><br><br>
	다시 검색 하시려면<a href=ZipInputForm.html>여기</a>를 누르세여</center></font>
<%
	}
%>
<br><br><br>
<center><a href="#" onclick="javascript:window.close()">닫기</a></center>
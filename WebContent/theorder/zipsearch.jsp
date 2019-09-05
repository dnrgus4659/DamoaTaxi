<%@ page import="java.sql.*" contentType="text/html; charset=UTF-8"%>
<%@ page import="Damoa_pro.jekimDB"%>
    
    <script>
    	function AutoInput(zip, address){
    		zip1 = zip;
    		/* zip2 = zip.substring(4, 7); */
    		/* opener.form.impairment_zipcode.value=zip1+zip2; */
    		opener.form.zipcode.value=zip1;
    		opener.form.address.value=address;
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
	
	String sql="select * from zipcode where DONG like '%"+dong+"%' union select * from dorozipcode where RO like '%"+dong+"%'";
	/* String sql="select * from zipcode where DONG like '%"+dong+"%' union select * from dorozipcode where RO like '%"+dong+"%'"; 학교에서는 RO가 아닌 DORO임*/
	ResultSet rs=usedb.resultQuery(sql);
	
	if(rs.next()){
		do{
			String zip=rs.getString("ZIPCODE");
			String sido=rs.getString("SIDO");
			String gugun=rs.getString("GUGUN");
			String don = rs.getString("DONG");
			String ri = rs.getString("RI");
			String bunji = rs.getString("BUNJI");
			if(ri==null) ri="";
			if(bunji==null) bunji="";
			String address = sido+" "+gugun+" "+don+" "+ri+" "+bunji;
					
	%>
	<tr>
		<td bgcolor="#eeeeee"><center><font size=2>
		<a href="JavaScript:AutoInput('<%=zip%>', '<%=address%>')"><%=zip%></a>
		</font></center></td>
		<td bgcolor="#eeeeee">&nbsp;&nbsp;&nbsp;
		<font size=2><a href="JavaScript:AutoInput('<%=zip %>','<%=address %>')">
		<%=address %></a></font></td>
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
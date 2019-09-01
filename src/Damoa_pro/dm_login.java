package Damoa_pro;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class dm_login {
	private static dm_login instance = new dm_login();
	public static dm_login getInstance() {
		return instance;
	}

	private dm_login() {}
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/2019_2A01_DamoaTaxi");
		return ds.getConnection();
	}
	
	public int userCheck(String id, String passwd) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpasswd="";
		int x = -1;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select travel_member.travel_Password as PW from travel_member where travel_member.travel_ID=? union select impairment_member.impairment_Password as PW from impairment_member where impairment_member.impairment_ID=?");
			pstmt.setString(1, id);
			pstmt.setString(2, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				dbpasswd=rs.getString("PW");
				if(dbpasswd.equals(passwd)) 
					x=1;//인증성공
				else
					x=0;//비밀번호 틀림
			}else
				x=-1;
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if(rs!=null)
				try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)
				try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null)
				try{conn.close();}catch(SQLException ex){}
		}
		return x;
	}
	
	public String userCategory(String id) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String value="";
		int x = -1;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select travel_member.travel_category as Category from travel_member where travel_member.travel_ID=? union select impairment_member.impairment_category as Category from impairment_member where impairment_member.impairment_ID=?");
			/*pstmt = conn.prepareStatement("select if(travel_member.travel_ID=?,travel_member.travel_category,if(impairment_member.impairment_ID=?,impairment_member.impairment_category,null)) as Category from travel_member natural join impairment_member");*/
			pstmt.setString(1, id);
			pstmt.setString(2, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				value=rs.getString("Category");
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if(rs!=null)
				try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)
				try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null)
				try{conn.close();}catch(SQLException ex){}
		}
		return value;
	}
	
}


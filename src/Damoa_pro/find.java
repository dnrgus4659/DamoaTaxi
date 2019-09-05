package Damoa_pro;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class find {
	private static find instance = new find();
	public static find getInstance() {
		return instance;
	}
	private find() {}
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/2019_2A01_DamoaTaxi");
		return ds.getConnection();
	}
	public int findId(String name, String phoneNum) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbphoneNum="";
		int x = -1;
		try {
			conn = getConnection();
			/*pstmt = conn.prepareStatement("select if(travel_member.travel_name=?,travel_member.travel_phone_number,if(impairment_member.impairment_name=?,impairment_member.impairment_phone_number,null)) as phoneNum from travel_member natural join impairment_member");*/
			pstmt = conn.prepareStatement("select travel_member.travel_phone_number as phoneNum from travel_member where travel_member.travel_name=? union select impairment_member.impairment_phone_number as phoneNum from impairment_member where impairment_member.impairment_name=?");
			pstmt.setString(1, name);
			pstmt.setString(2, name);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				dbphoneNum=rs.getString("phoneNum");
				if(dbphoneNum.equals(phoneNum))
					x=1;//인증성공
				else
					x=0;//인증실패
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
	public int findPw(String id, String phoneNum) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbphoneNum="";
		int x = -1;
		try {
			conn = getConnection();
			/*pstmt = conn.prepareStatement("select if(travel_member.travel_ID=?,travel_member.travel_phone_number,if(impairment_member.impairment_ID=?,impairment_member.impairment_phone_number,null)) as phoneNum from travel_member natural join impairment_member");*/
			pstmt = conn.prepareStatement("select travel_member.travel_phone_number as phoneNum from travel_member where travel_member.travel_ID=? union select impairment_member.impairment_phone_number as phoneNum from impairment_member where impairment_member.impairment_ID=?");
			pstmt.setString(1, id);
			pstmt.setString(2, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				dbphoneNum=rs.getString("phoneNum");
				if(dbphoneNum.equals(phoneNum))
					x=1;//인증성공
				else
					x=0;//인증실패
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
	
	public String selectId(String phoneNum) {
		String value="";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			/*pstmt = conn.prepareStatement("select if(travel_member.travel_phone_number=?,travel_member.travel_ID,if(impairment_member.impairment_phone_number=?,impairment_member.impairment_ID,null)) as ID from travel_member natural join impairment_member");*/
			pstmt = conn.prepareStatement("select travel_member.travel_ID as ID from travel_member where travel_member.travel_phone_number=? union select impairment_member.impairment_ID as ID from impairment_member where impairment_member.impairment_phone_number=?");
			pstmt.setString(1, phoneNum);
			pstmt.setString(2, phoneNum);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				value=rs.getString("ID");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return value;
	}
	public String selectPw(String phoneNum) {
		String value="";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			/*pstmt = conn.prepareStatement("select if(travel_member.travel_phone_number=?,travel_member.travel_Password,if(impairment_member.impairment_phone_number=?,impairment_member.impairment_Password,null)) as PW from travel_member natural join impairment_member");*/
			pstmt = conn.prepareStatement("select travel_member.travel_Password as PW from travel_member where travel_member.travel_phone_number=? union select impairment_member.impairment_Password as PW from impairment_member where impairment_member.impairment_phone_number=?");
			pstmt.setString(1, phoneNum);
			pstmt.setString(2, phoneNum);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				value=rs.getString("PW");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return value;
	}
}

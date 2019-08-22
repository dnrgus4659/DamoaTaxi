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
		DataSource ds = (DataSource)envCtx.lookup("jdbc/basicjsp");
		return ds.getConnection();
	}
	public int findId(String nickname, String passwd) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpasswd="";
		int x = -1;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select passwd from register where nickname=?");
			pstmt.setString(1, nickname);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				dbpasswd=rs.getString("passwd");
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
	public int findPw(String nickname, String id) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbid="";
		int x = -1;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select id from register where nickname=?");
			pstmt.setString(1, nickname);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				dbid=rs.getString("id");
				if(dbid.equals(id)) 
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
	
	public String selectId(String nickname) {
		String value="";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select id from register where nickname=?");
			pstmt.setString(1, nickname);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				value=rs.getString("id");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return value;
	}
	public String selectPw(String nickname) {
		String value="";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select passwd from register where nickname=?");
			pstmt.setString(1, nickname);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				value=rs.getString("passwd");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return value;
	}
}

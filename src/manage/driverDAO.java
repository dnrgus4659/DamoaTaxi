package manage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class driverDAO {
	private static driverDAO instance = new driverDAO();
    //.jsp페이지에서 DB연동빈인 QnA_BoardDAO클래스의 메소드에 접근시 필요
    public static driverDAO getInstance() {
        return instance;
    }
    
    //커넥션풀로부터 Connection객체를 얻어냄
    private Connection getConnection() throws Exception {
        Context initCtx = new InitialContext();
        Context envCtx = (Context) initCtx.lookup("java:comp/env");
        DataSource ds = (DataSource)envCtx.lookup("jdbc/2019_2A01_DamoaTaxi");
        return ds.getConnection();
    }
    
    public int insertDriver(String name, String age, String sex, String career, String category, 
    	String phone_num, String File, String RealFile) {
    	Connection conn = null;
		PreparedStatement pstmt = null;
		String sql="insert into driver(name,age,sex,career,category,phone_num,File,RealFile) values (?,?,?,?,?,?,?,?)";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, age);
			pstmt.setString(3, sex);
			pstmt.setString(4, career);
			pstmt.setString(5, category);
			pstmt.setString(6, phone_num);
			pstmt.setString(7, File);
			pstmt.setString(8, RealFile);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(pstmt!=null)
				try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null)
				try{conn.close();}catch(SQLException ex){}
		}
		return -1;
    }
    
    public int delete(String num) {
    	Connection conn = null;
		PreparedStatement pstmt = null;
		String sql="delete from driver where num=?";
		num = num.trim();
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(num));
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(pstmt!=null)
				try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null)
				try{conn.close();}catch(SQLException ex){}
		}
		return -1;
    }
    
    public String getRealFile(String num) {
    	Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select RealFile from driver where num = ?";
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(num));
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				return rs.getString("RealFile");
			}
			return "";
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null)
				try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)
				try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null)
				try{conn.close();}catch(SQLException ex){}
		}
    	return "";
    }
    
    public ArrayList<driverDTO> getIList() {
    	ArrayList<driverDTO> driverIList = null;
    	Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from driver where category = 'Idriver'";
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			driverIList = new ArrayList<driverDTO>();
			
			while(rs.next()) {
				driverDTO driver = new driverDTO();
				driver.setNum(rs.getInt("num"));
				driver.setName(rs.getString("name"));
				driver.setAge(rs.getInt("age"));
				driver.setSex(rs.getString("sex"));
				driver.setCareer(rs.getInt("career"));
				driver.setCategory(rs.getString("category"));
				driver.setPhone_num(rs.getString("phone_num"));
				driver.setFile(rs.getString("File"));
				driver.setRealFile(rs.getString("RealFile"));
				driver.setStatus(rs.getString("status"));
				driverIList.add(driver);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null)
				try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)
				try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null)
				try{conn.close();}catch(SQLException ex){}
		}
    	return driverIList;
    }
    
    public ArrayList<driverDTO> getTList() {
    	ArrayList<driverDTO> driverTList = null;
    	Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from driver where category = 'Tdriver'";
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			driverTList = new ArrayList<driverDTO>();
			
			while(rs.next()) {
				driverDTO driver = new driverDTO();
				driver.setNum(rs.getInt("num"));
				driver.setName(rs.getString("name"));
				driver.setAge(rs.getInt("age"));
				driver.setSex(rs.getString("sex"));
				driver.setCareer(rs.getInt("career"));
				driver.setCategory(rs.getString("category"));
				driver.setPhone_num(rs.getString("phone_num"));
				driver.setFile(rs.getString("File"));
				driver.setRealFile(rs.getString("RealFile"));
				driver.setStatus(rs.getString("status"));
				driverTList.add(driver);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null)
				try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)
				try{pstmt.close();}catch(SQLException ex){}
			if(conn!=null)
				try{conn.close();}catch(SQLException ex){}
		}
    	return driverTList;
    }
}

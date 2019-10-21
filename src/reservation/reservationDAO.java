package reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class reservationDAO {
	private static reservationDAO instance = new reservationDAO();
    //.jsp페이지에서 DB연동빈인 QnA_BoardDAO클래스의 메소드에 접근시 필요
    public static reservationDAO getInstance() {
        return instance;
    }
    
    //커넥션풀로부터 Connection객체를 얻어냄
    private Connection getConnection() throws Exception {
        Context initCtx = new InitialContext();
        Context envCtx = (Context) initCtx.lookup("java:comp/env");
        DataSource ds = (DataSource)envCtx.lookup("jdbc/2019_2A01_DamoaTaxi");
        return ds.getConnection();
    }
    
    public int reservationInsert(String name, String date, String getIn, String getOut, String time, String phone, 
    		String person, String driver, String requestContent, String category, String car, String id) {
       	Connection conn = null;
   		PreparedStatement pstmt = null;
   		String sql="insert into reservation"
   				+ "(name, date, getIn, getOut, time, phone, person, driver, requestContent, category, car, id)"
   				+ " values (?,?,?,?,?,?,?,?,?,?,?,?)";
   		try {
   			conn = getConnection();
   			pstmt = conn.prepareStatement(sql);
   			pstmt.setString(1, name);
   			pstmt.setString(2, date);
   			pstmt.setString(3, getIn);
   			pstmt.setString(4, getOut);
   			pstmt.setString(5, time);
   			pstmt.setString(6, phone);   			
   			pstmt.setInt(7, Integer.parseInt(person));
   			pstmt.setString(8, driver);
   			pstmt.setString(9, requestContent);
   			pstmt.setString(10, category);
   			pstmt.setString(11, car);
   			pstmt.setString(12, id);
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
}

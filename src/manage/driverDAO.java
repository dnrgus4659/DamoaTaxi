package manage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import Damoa_pro.review_BoardDAO;

public class driverDAO {
	private static review_BoardDAO instance = new review_BoardDAO();
    //.jsp페이지에서 DB연동빈인 QnA_BoardDAO클래스의 메소드에 접근시 필요
    public static review_BoardDAO getInstance() {
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
}

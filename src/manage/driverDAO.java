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
    
    public int write(String userID, String boardTitle, String boardContent, String boardFile, String boardRealFile) {
    	Connection conn = null;
		PreparedStatement pstmt = null;
		String sql="insert into review_board select ?, "
				+ "ifnull((select max(boardID) +1 from review_board), 1), "
				+ "?, ?, now(), 0, ?, ?, ifnull((select max(boardGroup)+1 "
				+ "from review_board), 0), 0, 0";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			pstmt.setString(2, boardTitle);
			pstmt.setString(3, boardContent);
			pstmt.setString(4, boardFile);
			pstmt.setString(5, boardRealFile);
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

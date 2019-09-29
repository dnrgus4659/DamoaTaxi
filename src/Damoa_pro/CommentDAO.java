package Damoa_pro;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class CommentDAO {
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
    
    public int insertComment(String num, String boardID, String ref, String re_step, String re_level, String id, String content) 
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs = null;
			
		int Cnum = Integer.parseInt(num);
		int boardID_1 = Integer.parseInt(boardID);
		int ref_1 = Integer.parseInt(ref);
		int re_step_1 = Integer.parseInt(re_step);
		int re_level_1 = Integer.parseInt(re_level);
		int x = 0;
		int number=0;
        String sql="";

        try {
            conn = getConnection();

            pstmt = conn.prepareStatement("select max(num) from comment");
			rs = pstmt.executeQuery();
			
			if (rs.next())
		      number=rs.getInt(1)+1;
		    else
		      number=1; 
		   
		    if (Cnum!=0) {  
		      sql="update comment set re_step=re_step+1 ";
		      sql += "where ref= ? and re_step> ?";
              pstmt = conn.prepareStatement(sql);
              pstmt.setInt(1, ref_1);
			  pstmt.setInt(2, re_step_1);
			  pstmt.executeUpdate();
			  re_step_1=re_step_1+1;
			  re_level_1=re_level_1+1;
		     }else{
		  	  ref_1=number;
			  re_step_1=0;
			  re_level_1=0;
		     }	 
		    
            sql = "insert into comment(boardID,id,content,reg_date,"
            		+ "ref,re_step,re_level) values(?,?,?,now(),?,?,?)";

            pstmt = conn.prepareStatement(sql);         
            pstmt.setInt(1, boardID_1);
            pstmt.setString(2, id);
            pstmt.setString(3, content);
            pstmt.setInt(4, ref_1);
            pstmt.setInt(5, re_step_1);
            pstmt.setInt(6, re_level_1);			
            pstmt.executeUpdate();
            x=1;
            return x;
        } catch(Exception ex) {
            ex.printStackTrace();
            return x;
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
    
    public int getCommentCount(String boardID)
            throws Exception {
       Connection conn = null;
       PreparedStatement pstmt = null;
       ResultSet rs = null;

       int x=0;
       int boardID_1 = Integer.parseInt(boardID);
       try {
           conn = getConnection();
           
           pstmt = conn.prepareStatement("select count(*) from comment where boardID=?");
           pstmt.setInt(1, boardID_1);
           rs = pstmt.executeQuery();

           if (rs.next()) {
              x= rs.getInt(1);
			}
       } catch(Exception ex) {
           ex.printStackTrace();
       } finally {
           if (rs != null) try { rs.close(); } catch(SQLException ex) {}
           if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
           if (conn != null) try { conn.close(); } catch(SQLException ex) {}
       }
		return x;
   }
    
    public ArrayList<CommentDTO> getList(String boardID) {
    	ArrayList<CommentDTO> CommentList = null;
    	Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int boardID_1 = Integer.parseInt(boardID); 
		String sql = "select * from comment where boardID = ? order by ref asc, re_step asc";
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, boardID_1);
			rs = pstmt.executeQuery();
			CommentList = new ArrayList<CommentDTO>();
			
			while(rs.next()) {
				CommentDTO comment = new CommentDTO();
				comment.setNum(rs.getInt("num"));
				comment.setBoardID(rs.getInt("boardID"));
				comment.setId(rs.getString("id"));
				comment.setContent(rs.getString("content"));
				comment.setReg_date(rs.getTimestamp("reg_date"));
				comment.setRef(rs.getInt("ref"));
				comment.setRe_step(rs.getInt("re_step"));
				comment.setRe_level(rs.getInt("re_level"));
				CommentList.add(comment);
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
    	return CommentList;
    }
    
}

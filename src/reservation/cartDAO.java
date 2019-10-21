package reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import test.CartDataBean;

public class cartDAO {
	private static cartDAO instance = new cartDAO();
    //.jsp페이지에서 DB연동빈인 QnA_BoardDAO클래스의 메소드에 접근시 필요
    public static cartDAO getInstance() {
        return instance;
    }
    
    //커넥션풀로부터 Connection객체를 얻어냄
    private Connection getConnection() throws Exception {
        Context initCtx = new InitialContext();
        Context envCtx = (Context) initCtx.lookup("java:comp/env");
        DataSource ds = (DataSource)envCtx.lookup("jdbc/2019_2A01_DamoaTaxi");
        return ds.getConnection();
    }
    
	public int cartInsert(String name, String date, String getIn, String getOut, String time, String phone, 
    		String person, String driver, String requestContent, String category, String car, String id, String price) {
       	Connection conn = null;
   		PreparedStatement pstmt = null;
   		String sql="insert into cart"
   				+ "(name, date, getIn, getOut, time, phone, person, driver, requestContent, category, car, id, price)"
   				+ " values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
   			pstmt.setInt(13, Integer.parseInt(price));
   			pstmt.executeUpdate();
   			return 1;
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
	
	public List<cartDTO> getCart(String id) throws Exception {
		 Connection conn = null;
		 PreparedStatement pstmt = null;
		 ResultSet rs = null;
		 cartDTO cart=null;
		 String sql = "";
		 List<cartDTO> lists = null;
		 
		 try {
			 conn = getConnection();
			 
			 sql = "select * from cart where id = ?";
		     pstmt = conn.prepareStatement(sql);
		     
		     pstmt.setString(1, id);
		     rs = pstmt.executeQuery();
		     
		     lists = new ArrayList<cartDTO>();

		     while (rs.next()) {
		    	 cart = new cartDTO();
		    	 
		    	 cart.setNum(rs.getInt("num"));
		    	 cart.setName(rs.getString("name"));
		    	 cart.setDate(rs.getString("date"));
		    	 cart.setGetIn(rs.getString("getIn"));
		    	 cart.setGetOut(rs.getString("getOut")); 
		    	 cart.setTime(rs.getString("time"));
		    	 cart.setPhone(rs.getString("phone"));
		    	 cart.setPerson(rs.getInt("person"));
		    	 cart.setDriver(rs.getString("driver"));
		    	 cart.setRequestContent(rs.getString("requestContent"));
		    	 cart.setCategory(rs.getString("category")); 
		    	 cart.setCar(rs.getString("car"));
		    	 cart.setId(rs.getString("id"));
		    	 cart.setPrice(rs.getInt("price"));
		    	 
		    	 lists.add(cart);
			}
		 }catch(Exception ex) {
		     ex.printStackTrace();
		 }finally {
		     if (rs != null) 
		    	 try { rs.close(); } catch(SQLException ex) {}
		     if (pstmt != null) 
		    	 try { pstmt.close(); } catch(SQLException ex) {}
		     if (conn != null) 
		    	 try { conn.close(); } catch(SQLException ex) {}
		 }
				 return lists;
		     }
	
	public int getListCount(String id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int x=0;

		try {
		    conn = getConnection();
		    
		    pstmt = conn.prepareStatement(
		    		"select count(*) from cart where id=?");
		    pstmt.setString(1, id);
		    rs = pstmt.executeQuery();

		    if (rs.next()) {
		       x= rs.getInt(1);
					}
		} catch(Exception ex) {
		    ex.printStackTrace();
		} finally {
		    if (rs != null) 
		    	try { rs.close(); } catch(SQLException ex) {}
		    if (pstmt != null) 
		    	try { pstmt.close(); } catch(SQLException ex) {}
		    if (conn != null) 
		    	try { conn.close(); } catch(SQLException ex) {}
		}
		return x;
	}
	
	public int delete(String num) {
	    	Connection conn = null;
			PreparedStatement pstmt = null;
			String sql="delete from cart where num=?";
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(num));
				pstmt.executeUpdate();
				return 1;
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

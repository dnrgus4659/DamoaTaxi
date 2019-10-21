package reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import test.CartDataBean;

public class buyDAO {
	private static buyDAO instance = new buyDAO();
    //.jsp페이지에서 DB연동빈인 QnA_BoardDAO클래스의 메소드에 접근시 필요
    public static buyDAO getInstance() {
        return instance;
    }
    
    //커넥션풀로부터 Connection객체를 얻어냄
    private Connection getConnection() throws Exception {
        Context initCtx = new InitialContext();
        Context envCtx = (Context) initCtx.lookup("java:comp/env");
        DataSource ds = (DataSource)envCtx.lookup("jdbc/2019_2A01_DamoaTaxi");
        return ds.getConnection();
    }
    
	public void buyInsert(List<cartDTO> lists, String price, String account, String id) throws Exception {
       	Connection conn = null;
   		PreparedStatement pstmt = null;

    	Timestamp reg_date = new Timestamp(System.currentTimeMillis());
    	SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
    	String buy_date = sdf.format(reg_date).toString();
    	
   		try {
   			conn = getConnection();
			for(int i=0; i<lists.size();i++){
	        	//해당 아이디에 대한 cart테이블 레코드를을 가져온후 buy테이블에 추가
	        	cartDTO cart = lists.get(i);
	        	
	        	String sql = "insert into buy (id,name,driver,getIn,getOut,price,buy_date,account)";
	            sql += " values (?,?,?,?,?,?,?,?)";
	            pstmt = conn.prepareStatement(sql);
	        
	            pstmt.setString(1, cart.getId());
	            pstmt.setString(2, cart.getName());
	            pstmt.setString(3, cart.getDriver());
	            pstmt.setString(4, cart.getGetIn());
	            pstmt.setString(5, cart.getGetOut());
	            pstmt.setInt(6, Integer.parseInt(price));
	            pstmt.setString(7, buy_date);
	            pstmt.setString(8, account);
	            pstmt.executeUpdate();
	            
	            if(buy_date.equals(cart.getDate())) {
	            	pstmt = conn.prepareStatement("update driver set status='불가' where name=?");
	    			pstmt.setString(1, cart.getDriver());
	    			pstmt.executeUpdate();
	            }
	        }
	        
	        pstmt = conn.prepareStatement("delete from cart where id=?");
	        pstmt.setString(1, id);
	        pstmt.executeUpdate();
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
            if (pstmt != null) 
            	try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) 
            	try { conn.close(); } catch(SQLException ex) {}
        }
    }
	
	public List<buyDTO> getList(String id) throws Exception {
		 Connection conn = null;
		 PreparedStatement pstmt = null;
		 ResultSet rs = null;
		 buyDTO list=null;
		 String sql = "";
		 List<buyDTO> buy_lists = null;
		 
		 try {
			 conn = getConnection();
			 
			 sql = "select * from buy where id = ?";
		     pstmt = conn.prepareStatement(sql);
		     
		     pstmt.setString(1, id);
		     rs = pstmt.executeQuery();
		     
		     buy_lists = new ArrayList<buyDTO>();

		     while (rs.next()) {
		    	 list = new buyDTO();
		    	 
		    	 list.setNum(rs.getInt("num"));
		    	 list.setId(rs.getString("id"));
		    	 list.setName(rs.getString("name"));
		    	 list.setDriver(rs.getString("driver"));
		    	 list.setGetIn(rs.getString("getIn")); 
		    	 list.setGetOut(rs.getString("getOut"));
		    	 list.setPrice(rs.getInt("price"));
		    	 list.setBuy_date(rs.getString("buy_date"));
		    	 list.setAccount(rs.getString("account"));
		    	 list.setStatus(rs.getString("status"));
		    	 
		    	 buy_lists.add(list);
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
				 return buy_lists;
		     }
	
	public int getListCount(String id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int x=0;

		try {
		    conn = getConnection();
		    
		    pstmt = conn.prepareStatement(
		    		"select count(*) from buy where id=?");
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
}

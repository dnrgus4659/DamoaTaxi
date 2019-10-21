package reservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import reservation.cartDAO;
import reservation.cartDTO;

/**
 * Servlet implementation class buyInsertServlet
 */
@WebServlet("/buyInsertServlet")
public class buyInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String id= request.getParameter("id");
		String price= request.getParameter("price");
		String account= request.getParameter("account");
		
		buyDAO buyDAO = new buyDAO();
		
		try {
			cartDAO cartProcess = cartDAO.getInstance();
			List<cartDTO> cartLists = cartProcess.getCart(id);
			buyDAO.buyInsert(cartLists, price, account, id);
			
			request.getSession().setAttribute("messageType", "성공 메세지");
			request.getSession().setAttribute("messageContent", "예약을 담았습니다.");
			response.sendRedirect("../DamoaTaxi/reservation_status.jsp");
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

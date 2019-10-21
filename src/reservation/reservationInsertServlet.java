package reservation;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Damoa_pro.CommentDAO;

@WebServlet("/reservationInsertServlet")
public class reservationInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String name= request.getParameter("name");
		String date = request.getParameter("date");
		String getIn= request.getParameter("getIn");
		String getOut= request.getParameter("getOut");
		String time= request.getParameter("time");
		String phone= request.getParameter("phone");
		String person= request.getParameter("person");
		String driver= request.getParameter("driver");
		String car= request.getParameter("car");
		String requestContent= request.getParameter("requestContent");
		String category= request.getParameter("category");
		String id= request.getParameter("id");
		
		reservationDAO reservationDAO = new reservationDAO();
		
		try {
			reservationDAO.reservationInsert(name, date, getIn, getOut, time, phone, person, driver, requestContent, category, car, id);
			request.getSession().setAttribute("messageType", "성공 메세지");
			request.getSession().setAttribute("messageContent", "예약 되었습니다.");
			response.sendRedirect("../DamoaTaxi/dm_Main.jsp");
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

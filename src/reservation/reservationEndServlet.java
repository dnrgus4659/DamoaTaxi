package reservation;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class reservationEndServlet
 */
@WebServlet("/reservationEndServlet")
public class reservationEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String num = request.getParameter("num");
		
		buyDAO buyDAO = new buyDAO();
		int result = buyDAO.reservationEnd(num);
		if(result == -1) {
			request.getSession().setAttribute("messageType", "오류 메세지");
			request.getSession().setAttribute("messageContent", "변경에 실패하였습니다.");
			response.sendRedirect("./DamoaTaxi/manage/manageMain.jsp?content=manageReservation");
			return;
		}else {
			request.getSession().setAttribute("messageType", "성공 메세지");
			request.getSession().setAttribute("messageContent", "변경 되었습니다.");
			response.sendRedirect("./DamoaTaxi/manage/manageMain.jsp?content=manageReservation");
			return;
		}
	}
}

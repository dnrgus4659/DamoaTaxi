package reservation;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.Transport;
import javax.mail.Message;
import javax.mail.Address;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.Session;
import javax.mail.Authenticator;
import java.util.Properties;
import Damoa_pro.UserDAO;
import util.Gmail;

/**
 * Servlet implementation class reservationCertainServlet
 */
@WebServlet("/reservationCertainServlet")
public class reservationCertainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String num = request.getParameter("num");
		String price = request.getParameter("price");
		String id = request.getParameter("id");
		
		buyDAO buyDAO = new buyDAO();
		int result = buyDAO.reservationCertain(num, price, id);
		if(result == -1) {
			request.getSession().setAttribute("messageType", "오류 메세지");
			request.getSession().setAttribute("messageContent", "예약확정에 실패하였습니다.");
			response.sendRedirect("./DamoaTaxi/manage/manageMain.jsp?content=manageReservation");
			return;
		}else {
			// 사용자에게 보낼 메시지를 기입합니다.
			String host = "http://localhost:8888/DamoaTaxi/";
			String from = "dnrgus4659@gmail.com";
			String to = UserDAO.getUserEmail(id);
			String subject = "(다모아택시)예약번호" + num + "번 택시 예약이 확정되었습니다.";
			String content = "다음 링크에 접속하여 확인 해보세요." +
					"<a href='" + host + "reservation_status.jsp"+"'>예약현황 확인하기</a>";

			// SMTP에 접속하기 위한 정보를 기입합니다.
			Properties p = new Properties();
			p.put("mail.smtp.user", from);
			p.put("mail.smtp.host", "smtp.googlemail.com");
			p.put("mail.smtp.port", "465");
			p.put("mail.smtp.starttls.enable", "true");
			p.put("mail.smtp.auth", "true");
			p.put("mail.smtp.debug", "true");
			p.put("mail.smtp.socketFactory.port", "465");
			p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			p.put("mail.smtp.socketFactory.fallback", "false");

			try{
			    Authenticator auth = new Gmail();
			    Session ses = Session.getInstance(p, auth);
			    ses.setDebug(true);
			    MimeMessage msg = new MimeMessage(ses); 
			    msg.setSubject(subject);
			    Address fromAddr = new InternetAddress(from);
			    msg.setFrom(fromAddr);
			    Address toAddr = new InternetAddress(to);
			    msg.addRecipient(Message.RecipientType.TO, toAddr);
			    msg.setContent(content, "text/html;charset=UTF-8");
			    Transport.send(msg);
			} catch(Exception e){
			    e.printStackTrace();
			}
			request.getSession().setAttribute("messageType", "성공 메세지");
			request.getSession().setAttribute("messageContent", "예약확정 되었습니다.");
			response.sendRedirect("./DamoaTaxi/manage/manageMain.jsp?content=manageReservation");
			return;
		}
	}
}

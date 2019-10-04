package Damoa_pro;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserModifyPhoneServlet
 */
@WebServlet("/UserModifyEmailServlet")
public class UserModifyEmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String ID = request.getParameter("ID");
		String New_email = request.getParameter("form_email");
		String category = request.getParameter("category");
		try {
			response.getWriter().write(new UserDAO().Modify_email(ID,New_email,category)+"");//문자열 형태로 출력하기 위해 공백문자 추가
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

package Damoa_pro;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserModifyCheckServlet")
public class UserModifyCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String form_userID = request.getParameter("Impairment_ID");
		String modal_userID = request.getParameter("New_ID");
		try {
			response.getWriter().write(new UserDAO().ModifyImpairment_ID(form_userID,modal_userID)+"");//문자열 형태로 출력하기 위해 공백문자 추가
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

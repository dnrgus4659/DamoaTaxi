package Damoa_pro;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserModifyPasswordServlet")
public class UserModifyPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String ID = request.getParameter("ID");
		String current_password = request.getParameter("current_password");
		String new_password = request.getParameter("new_password");
		String category = request.getParameter("category");
		try {
			response.getWriter().write(new UserDAO().Modify_password(ID, current_password, new_password, category)+"");//문자열 형태로 출력하기 위해 공백문자 추가
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

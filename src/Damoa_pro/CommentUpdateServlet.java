package Damoa_pro;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CommentUpdateServlet")
public class CommentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String num = request.getParameter("num");
		String upContent = request.getParameter("upContent");
		String boardID = request.getParameter("boardID");
		if(upContent == null || upContent.equals("")) {
			request.getSession().setAttribute("messageType", "오류 메세지");
			request.getSession().setAttribute("messageContent", "내용을 모두 채워주세요.");
			response.sendRedirect("./DamoaTaxi/review_boardUpdate.jsp");
			return;
		}
		
		CommentDAO commentdao = new CommentDAO();
		commentdao.update(num, upContent);
		request.getSession().setAttribute("messageType", "성공 메세지");
		request.getSession().setAttribute("messageContent", "성공적으로 댓글이 수정되었습니다.");
		response.sendRedirect("./DamoaTaxi/review_boardShow.jsp?boardID="+boardID);
		return;
	}

}

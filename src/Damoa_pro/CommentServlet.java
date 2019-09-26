package Damoa_pro;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CommentServlet")
public class CommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String num= request.getParameter("num");
		String boardID = request.getParameter("boardID");
		String ref= request.getParameter("ref");
		String re_step= request.getParameter("re_step");
		String re_level= request.getParameter("re_level");
		String id= request.getParameter("writer");
		String content= request.getParameter("content");
		
		if(num == null || num.equals("") || id == null || id.equals("") || content == null || content.equals("")) {
			request.getSession().setAttribute("messageType", "오류 메세지");
			request.getSession().setAttribute("messageContent", "잘못된 접근이거나 내용을 모두 채워주세요");
			response.sendRedirect("./DamoaTaxi/review_boardShow.jsp?boardID="+boardID);
		}
		
		CommentDAO CommentDAO = new CommentDAO();
		try {
			CommentDAO.insertComment(num,boardID,ref,re_step,re_level,id,content);
			request.getSession().setAttribute("messageType", "성공 메세지");
			request.getSession().setAttribute("messageContent", "성공적으로 댓글이 작성되었습니다.");
			response.sendRedirect("./DamoaTaxi/review_boardShow.jsp?boardID="+boardID);
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}

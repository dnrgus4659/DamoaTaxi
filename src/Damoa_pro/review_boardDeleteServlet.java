package Damoa_pro;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class review_boardDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		String userID = request.getParameter("userID");
		String boardID = request.getParameter("boardID");
		if(boardID == null || boardID.equals("")) {
			request.getSession().setAttribute("messageType", "오류 메세지");
			request.getSession().setAttribute("messageContent", "접근할 수 없습니다.");
			response.sendRedirect("./DamoaTaxi/review_boardView.jsp");
			return;
		}
		review_BoardDAO review_boardDAO = new review_BoardDAO();
		review_BoardDTO board = review_boardDAO.getBoard(boardID);
		if(!userID.equals(board.getUserID())) {
			request.getSession().setAttribute("messageType", "오류 메세지");
			request.getSession().setAttribute("messageContent", "접근할 수 없습니다.");
			response.sendRedirect("./DamoaTaxi/review_boardView.jsp");
			return;
		}
		String savePath = request.getRealPath("/upload").replaceAll("\\\\","/");
		String prev = review_boardDAO.getRealFile(boardID);
		int result = review_boardDAO.delete(boardID);
		if(result == -1) {
			request.getSession().setAttribute("messageType", "오류 메세지");
			request.getSession().setAttribute("messageContent", "접근할 수 없습니다.");
			response.sendRedirect("./DamoaTaxi/review_boardView.jsp");
			return;
		}else {
			File prevFile = new File(savePath + "/" + prev);
			if(prevFile.exists()) {
				prevFile.delete();
			}
			request.getSession().setAttribute("messageType", "성공메세지");
			request.getSession().setAttribute("messageContent", "삭제에 성공했습니다.");
			response.sendRedirect("./DamoaTaxi/review_boardView.jsp");
			return;
		}
	}

}

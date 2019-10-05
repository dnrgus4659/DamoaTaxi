package manage;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Damoa_pro.review_BoardDAO;
import Damoa_pro.review_BoardDTO;

@WebServlet("/driverDeleteServlet")
public class driverDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		String num = request.getParameter("num");
		if(num == null || num.equals("")) {
			request.getSession().setAttribute("messageType", "오류 메세지");
			request.getSession().setAttribute("messageContent", "접근할 수 없습니다.2");
			response.sendRedirect("./DamoaTaxi/manage/manageMain.jsp?content=manageDriver");
			return;
		}
		driverDAO driverDAO = new driverDAO();
		
		String savePath = request.getRealPath("/upload").replaceAll("\\\\","/");
		String prev = driverDAO.getRealFile(num);
		int result = driverDAO.delete(num);
		if(result == -1) {
			request.getSession().setAttribute("messageType", "오류 메세지");
			request.getSession().setAttribute("messageContent", "접근할 수 없습니다.1");
			response.sendRedirect("./DamoaTaxi/manage/manageMain.jsp?content=manageDriver");
			return;
		}else {
			File prevFile = new File(savePath + "/" + prev);
			if(prevFile.exists()) {
				prevFile.delete();
			}
			request.getSession().setAttribute("messageType", "성공메세지");
			request.getSession().setAttribute("messageContent", "삭제에 성공했습니다.");
			response.sendRedirect("./DamoaTaxi/manage/manageMain.jsp?content=manageDriver");
			return;
		}
	}

}

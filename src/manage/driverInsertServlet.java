package manage;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Damoa_pro.review_BoardDAO;


@WebServlet("/driverInsertServlet")
public class driverInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		MultipartRequest multi = null;
		int fileMaxSize = 10*1024*1024;
		String savePath = request.getRealPath("/upload").replaceAll("\\\\","/");
		try {
			multi = new MultipartRequest(request, savePath, fileMaxSize, "UTF-8", new DefaultFileRenamePolicy());
		}catch(Exception e) {
			request.getSession().setAttribute("messageType", "오류 메세지");
			request.getSession().setAttribute("messageContent", "파일 크기는 10MB를 넘을 수 없습니다.");
			response.sendRedirect("./DamoaTaxi/manage/manageMain.jsp?content=manageDriver");
			return;
		}
		String name = multi.getParameter("name");
		String age = multi.getParameter("age");
		String sex = multi.getParameter("sex");
		String career = multi.getParameter("career");
		String category = multi.getParameter("category");
		String phone_num = multi.getParameter("phone_num");
		if(name == null || name.equals("") || age == null || age.equals("")
				 || sex == null || sex.equals("")
				 || career == null || career.equals("")
				 || category == null || category.equals("")
				 || phone_num == null || phone_num.equals("")) {
			request.getSession().setAttribute("messageType", "오류 메세지");
			request.getSession().setAttribute("messageContent", "내용을 모두 채워주세요");
			response.sendRedirect("./DamoaTaxi/manage/manageMain.jsp?content=manageDriver");
		}
		String File="";
		String RealFile = "";
		File file = multi.getFile("file");
		if(file != null) {
			File = multi.getOriginalFileName("file");
			RealFile = file.getName();
		}
		driverDAO driverDAO = new driverDAO();
		driverDAO.insertDriver(name, age, sex, career, category, phone_num, File, RealFile);
		request.getSession().setAttribute("messageType", "성공 메세지");
		request.getSession().setAttribute("messageContent", "성공적으로 등록되었습니다.");
		response.sendRedirect("./DamoaTaxi/manage/manageMain.jsp?content=manageDriver");
		return;
	}

}

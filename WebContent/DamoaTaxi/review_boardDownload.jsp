<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Damoa_pro.review_BoardDAO" %>    
<%@ page import="java.io.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %>

<%
	request.setCharacterEncoding("UTF-8");
	out.println("1");
	String boardID = request.getParameter("boardID");
	out.println("2");
	if(boardID == null || boardID.equals("")){
		request.getSession().setAttribute("messageType", "오류 메세지");
		request.getSession().setAttribute("messageContent", "접근할 수 없습니다.");
		response.sendRedirect("./DamoaTaxi/review_boardView.jsp");
		return;
	}
	out.println("3");
	String root = request.getSession().getServletContext().getRealPath("/");//실제 서버의 물리적인 경로
	String savePath = root + "upload";//upload 폴더명
	out.println(savePath);
	String fileName = "";
	String realFile = "";
	review_BoardDAO boardDAO = new review_BoardDAO();
	fileName = boardDAO.getFile(boardID);
	realFile = boardDAO.getRealFile(boardID);
	if(fileName.equals("") || realFile.equals("")){
		request.getSession().setAttribute("messageType", "오류 메세지");
		request.getSession().setAttribute("messageContent", "접근할 수 없습니다.");
		response.sendRedirect("./DamoaTaxi/review_boardView.jsp");
		return;
	}
	InputStream in = null;
	OutputStream os = null;
	File file = null;
	boolean skip = false;
	String client = "";
	try{
		try{
			file = new File(savePath, realFile);
			in = new FileInputStream(file);

		}catch(FileNotFoundException e){
			skip = true;
		}
		client = request.getHeader("User-Agent");
		response.reset();
		response.setContentType("application/octet-stream");
		response.setHeader("Content-Description", "JSP Generated Data");
		if(!skip){
			if(client.indexOf("MSIE") != -1){
				response.setHeader("Content-Disposition", "attachment; filename" + new String(fileName.getBytes("KSC5601"),"ISO8859_1"));
			} else{
				fileName = new String(fileName.getBytes("UTF-8"), "iso-8859-1");
				response.setHeader("Content-Disposition", "attachment; filename\"" + fileName+"\"");
				response.setHeader("Content-Type", "application/octet-stream; charset=UTF-8");
			}
				response.setHeader("Content-Length", ""+file.length());
				out.clear();
			    pageContext.pushBody();
				os = response.getOutputStream();
				byte b[] = new byte[(int)file.length()];
				int leng = 0;
				while ((leng = in.read(b)) > 0){//데이터 보내기
					os.write(b,0,leng);
				}
			}else{
				response.setContentType("text/html; charset=UTF-8");
				out.println("<script>alert('파일을 찾을 수 없습니다.');history.back();</script>");
			}
			in.close();
			os.close();
	}catch(Exception e){
		e.printStackTrace();
	}
%>

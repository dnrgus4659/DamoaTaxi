<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Damoa_pro.review_BoardDAO" %>    
<%@ page import="java.io.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %>
<<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>다운로드</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("UTF-8");
			String boardID = request.getParameter("boardID");
			System.out.println("boardID : "+boardID);
			if(boardID == null || boardID.equals("")){
				request.getSession().setAttribute("messageType", "오류 메세지");
				request.getSession().setAttribute("messageContent", "접근할 수 없습니다. 존재하지 않는 글입니다.");
				response.sendRedirect("./review_boardView.jsp");
				return;
			}
			String root = request.getSession().getServletContext().getRealPath("/");//실제 서버의 물리적인 경로
			System.out.println("root : "+root);
			String savePath = root + "upload";//upload 폴더명
			System.out.println("savePath : "+savePath);
			String fileName = "";
			String realFile = "";
			review_BoardDAO boardDAO = new review_BoardDAO();
			fileName = boardDAO.getFile(boardID);
			System.out.println("fileName : "+fileName);
			realFile = boardDAO.getRealFile(boardID);
			System.out.println("realFile : "+realFile);
			if(fileName.equals("") || realFile.equals("")){
				request.getSession().setAttribute("messageType", "오류 메세지");
				request.getSession().setAttribute("messageContent", "접근할 수 없습니다. 존재하지 않는 파일입니다.");
				response.sendRedirect("./review_boardView.jsp");
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
					System.out.println("file : "+file);
					in = new FileInputStream(file);
					System.out.println("in : "+in);
		
				}catch(FileNotFoundException e){
					skip = true;
				}
				client = request.getHeader("User-Agent");
				System.out.println("client : "+client);
				response.reset();
				response.setContentType("application/octet-stream");
				response.setHeader("Content-Description", "JSP Generated Data");
				
				if(!skip){
					if(client.indexOf("MSIE") != -1){
						response.setHeader("Content-Disposition", "attachment; filename=" + new String(fileName.getBytes("KSC5601"),"ISO8859_1"));
					} else{
						fileName = new String(fileName.getBytes("UTF-8"), "iso-8859-1");
						System.out.println("fileName : "+fileName);
						response.setHeader("Content-Disposition", "attachment; filename\"" + fileName+"\"");
						response.setHeader("Content-Type", "application/octet-stream; charset=UTF-8");
					}
						response.setHeader("Content-Length", ""+file.length());
						out.clear();
		                out=pageContext.pushBody();
						os = response.getOutputStream();
						System.out.println("os : "+os);
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
	</body>
</html>



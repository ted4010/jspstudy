<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  // 요청 인코딩
  request.setCharacterEncoding("UTF-8");

  // 요청 파라미터
  String createdAt = request.getParameter("created-at");
  String title = request.getParameter("title");
  String contents = request.getParameter("contents");
  
  // 업로드 경로
  String uploadPath = application.getRealPath("upload");
  
  File uploadDir = new File(uploadPath);
  if(!uploadDir.exists()){
    uploadDir.mkdirs();
  }
  
  // 요청 IP 주소
  String ip = request.getRemoteAddr();
  
  // 업로드 파일명
  String uploadName = title + "_" + createdAt.replace("-", "_") + "_" + ip.replace(":", "_") + ".txt";
  
  // 업로드 파일명을 세션에 등록하기
  session.setAttribute("uploadName", uploadName);
  
  // 업로드 파일 객체
  File uploadFile = new File(uploadDir, uploadName);
  
  // 문자 출력 스트림 생성 
  BufferedWriter writer = new BufferedWriter(new FileWriter(uploadFile));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
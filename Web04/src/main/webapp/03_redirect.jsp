<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 페이지 강제로 이동하기 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
네이버 홈페이지로 이동
<%
  response.sendRedirect("https://www.naver.com");
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h3>세션 설정</h3>
<%
  session.setAttribute("id", "test_ssesion");
  session.setAttribute("pwd", "test123");
  session.setAttribute("age", 25);
%>
</body>
</html>
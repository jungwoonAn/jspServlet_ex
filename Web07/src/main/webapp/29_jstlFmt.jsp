<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 입력폼에서 한글 깨지지 않고 읽어오기 --%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <% request.setCharacterEncoding("utf-8"); %>
  이름 : <%= request.getParameter("name") %>

</body>
</html>
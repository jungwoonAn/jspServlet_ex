<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- EL 언어의 내장 객체 명시적으로 사용하기 --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <% 
    pageContext.setAttribute("name", "page man");
    request.setAttribute("name", "request man");
    session.setAttribute("name", "session man");
    application.setAttribute("name", "application man");
  %>
  name : ${name}<hr>
  page 속성 : ${pageScope.name}<br>
  request 속성 : ${requestScope.name}<br>
  session 속성 : ${sessionScope.name}<br>
  application 속성 : ${applicationScope.name}<br>
  
</body>
</html>
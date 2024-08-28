<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  고전적인 방식 : 
  <%
    // request.getAttribute() 리턴타입은 무조건 Object이기 때문에 Integer로 형변환 해야하는 단점 있음
    int num1 = (Integer)request.getAttribute("num1");
    int num2 = (Integer)request.getAttribute("num2");
  %>
  <%= num1 %> + <%= num2 %> = <%= num1 + num2 %><hr>
  
  EL 방식 : ${num1} + ${num2} = ${add}
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- request.getParameter에서 == 객체비교,  equals()값 비교 --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  자바 코드<br>
  == 연산자 사용 결과 : <%= request.getParameter("id")=="test01" %><br>
  equals() 사용 결과 : <%= request.getParameter("id").equals("test01") %>

</body>
</html>
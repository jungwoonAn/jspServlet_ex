<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form action="09_actionTagTest.jsp">
    아 이 디 : <input type="text" name="userid" /><br> 
    비밀번호 : <input type="password" name="userpwd" /><br>
    <input type="radio" name="loginCheck" value="user" checked />사용자
    <input type="radio" name="loginCheck" value="manager" />관리자
    <button type="submit">로그인</button>
  </form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form action="paramServlet" method="get" name="frm">
    아이디 : <input type="text" name="id" /><br>
    나&nbsp;이 : <input type="text" name="age" /><br>
    <button type="submit" onclick="return check()">전송</button>
  </form>

</body>
</html>
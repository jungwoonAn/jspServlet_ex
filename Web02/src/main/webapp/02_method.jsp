<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form method="get" action="methodServlet">
    <input type="submit" value="get방식으로 호출" />
  </form>
  <br>
  <form method="post" action="methodServlet">
    <input type="submit" value="post방식으로 호출" />
  </form>

</body>
</html>
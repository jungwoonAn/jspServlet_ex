<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h3>get 방식에서 한글 깨짐 방지</h3>
  <form action="infoServlet" method="get">
    이름 : <input type="text" name="name" /><br>
    주소 : <input type="text" name="addr" /><br>
    <button type="submit">전송</button>
  </form>
  <br>
  <h3>post 방식에서 한글 깨짐 방지</h3>
  <form action="infoServlet" method="post">
    이름 : <input type="text" name="name" /><br>
    주소 : <input type="text" name="addr" /><br>
    <button type="submit">전송</button>
  </form>
</body>
</html>
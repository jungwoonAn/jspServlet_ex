<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>악세사리</h2>
  <p>관심항목을 선택하세요.</p>
  <hr>
  <form action="checkboxServlet" method="get">
    <input type="checkbox" name="item" value="신발" /> 신발 
    <input type="checkbox" name="item" value="가방" /> 가방 
    <input type="checkbox" name="item" value="벨트" /> 벨트 
    <input type="checkbox" name="item" value="모자" /> 모자 
    <input type="checkbox" name="item" value="시계" /> 시계 
    <input type="checkbox" name="item" value="쥬얼리" /> 쥬얼리
    <button type="submit">전송</button>
  </form>
</body>
</html>
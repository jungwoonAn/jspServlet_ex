<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 관심분야 다중 선택하기 --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>악세사리</h2>
  관심항목을 선택하세요
  <hr>
  <form action="17_paramValues.jsp" method="get">
    <input type="checkbox" name="item" value="신발" /> 신발
    <input type="checkbox" name="item" value="가방" /> 가방
    <input type="checkbox" name="item" value="벨트" /> 벨트 <br>
    <input type="checkbox" name="item" value="모자" /> 모자
    <input type="checkbox" name="item" value="시계" /> 시계
    <input type="checkbox" name="item" value="쥬얼리" /> 쥬얼리 <br>
    <button type="submit">전송</button>
  </form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <c:choose> 태그로 과일 선택하기 --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form action="13_fruitSelect.jsp">
    <label>과일을 선택하세요</label> <br>
    <select id="fruit" name="fruit">
      <option value="1">사과</option>
      <option value="2">멜론</option>
      <option value="3">바나나</option>
    </select>
    <button type="submit">전송</button>
  </form>

</body>
</html>
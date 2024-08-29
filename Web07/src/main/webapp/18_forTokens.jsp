<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 콤마,와 닷.을 구분자로 사용하여 문자열로부터 토큰 추출하기 --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <c:forTokens var="city" items="서울.인천,대구.부산" delims=",">
    ${city} <br>
  </c:forTokens>
  <hr>
  <c:forTokens var="city" items="서울.인천,대구.부산" delims=",.">
    ${city} <br>
  </c:forTokens>
</body>
</html>
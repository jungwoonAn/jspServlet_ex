<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 입력폼에서 한글 깨지지 않고 읽어오기 : jstl방식 --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <fmt:requestEncoding value="utf-8"/>
  이름 : <c:out value="${param.name}"></c:out>

</body>
</html>
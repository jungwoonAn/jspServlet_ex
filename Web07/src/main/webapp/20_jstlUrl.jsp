<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <c:url> 사용하기 --%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <c:url value="img/gerardo.jpg" var="photo" />
  <p>${photo}</p>
  <img alt="photo1" src="${photo}" width="250">
  <hr>
  
  <c:url value="https://images.twinkl.co.uk/tw1n/image/private/t_630/u/ux/koala-animal-family_ver_1.jpg" var="koala"/>
  <p>${koala}</p>
  <img alt="koala" src="${koala}" width="300">
</body>
</html>
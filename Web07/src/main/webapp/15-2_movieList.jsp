<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <c:forEach>태그의 begin, end 속성 사용하기 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <c:forEach var="cnt" begin="1" end="10" varStatus="status">
    ${cnt}<c:if test="${not status.last}">,</c:if>
  </c:forEach> 
  <hr>
  
  <table border="1" style="width:100%;text-align:center;">
    <tr>
      <th>index</th>
      <th>count</th>
      <th>cnt</th>
    </tr>
    <c:forEach var="cnt" begin="7" end="10" varStatus="status">
      <tr>
        <td>${status.index}</td>
        <td>${status.count}</td>
        <td>${cnt}</td>
      </tr>
    </c:forEach>
  </table>
  <hr>
  
  <table border="1" style="width:100%;text-align:center;">
    <tr>
      <th>index</th>
      <th>count</th>
      <th>cnt</th>
    </tr>
    <c:forEach var="cnt" begin="1" end="10" step="2" varStatus="status">
      <tr>
        <td>${status.index}</td>
        <td>${status.count}</td>
        <td>${cnt}</td>
      </tr>
    </c:forEach>
  </table>

</body>
</html>
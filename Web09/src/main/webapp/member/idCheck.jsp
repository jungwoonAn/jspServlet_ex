<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/member.js"></script>
</head>
<body>
  <h2>아이디 중복 확인</h2>
  <form action="idCheck.do" method="get" name="frm">
    아이디 <input type="text" name="userid" value="${userid}" />
         <button type="submit">중복 체크</button> <br>
    <c:if test="${result == 1}">
      <script>
        opener.frm.userid.value = "";
      </script>
      ${userid}는 이미 사용 중인 아이디입니다.
    </c:if>
    <c:if test="${result == -1 }">
      ${userid}는 사용 가능한 아이디입니다.
      <button type="button" onclick="idok('${userid}')">사용</button>
    </c:if>
  </form>
</body>
</html>
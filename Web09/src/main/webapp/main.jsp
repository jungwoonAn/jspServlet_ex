<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <c:if test="${empty loginUser}">
    <jsp:forward page="login.do" />
  </c:if>
  <h2>회원 전용 페이지</h2>
  <form action="logout.do">
    <table>
      <tr>
        <td>안녕하세요. ${loginUser.name}(${loginUser.userid})님</td>
      </tr>
      <tr>
        <td>
          <button type="submit">로그아웃</button>
          <button type="button" onclick="location.href='memberUpdate.do?userid=${loginUser.userid}'">회원 정보 변경</button>
        </td>
      </tr>
    </table>
  </form>

</body>
</html>
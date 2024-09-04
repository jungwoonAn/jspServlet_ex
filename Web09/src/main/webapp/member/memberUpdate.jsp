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
  <h2>회원 정보 수정</h2>
  <form action="memberUpdate.do" method="post" name="frm">
    <table>
      <tr>
        <td>이름</td>
        <td>
          <input type="text" name="name" size="20" value="${mVo.name}" readonly />
        </td>
      </tr>
      <tr>
        <td>아이디</td>
        <td>
          <input type="text" name="userid" size="20" value="${mVo.userid}" readonly />
        </td>
      </tr>
      <tr>
        <td>비밀번호</td>
        <td>
          <input type="password" name="pwd" size="20" />
          <span style="color:red;">*</span>
        </td>
      </tr>
      <tr>
        <td width="100">비밀번호 확인</td>
        <td>
          <input type="password" name="pwd_check" size="20" />
          <span style="color:red;">*</span>          
        </td>
      </tr>
      <tr>
        <td>이메일</td>
        <td><input type="text" name="email" size="20" value="${mVo.email}"/></td>
      </tr>
      <tr>
        <td>전화번호</td>
        <td><input type="text" name="phone" size="11" value="${mVo.phone}" /></td>
      </tr>
      <tr>
        <td>등급</td>
        <td>
          <c:choose>
            <c:when test="${mVo.admin == 0}">
              <input type="radio" name="admin" value="0" checked /> 일반회원
              <input type="radio" name="admin" value="1" /> 관리자
            </c:when>
            <c:when test="${mVo.admin == 1}">
              <input type="radio" name="admin" value="0" /> 일반회원
              <input type="radio" name="admin" value="1" checked /> 관리자
            </c:when>
          </c:choose>
        </td>
      </tr>
      <tr>
        <td colspan="2" style="text-align:center;">
          <button type="submit" onclick="return joinCheck()">확인</button>
          <button type="reset">취소</button>
        </td>
      </tr>
      <tr>
        <td colspan="2">${message}</td>
      </tr>
    </table>
  </form>

</body>
</html>
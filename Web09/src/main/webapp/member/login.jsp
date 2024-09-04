<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/member.js"></script>
</head>
<body>
  <h2>로그인</h2>
  <form action="login.do" method="post" name="frm">
    <table>
      <tr>
        <td>아이디</td>
        <td><input type="text" name="userid" value="${userid}" /></td>
      </tr>
      <tr>
        <td>비밀번호</td>
        <td><input type="password" name="pwd" value="${userid}" /></td>
      </tr>
      <tr>
        <td colspan="2" style="text-align:center;">
          <button type="submit" onclick="return loginCheck();">로그인</button>
          <button type="reset">취소</button>
          <button type="button" onclick="location.href='join.do'">회원가입</button>
        </td>
      </tr>
      <tr>
        <td colspan="2">${message}</td>
      </tr>
    </table>
  </form>

</body>
</html>
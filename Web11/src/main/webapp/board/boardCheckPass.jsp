<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
  <div id="wrap" align="center">
    <h2>비밀번호 확인</h2>
    <form name="frm" action="BoardServlet" method="get">
      <input type="hidden" name="command" value="board_check_pass">
      <input type="hidden" name="num" value="${board.num}">
      <table style="width:80%">
        <tr>
          <th>비밀번호</th>
          <td>
            <input type="password" name="pass" size="20">
          </td>
        </tr>
      </table>
      <br><br>
      <button type="submit" onclic="return passCheck()">확인</button>
      <br><br>
      <p>${message}</p>      
    </form>
  </div>

</body>
</html>
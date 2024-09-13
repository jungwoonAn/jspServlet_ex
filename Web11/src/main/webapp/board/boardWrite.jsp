<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="css/board.css">
<script type="text/javascript" src="js/board.js"></script>
</head>
<body>
  <div id="wrap" align="center">
    <h2>게시글 등록</h2>
    <form name="frm" action="BoardServlet" method="post">
      <input type="hidden" name="command" value="board_write">
      <table>
        <tr>
          <th>작성자</th>
          <td>
            <input type="text" name="name" size="12"> * 필수
          </td>
        </tr>
        <tr>
          <th>비밀번호</th>
          <td>
            <input type="text" name="pass" size="12"> * 필수(게시물 삭제시 필요합니다.)
          </td>
        </tr>
        <tr>
          <th>이메일</th>
          <td>
            <input type="text" name="email" size="40" maxlength="50">
          </td>
        </tr>
        <tr>
          <th>제목</th>
          <td>
            <input type="text" name="title" size="70">
          </td>
        </tr>
        <tr>
          <th>내용</th>
          <td>
            <textarea rows="15" cols="70" name="content"></textarea>
          </td>
        </tr>
      </table>
      <br><br>
      <button type="submit" onclick="return boardCheck()">등록</button>
      <button type="reset">취소</button>
      <button type="button" onclick="location.href='BoardServlet?command=board_list'">목록</button>
    </form>
  </div>

</body>
</html>
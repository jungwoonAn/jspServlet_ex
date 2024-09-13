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
    <h2>게시글 수정</h2>
    <form name="frm" action="BoardServlet" method="post">
      <input type="hidden" name="command" value="board_update">
      <input type="hidden" name="num" value="${board.num}">      
      <table>
        <tr>
          <th>작성자</th>
          <td>
            <input type="text" name="name" size="12" value=""> * 필수
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
            <input type="text" name="email" size="40" maxlength="50" value="${board.email}">
          </td>
        </tr>
        <tr>
          <th>제목</th>
          <td>
            <input type="text" name="title" size="70" value="${board.title}">
          </td>
        </tr>
        <tr>
          <th>내용</th>
          <td>
            <textarea rows="15" cols="70" name="content">${board.content}</textarea>
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
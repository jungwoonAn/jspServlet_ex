<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>        
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
    <h2>게시글 상세보기</h2>
    <table>
      <tr>
        <th>작성자</th>
        <td>${board.name}</td>
        <th>이메일</th>
        <td>${board.email}</td>
      </tr>
      <tr>
        <th>작성일</th>
        <td>
          <fmt:formatDate value="${board.writedate}"/>
        </td>
        <th>조회수</th>
        <td>${board.readcount}</td>
      </tr>
      <tr>
        <th>제목</th>
        <td colspan="3">${board.title}</td>
      </tr>
      <tr>
        <th>내용</th>
        <td colspan="3"><pre>${board.content}</pre></td>
      </tr>
    </table>
    <br><br>
    <button type="button" onclic="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}', 'update')">수정</button>
    <button type="button" onclic="open_win('BoardServlet?command=board_check_pass_form&num=${board.num}', 'delete')">삭제</button>
    <button type="button" onclic="location.href='BoardServlet?command=board_list'">목록</button>
    <button type="button" onclic="location.href='BoardServlet?command=board_write_form'">등록</button>
  </div>

</body>
</html>
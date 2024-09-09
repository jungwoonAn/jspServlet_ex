<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정 페이지</title>
<link rel="stylesheet" href="css/shopping.css">
<script type="text/javascript" src="js/product.js"></script>
</head>
<body>
  <div id="wrap">
    <h2>상품 수정 - 관리자 페이지</h2>
    <form method="post" enctype="multipart/form-data" name="frm">
      <input type="hidden" name="code" value="${product.code}">
      <input type="hidden" name="nonmakeImg" value="${product.pictureUrl}">
      <table>
        <tr>
          <td>
            <c:choose>
              <c:when test="${empty product.pictureUrl}">
                <img src="upload/noimage.gif">
              </c:when>
              <c:otherwise>
                <img src="upload/%{product.pictureUrl}">
              </c:otherwise>
            </c:choose>
          </td>
        </tr>
      
        <table>
          <tr>
            <th>상품명</th>
            <td><input type="text" name="name" size="80" value="${product.name}"></td>
          </tr>
          <tr>
            <th>가 격</th>
            <td><input type="text" name="price" value="${product.price}">원</td>
          </tr>
          <tr>
            <th>사 진</th>
            <td>
              <input type="file" name="pictureUrl"><br>
              (주의사항 : 이미지를 변경하고자 할 때만 선택하시오)
            </td>
          </tr>
          <tr>
            <th>설 명</th>
            <td><textarea rows="10" cols="80" name="description">${product.description}</textarea></td>
          </tr>
        </table>
        <br>
        <button type="submit" onclic="return productCheck()">등록</button>
        <button type="reset">취소</button>
        <button type="button" onclick="location.href='productList.do'">목록</button>
      </table>
    </form>
  </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 삭제 페이지</title>
<link rel="stylesheet" href="css/shopping.css">
<script type="text/javascript" src="js/product.js"></script>
</head>
<body>
  <div id="wrap">
    <h2>상품 삭제 - 관리자 페이지</h2>
    <form method="post" action="productDelete.do">
      <table>
        <tr>
          <td>
            <c:choose>
              <c:when test="${empty product.pictureUrl}">
                <img src="upload/noimage.gif">
              </c:when>
              <c:otherwise>
                <img src="upload/${product.pictureUrl}">
              </c:otherwise>
            </c:choose>
          </td>
          <td>
            <table>
              <tr>
                <th style="width:80px">상품명</th>
                <td>${product.name}</td>
              </tr>
              <tr>
                <th>가 격</th>
                <td>${product.price}원</td>
              </tr>
              <tr>
                <th>설 명</th>
                <td><div style="width:100%; height:220px">${product.description}</div></td>
              </tr>
            </table>
            <br>
            <input type="hidden" name="code" value="${product.code}">
            <button type="submit">삭제</button>
            <button type="button" onclick="location.href='productList.do'">목록</button>          
          </td>
        </tr>  
      </table>
    </form>
  </div>

</body>
</html>
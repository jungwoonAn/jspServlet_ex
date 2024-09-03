<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 로케일 지정하기 --%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <c:set var="now" value="<%= new java.util.Date() %>"></c:set>
  <pre>
  톰캣 서버의 기본 로케일 : <%= response.getLocale() %>
  <fmt:setLocale value="ko_kr"/>
  로케일을 한국어로 설정 후 로케일 확인 : <%= response.getLocale() %>
  통화(currency) : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber>
  날짜 : <fmt:formatDate value="${now}"/>
  <fmt:setLocale value="ja_jp"/>
  로케일을 일본어로 설정 후 로케일 확인 : <%= response.getLocale() %>
  통화(currency) : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber>
  날짜 : <fmt:formatDate value="${now}"/>
  <fmt:setLocale value="en_us"/>
  로케일을 영어로 설정 후 로케일 확인 : <%= response.getLocale() %>
  통화(currency) : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber>
  날짜 : <fmt:formatDate value="${now}"/>
  </pre>
</body>
</html>
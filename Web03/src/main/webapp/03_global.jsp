<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 선언문에 선언한 변수와 스크립트릿 변수의 성격 파악하기 --%>    
<%!
	int global_cnt = 0;
%>
<%
	int local_cnt=0;
	
	out.print("<br> local_cnt : ");
	out.print(++local_cnt);
	
	out.print("<br> global_cnt : ");
	out.print(++global_cnt);
%>

<!-- 브라우저에서 새로고침 해보세요~ -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
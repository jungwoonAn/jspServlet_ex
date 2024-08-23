<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  session.setAttribute("s_name1", "저는 세션에 저장된 첫 번째 값입니다.");
  session.setAttribute("s_name2", "저는 세션에 저장된 두 번째 값입니다.");
  session.setAttribute("s_name3", "저는 세션에 저장된 세 번째 값입니다.");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
    out.print("<h3>세션값을 삭제하기 전</h3>");
    Enumeration<String> names = session.getAttributeNames();
    while(names.hasMoreElements()){
    	String name = names.nextElement().toString();
    	String value = session.getAttribute(name).toString();
    	out.print(name + " : " + value + "<br>");
    }
    out.print("Q : 과연 세션 아이디가 유효할까요?<br>");
    if(request.isRequestedSessionIdValid() == true)
    	out.print("A : 세션 아이디가 유효합니다.");
    else
    	out.print("A : 세션 아이디가 유효하지 않습니다.");
    
    // 세션의 삭제된 모든 값들을 사라지도록 합니다.
    session.invalidate();
    out.print("<h3>세션값을 삭제한 후</h3>");
    out.print("Q : 과연 세션 아이디가 유효할까요?<br>");
    
    if(request.isRequestedSessionIdValid() == true)
    	out.print("A : 세션 아이디가 유효합니다.");
    else
    	out.print("A : 세션 아이디가 유효하지 않습니다.");    
  %>

</body>
</html>
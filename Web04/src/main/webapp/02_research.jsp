<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h2>설문 조사 결과</h2>
  <%
    request.setCharacterEncoding("utf-8");
  	String name = request.getParameter("name");
  	out.print("이름 : <b>" + name + "</b><br>");
  	
  	String gender = request.getParameter("gender");
  	out.print("성별 : ");
  	if(gender.equals("male")){
  		out.print("<b>남자</b><br>");
  	}else {
  		out.print("<b>여자</b><br>");
  	}
  	
  	String[] seasons = request.getParameterValues("season");
  	out.print("당신이 좋아하는 계절은 : ");
  	for(String season : seasons){
  		int n = Integer.parseInt(season);
  		switch(n){
  		case 1:
  			out.print("<b>봄</b> 입니다.");
  			break;
  		case 2:
  			out.print("<b>여름</b> 입니다.");
  			break;
  		case 3:
  			out.print("<b>가을</b> 입니다.");
  			break;
  		case 4:
  			out.print("<b>겨울</b> 입니다.");
  			break;  			
  		}
  	}
  			
  %>
  <br>
  <a href="javascript:history.go(-1)">이전</a>

</body>
</html>
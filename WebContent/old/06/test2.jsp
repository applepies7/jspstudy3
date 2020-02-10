<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06/ test2.jsp</title>
</head>
<body>

<% //p라는 파라미터 조회  
String p = request.getParameter("p");

if( p == null){
	throw new RuntimeException("파라미터가 널");
}

if(!p.contains("milkis")){
	 throw new IOException("밀키스 없음");

}
if(p.contains("p")){
	 throw new IllegalAccessException("밀키스 없음");

}
out.println("아오 고놈에 밀키스");

%>


</body>
</html>
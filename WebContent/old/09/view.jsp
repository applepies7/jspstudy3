<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>9/ view.jsp</title>
</head>
<body>
<%

Cookie[] cookies =request.getCookies();

%>

<h5> 쿠키정보</h5>
<ul>
<%
if (cookies != null){
	for(Cookie c : cookies){
		out.println("<li>");
		out.println(c.getName() + "=" + URLDecoder.decode(c.getValue(),"utf-8"));
	}
	
}
%>


</ul>

</body>
</html>
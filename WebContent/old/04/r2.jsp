<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>redirect</title>
</head>
<body>
집에가고싶어...
<%
System.out.println("r2.jsp call :  ip: " + request.getRemoteAddr());

 
	Enumeration<String> en = request.getHeaderNames();
	while (en.hasMoreElements()) {
		String key = en.nextElement();
		out.println("<li>" + key + "=" + request.getHeader(key));
	}
%>


</body>
</html>
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
아 피곤해....
<%
System.out.println("r1.jsp call : ip:" + request.getRemoteAddr());
response.sendRedirect("r2.jsp");

Enumeration<String> en = request.getHeaderNames();
while (en.hasMoreElements()) {
	String key = en.nextElement();
	System.out.println(key + "=" + request.getHeader(key));
}

%>
</body>
</html>
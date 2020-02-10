<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07/ result.jsp </title>
</head>
<%!
%>
<body>
<%
String id = request.getParameter("id");
String pw1 = request.getParameter("pw1");
String pw2 = request.getParameter("pw2");

if(pw1.equals(pw2)){
	out.println("<h1>로그인되었습니다.</h1>");
	session.setAttribute("SES_ID", id);
	} else {
	out.println("<h1>패스워드 확인하세요</h1>");

	out.println("<button type='button' onclick='history.back()'>뒤로가기</button>");
		
	}



%>

</body>
</html>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04 / header</title>
</head>
<body>
	<h3>클라이언트의 헤더정보</h3>
	<ul>
		<% 
		//user-agent 유저정보 ex)user-agent=Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36
		//referer 이전요청페이지 ex)referer=http://localhost:8080/study/index.jsp
			Enumeration<String> en = request.getHeaderNames();
			while (en.hasMoreElements()) {
				String key = en.nextElement();
				out.println("<li>" + key + "=" + request.getHeader(key));
			}
		%>





	</ul>
<hr>
<a href="r1.jsp">R1</a>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
Cookie cookie = new Cookie("love","");
cookie.setPath("/");
cookie.setDomain("milkis.com");
cookie.setMaxAge(0);
response.addCookie(cookie);
%>

<a href="view.jsp">쿠키 보러가기</a><br><br><br>
<a href="create.jsp">쿠키생성</a>

</body>
</html>
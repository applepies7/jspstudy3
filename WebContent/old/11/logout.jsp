<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11 / logOut.jsp</title>
</head>
<body>
<%
session.invalidate(); 

%>
<h3>로그아웃 되었습니다.</h3>
<a href="login.jsp">로그인</a>
<a href="<%=request.getContextPath()%>/index.jsp">Home</a>

</body>
</html>
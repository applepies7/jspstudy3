<%@page import="com.study.util.Love"%>
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
Love love =new Love(); 
%>

<hr>
<%=love.love2("말자",5) %>
<hr>
<%=love.love2("순자",3) %>
<hr>
<%=love.love2(10) %>
<hr>


</body>
</html>
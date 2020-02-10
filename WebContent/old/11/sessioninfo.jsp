<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.study.util.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11/ sessioninfio.jsp</title>
</head>
<body>

<% 
CookieBox box = new CookieBox(request);
%>

쿠키아이디 : <%=box.getValue("JSESSIONID") %> <br>
세션 아이디 : <%=session.getId() %><br>

<%
Date date = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
out.print("현재시간 : " + sdf.format(date) + "<BR>");
date.setTime(session.getCreationTime());
%>
생성시간 : <%=sdf.format(date) %><br>
<%
date.setTime(session.getLastAccessedTime()); 
%>
최근 접속 시간 : <%=sdf.format(date) %>

</body>
</html>
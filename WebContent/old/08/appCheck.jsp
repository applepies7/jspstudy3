<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08/ appCheck</title>
</head>
<body>
<%
 String db = (String)application.getAttribute("DB");
%>

DB: <%=db%> <Br>
DB(el) ${DB} <br>
<%  %>
</body>
</html>
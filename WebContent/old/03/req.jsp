<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03 / Request Object</title>
</head>
<body>
<h3> your informations</h3>

<ol>
<li>IP: <%=request.getRemoteAddr() %></li>
<li>method: <%=request.getMethod() %></li>
<li>URI : <%=request.getRequestURI() %></li>
<li>context path "<%=request.getContextPath() %></li>

</ol>


</body>
</html>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>7단 입네다.</title>
</head>
<body>
	<%
		int dan = 7;
	%>

	<h3><%=dan%>단
	</h3>
	<ul>

		<%
			for (int i = 1; i < 10; i++) {
				out.println("<li>" + dan + " * " + i + " = " + i * dan + "</li>");
			}
		%>

	</ul>

</body>
</html>
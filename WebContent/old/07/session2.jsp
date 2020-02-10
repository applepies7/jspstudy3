<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07/ session2.jsp</title>
</head>
<body>

<h4>Session love</h4>
<ul>
<% 
	List<String> r = (List)session.getAttribute("love");
	if(r != null)
		for(int i =0; i<r.size(); i++ ){
			out.print("<li>" + i + " = " +r.get(i));
		}

	%>
</ul>

<h4>Application love</h4>
<ul>
<% 
	List<String> k = (List)application.getAttribute("apps");
	if(k != null)
		for(String v : k ){
			out.print("<li>" + v);
		}

	%>
</ul>
</body>
</html>
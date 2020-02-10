<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07 / session1.jsp</title>
</head>
<body>

<%
	List<String> list = new ArrayList();
	list.add("말자");
	list.add("순자");
	list.add("놀자");
	list.add("추자");

	session.setAttribute("love", list);
	//해당 브라우저와 관련된 서버사이드 메모리에 저장되어 있음.
	application.setAttribute("apps", list);
	
%>
<a href="session2.jsp"> session2.jsp</a>

</body>
</html>
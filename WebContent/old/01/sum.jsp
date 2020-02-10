<%@page import="com.study.util.FileUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1+2+3+...+234는?</title>
</head>
<body>
<%int sum = 0; %>
<h3> 1 부터 234까지의 합은?</h3>
<% for(int i = 0; i < 235; i++){
	sum += i;
	}
out.println("결과는 :" +  sum);
	%>


<%=
FileUtils.fancySize(1024*1024)
%>

</body>
</html>
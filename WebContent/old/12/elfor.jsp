<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>12/ elfor.jsp
</title>
</head>
<body>

<c:forEach var="i" begin="1" end="6" step="2">
<h${i}> ${i*100} </h${i}>
</c:forEach>

<c:set var="dan" value="5"></c:set>
<h3>${dan}단</h3>
<ul>
<c:forEach var="i" begin="1" end="9">
<li>${dan} * ${i} = ${dan*i} 
</c:forEach>
</ul>


</body>
</html>
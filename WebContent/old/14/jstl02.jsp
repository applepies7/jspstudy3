<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<c:set var="num"  value="99" />

<c:if test="${num >90 }">
나이스 샷 ~~~ <br>
</c:if>
<c:if test="${num >80 and num < 90 }">
굳샷 ~~~ <br>
</c:if>
<c:if test="${num < 80 }">
샷 ~~~ <br>
</c:if>
<hr>

<c:choose>
<c:when test="${num >90 }">
나이스 샷 ~~~ <br>
</c:when>
<c:when test="${ num >80 }">
굳샷 ~~~ <br>
</c:when>
<c:otherwise>
그냥샷
</c:otherwise>
</c:choose>



</body>
</html>
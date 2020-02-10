<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>15/ jstl03.jsp</title>
</head>
<body>
<h3>이미지</h3>
<img alt="black tag" src="<%=request.getContextPath()%>/image/black.jpeg">
<img alt="black el" src="${pageContext.request.contextPath}/image/black.jpeg">
<img alt="black c:url" src='<c:url value="/image/black.jpeg"/>' >



<c:url value="/join/regist.jsp" var="join">
<c:param name="lang" value="ko"/>
<c:param name="age" value="27"/>
</c:url>

<a href="${join} }">회원가입 1</a>
<a href="<c:url value="/join/regist.jsp" var="join">
<c:param name="lang" value="ko"/>
<c:param name="age" value="27"/>
</c:url>
">회원가입 2</a>

<hr>

<c:set var="msg">
<h4>출석률 나쁜 아빠들</h4>
<ol>
<li>이재혁
<li>송주영
<li>김형준
</ol>
<script>
//alert("체포함");
</script>
</c:set>

${msg}<br>
c:out : html 문자를 변환 <-> &lt; <br>

<c:out value="${msg}"/>

<hr>
<c:out value="${msg}" escapeXml="false"/>
<c:set var="love" value="Milkis"/>
<pre>
jsp 2.2 / 2.3 버전업으로 function을 사용하지 않아도 됨.

\${fn:length(love)} : ${fn:length(love)}  
\${fn:contains(love,"Milkis")} : ${fn:contains(love,"Milkis")} 
\${fn:toUpperCase(love)} : ${fn:toUpperCase(love)}


\${love.contains("Milkis")} : ${love.contains("Milkis")} 
\${love.indexOf("M")} :  ${love.indexOf("M")}
</pre>

<c:set var="today" value="<%=new Date() %>" />
<c:set var="num" value="2450000" />
\${today} :  ${today}<br>
\${num}  :  ${num}<br>
default:  <fmt:formatDate value="${today }" dateStyle="default"/><br>
short  :  <fmt:formatDate value="${today }" dateStyle="short"/><br>
medium :  <fmt:formatDate value="${today }" dateStyle="medium"/><br>
long   :  <fmt:formatDate value="${today }" dateStyle="long"/><br>
full   :  <fmt:formatDate value="${today }" dateStyle="full"/><br>
yyyy/MM/dd   :  <fmt:formatDate value="${today }" pattern="yyyy/MM/dd"/><br>


fmt:formatNumber   :  <fmt:formatNumber value="${num }" /><br>
type="currency"   :  <fmt:formatNumber value="${num }" type="currency"/><br>
groupingUsed="true"   :  <fmt:formatNumber value="${num }" groupingUsed="true"/><br>
pattern="#,###.00"   :  <fmt:formatNumber value="${num }" pattern="#,###.00"/><br>




</body>
</html>
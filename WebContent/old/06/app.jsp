<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06/ app.jsp</title>
</head>
<body>
<ul> 
pageContext 개체
<li>다른 객체 구하기 (태그라이브러리 만들때 사용)
<li>속성 기능이 제공됨
</ul>
<%
HttpServletRequest req = (HttpServletRequest)pageContext.getRequest();
%>
ip : <%=req.getRemoteAddr() %><br>
uri : <%=req.getRequestURI() %><br>
app path : <%=req.getContextPath() %><br>
<hr>
servlet version : <%=application.getMajorVersion() %>. <%=application.getMinorVersion() %><br>


</body>
</html>
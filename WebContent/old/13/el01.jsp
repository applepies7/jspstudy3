<%@page import="com.study.login.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13/ el01.jsp</title>
</head>
<body>
<%

UserVO vo =  new UserVO("malja", "1004", "착한말자","USER");     
UserVO vo2 = new UserVO("milkis", "1004", "밀키스","MANAGER"); 
request.setAttribute("jh", vo);
session.setAttribute("jh", vo2);


%>
<!--찾는 순서 
pageContext -> request -> sesseion -> application  -->
jh : ${jh},${jh.userId} ${jh.userName} <br>


<!--scope는 session,application 사용    -->
requestScope.jh : ${requestScope.jh},${requestScope.jh.userId } ${requestScope.jh.userName } <br>
sessionScope.jh : ${sessionScope.jh},${sessionScope.jh.userId } ${sessionScope.jh.userName } <br>
sessionScope["jh"] : ${sessionScope["jh"]},${sessionScope["jh"].userId } ${sessionScope["jh"].userName } <br>

ip: <%=request.getRemoteAddr() %><br>
ip: <%=pageContext.getRequest().getRemoteAddr() %><br>
ip: ${pageContext.request.remoteAddr}<br>

twice1 :<img alt="" src="/study/image/twice.jpeg" width="200" ><br>
twice2 :<img alt="" src="<%=request.getContextPath()%>/image/twice.jpeg" width="200">
twice2 :<img alt="" src="${pageContext.request.contextPath}/image/twice.jpeg" width="200">


</body>
</html>
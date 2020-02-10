<%@page import="com.study.login.vo.UserVO"%>
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
<c:set var="msg">
<h4>지각하는 남자들</h4>
<ol>
<li>이재혁
<li>임규진
<li>김형준
<li>송주영
</ol>
</c:set>
${msg}

<c:set var="user" value="<%=new UserVO()%>" scope="page"></c:set>

<c:set target="${user}" property="userName" value="이재혁"/>
<c:set target="${user}" property="userId" value="leeJH"/>

${user.setUserRole("ADMIN") }

id :  ${user.userId} <br>
name :  ${user.userName } <br>
roll :  ${user.userRole } <br>

<c:remove var="user"/>
id :  ${user.userId} <br>
name :  ${user.userName } <br>
roll :  ${user.userRole } <br>

</body>
</html>
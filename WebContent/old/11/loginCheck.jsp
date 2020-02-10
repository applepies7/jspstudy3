<%@page import="java.net.URLEncoder"%>
<%@page import="com.study.util.UserList"%>
<%@page import="com.study.login.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>11/ loginCheck.jsp</title>
</head>
<body>

<%
String id = request.getParameter("userId");
String pw = request.getParameter("userPass");
String remember = request.getParameter("idRemember");

UserVO vo = UserList.getUser(id);

if(vo !=null ) {
	if(vo.getUserPass().equals(pw)){
		//성공
		session.setAttribute("USER_INFO", vo);
		
		//remember 조건문 
	/* 	Cookie cookie = new Cookie(,vo.getUserId().);
		response.addCookie(cookie); */
		
	%> <h3>로그인 성공하셨습니다.</h3>
	<a href="<%=request.getContextPath()%>/index.jsp">Home</a>	
	<%
	}else{
	%>
	<h3>아이디/비밀번호을 확인해주세요</h3>
	<a href="login.jsp">로그인</a>
	<a href="#" onclick="history.back()">뒤로가기</a>
	<a href="xxx.jsp">회원가입</a>
	<a href="<%=request.getContextPath()%>/index.jsp">Home</a>
	<%
	}
}else{
%>
	<h3>해당회원이 존재하지 않습니다.</h3>
	<a href="login.jsp">로그인</a>
	<a href="xxx.jsp">회원가입</a>
	<a href="<%=request.getContextPath()%>/index.jsp">Home</a>
<% 
}
%>


</body>
</html>
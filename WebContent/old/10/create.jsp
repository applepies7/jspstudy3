<%@page import="com.study.util.CookieBox"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 10/ create.jsp</title>
</head>
<body>

<%--
	Cookie cookie = new Cookie("love" , "");
	// 값은 URLEncoder 로 인코딩 해서 
	cookie.setValue( URLEncoder.encode("밀키스 love","utf-8") );	
	// 패스를 설정 "/" or "/study" 
	cookie.setPath("/"); 
	// 도엠인 설정 (단, 타 사이트는 안됩니다.)
	cookie.setDomain("milkis.com"); 
	// 쿠키 유효시간 
	cookie.setMaxAge(60 * 60 * 24 * 7); // 1주일  
	
	// 쿠키를 클라이언트로 보내기
	response.addCookie(cookie);
--%>
<%
	Cookie c = CookieBox.createCookie("hate", "이재혁, 김형준 나쁜 아빠...");
	response.addCookie(c);
%>

<a href="view.jsp">쿠키 보러 가기</a> <br>
</body>
</html>
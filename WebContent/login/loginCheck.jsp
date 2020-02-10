<%@page import="com.study.member.vo.MemberVO"%>
<%@page import="com.study.member.dao.MemberDaoOracle"%>
<%@page import="com.study.member.dao.IMemberDao"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.study.util.UserList"%>
<%@page import="com.study.login.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
<head>
<%@include file="/WEB-INF/common_header.jsp"%>
<meta charset="UTF-8">
<title>11/ loginCheck.jsp</title>
</head>
<body>
	<%@include file="/WEB-INF/top_menu.jsp"%>
	<div class="container">

	<%
		String id = request.getParameter("userId");
		String pw = request.getParameter("userPass");
		String remember = request.getParameter("idRemember");

		IMemberDao memberDao = new MemberDaoOracle();
		MemberVO mem = memberDao.getMember(id);

		if (mem != null) {
			if (mem.getMemPass().equals(pw)) {
				//성공 세션저장
				UserVO vo =  new UserVO();
				vo.setUserId(mem.getMemId());
				vo.setUserPass(mem.getMemPass());
				vo.setUserName(mem.getMemName());
				vo.setUserRole("MEMBER");

				
				System.out.println(vo);
				session.setAttribute("USER_INFO", vo);
				response.sendRedirect(request.getContextPath() + "/index.jsp");
				//remember 조건문 
				// 	Cookie cookie = new Cookie(,vo.getUserId().);
				return;

			} else {
	%>

		<div class="page-header">
			<h3>아이디/비밀번호을 확인해주세요</h3>
		</div>
		<div class="row">
			<a href="login.jsp">로그인</a> <a href="#" onclick="history.back()">뒤로가기</a>
			<a href="xxx.jsp">회원가입</a> <a
				href="<%=request.getContextPath()%>/index.jsp">Home</a>
		</div>
		<%
			}
		%>
		<div class="page-header">
			<h3>그런사람 없는데~</h3>
		</div>
		<div class="row">
			<a href="login.jsp">로그인</a> <a href="#" onclick="history.back()">뒤로가기</a>
			<a href="xxx.jsp">회원가입</a> <a
				href="<%=request.getContextPath()%>/index.jsp">Home</a>
		</div>

	</div>
	<%
		}
	%>

</body>
</html>
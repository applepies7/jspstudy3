<%@page import="com.study.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="com.study.member.dao.MemberDaoOracle"%>
<%@page import="com.study.member.dao.IMemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<%@include file="/WEB-INF/common_header.jsp"%>
<title>회원목록</title>
</head>

<body>
	<%@include file="/WEB-INF/top_menu.jsp"%>

	<div class="container">
		<div class="row">
			<h3>회원 목록</h3>
		</div>
		<div class="row">
			<a href="memberForm.jsp" class="btn btn-primary btn-xs"> <span
				class="glyphicon glyphicon-plus" aria-hidden="true"></span> 회원가입
			</a>
		</div>
		<%
			IMemberDao memberDao = new MemberDaoOracle();
			List<MemberVO> list = memberDao.getMemberList();
			request.setAttribute("list", list);
		%>
		<table class="table table-striped table-bordered">
			<colgroup>
				<col width="5%" />
				<col width="10%" />
				<col width="15%" />
				<col />
				<col width="20%" />
				<col width="10%" />
			</colgroup>
			<tr>
				<th>No.</th>
				<th>ID</th>
				<th>회원명</th>
				<th>주소</th>
				<th>직업</th>
				<th>마일리지</th>
			</tr>

			<c:forEach items="${list}" var="vo" varStatus="st">
				<tr>

					<td>${st.count}</td>
					<td>${vo.memId}</td>
					<td>${vo.memName}</td>
					<td>${vo.memAdd1}${vo.memAdd2 }</td>
					<td>${vo.memJobnm }</td>
					<td>${vo.memMileage }</td>
				</tr>
			</c:forEach>



		</table>
	</div>
</body>
</html>






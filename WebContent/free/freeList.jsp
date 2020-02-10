<%@page import="com.study.free.vo.FreeBoardVO"%>
<%@page import="com.study.free.dao.FreeBoardDaoOracle"%>
<%@page import="com.study.free.dao.IFreeBoardDao"%>
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
<title>글 목록</title>
</head>

<body>
	<%@include file="/WEB-INF/top_menu.jsp"%>

	<div class="container">
		<div class="page=header">
			<h3>글 목록</h3>
		</div>
		<div class="pull-right" style="margin-bottom: 5px">
			<a href="freeForm.jsp" class="btn btn-primary btn-xs " > 글쓰기
			</a> 
		</div>
			<br>
		<%
			request.setCharacterEncoding("UTF-8");
		IFreeBoardDao boardDao = new FreeBoardDaoOracle();	
		List<FreeBoardVO> list = boardDao.getBoardList();
			request.setAttribute("list", list);
			
			//dup_key
			//DUP_SUBMIT_PREVENT
			
		%>
		<table class="table table-striped table-bordered table-hover">
			<colgroup>
				<col width="5%" />
				<col width="10%" />
				<col />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
			</colgroup>
			<tr >
				<th class="text-center">글번호</th>
				<th class="text-center">분류</th>
				<th class="text-center">제목</th>
				<th class="text-center">작성자</th>
				<th class="text-center">등록일</th>
				<th class="text-center">조회수</th>
			</tr>

			<c:forEach items="${list}" var="vo" >
				<tr class="text-center">

					<td>${vo.boNum}</td>
					<td>${vo.boCatNm }</td>
					<td class="text-left"><a href ="freeView.jsp?boNum=${vo.boNum }">${vo.boTitle}</a> </td>
					<td>${vo.boWriter}</td>
					<td>${vo.boRegDate}</td>
					<td>${vo.boHit }</td>
				</tr>
			</c:forEach>



		</table>
	</div>
</body>
</html>






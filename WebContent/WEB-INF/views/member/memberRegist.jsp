<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@include file="/WEB-INF/common_header.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/top_menu.jsp"%>
	<div class="container">
		
		<c:catch var="ex">
			
			<c:if test="${res > 0}">
				<div>회원가입 성공</div>
				<div><a href="memberList.wow" class="btn btn-sm btn-default">회원목록</a></div>
			</c:if>
			<c:if test="${res < 1}">
				<div>회원가입 실패</div>
				<div><a href="memberList.wow" class="btn btn-sm btn-default">회원목록</a></div>
			</c:if>
	</c:catch>
	<c:if test ="${not empty ex}">
	<div>
	회원가입중오류발생.
	${ex.message }
	</div> 
				<div><a href="memberList.wow" class="btn btn-sm btn-default">회원목록</a></div>
				<div><a href="#" class="btn btn-sm btn-info" onclick="history.back()">뒤로가기</a>/a></div>
			</c:if>
	</div>
	</body>
</html>
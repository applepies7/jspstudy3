
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@include file="/WEB-INF/common_header.jsp"%>
<%
	request.setCharacterEncoding("Utf-8");
%>
<meta charset="UTF-8">
<title>freeRegist</title>
</head>
<body>
	<%@include file="/WEB-INF/top_menu.jsp"%>
	<div class="container">
		<jsp:useBean id="free" class="com.study.free.vo.FreeBoardVO" />
		<jsp:setProperty property="*" name="free" />

		<c:catch var="ex">
			<%
				String pDupKey = request.getParameter("dupKey");
					String sDupKey = (String) session.getAttribute("DUP_SUBMIT_PREVENT");

					if (pDupKey == null || pDupKey.isEmpty()) {
						response.sendRedirect(request.getContextPath() + "/");
						return;
					} else {
						if (sDupKey == null || !sDupKey.equals(pDupKey)) {
			%>
			<div>다시써!</div>
			<div>
				<a href="freeList.jsp" class="btn btn-sm btn-default">글목록으로</a>
			</div>
			<div>
				<a href="freeForm.jsp" class="btn btn-sm btn-info">다시쓰러 가기~</a>
			</div>
			<%
				return;
						}
					}
			%>
			<%
				IFreeBoardDao freeDao = new FreeBoardDaoOracle();
					free.setBoIp(request.getRemoteAddr());
					int res = freeDao.insertBoard(free);
					request.setAttribute("res", res);
			%>






			<c:if test="${res > 0}">
				<div>등록 성공</div>
				<%
					session.removeAttribute("DUP_SUBMIT_PREVENT");
				%>
				<c:redirect url="freeList.jsp">
					<c:param name="msg" value="success" />
				</c:redirect>
			</c:if>
			<c:if test="${res < 1}">
				<div>등록 실패</div>
				<div>
					<a href="freeList.jsp" class="btn btn-sm btn-default">회원목록</a>
				</div>
			</c:if>
		</c:catch>
		<c:if test="${not empty ex}">
			<div>등록중오류발생. ${ex.message }</div>
			<div>
				<a href="freeList.jsp" class="btn btn-sm btn-default">회원목록</a>
			</div>
			<div>
				<a href="#" class="btn btn-sm btn-info" onclick="history.back()">뒤로가기</a>
			</div>
		</c:if>
	</div>
</body>
</html>
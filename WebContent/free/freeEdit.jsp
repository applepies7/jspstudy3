<%@page import="java.util.UUID"%>
<%@page import="com.study.common.vo.CodeVO"%>
<%@page import="java.util.List"%>
<%@page import="com.study.common.dao.ICommonCodeDao"%>
<%@page import="com.study.common.dao.CommonCodeDaoOracle"%>
<%@page import="com.study.free.vo.FreeBoardVO"%>
<%@page import="com.study.free.dao.IFreeBoardDao"%>
<%@page import="com.study.free.dao.FreeBoardDaoOracle"%>
<%@page import="com.study.member.vo.MemberVO"%>
<%@page import="com.study.member.dao.MemberDaoOracle"%>
<%@page import="com.study.member.dao.IMemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%
	request.setCharacterEncoding("Utf-8");
%>
<%@include file="/WEB-INF/common_header.jsp"%>
<title>글 등록</title>
</head>
<body>
	<%
	//등록제한 유일키
		String dupKey = UUID.randomUUID().toString();
		session.setAttribute("DUP_SUBMIT_PREVENT",dupKey);

	
	
	
		ICommonCodeDao codeDao = new CommonCodeDaoOracle();
		List<CodeVO> a = codeDao.getCodeListByParent("BC00");
		request.setAttribute("catList", a);

		String s = request.getParameter("boNum");
		int num = Integer.parseInt(s);
		IFreeBoardDao freeDao = new FreeBoardDaoOracle();
		FreeBoardVO view = freeDao.getBoard(num);
		request.setAttribute("view", view);
		System.out.print(view);
	%>
	<%@include file="/WEB-INF/top_menu.jsp"%>
	<div class="container">
		<div class="page-header">
			<h3>글 편집</h3>
		</div>
		<div class="row">
			<form action="freeModify.jsp" id="id_form" method="post">
					<input type="hidden" name="boNum" value="${view.boNum}">
					<input type="hidden" name="dupKey" value="<%=dupKey%>">
				<table class="table table-striped table-bordered ">
					<colgroup>
						<col width="20%" />
						<col />
					</colgroup>
					<tr>
						<th>글번호</th>
						<td>${view.boNum}</td>
						
					</tr>
					<tr>
						<th>조회수</th><td>${view.boHit}</td>
					
					</tr>
					
					<tr>
						<th>제목</th>
						<td><input class="form-control" type="text" name="boTitle"
							value="${view.boTitle}"></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><input class="form-control" type="text" name="boWriter"
							value="${view.boWriter}"></td>
					</tr>
					<tr>
						<th>작성일</th>
						<td>${view.boRegDate}</td>
					</tr>

					<tr>
						<th>비밀번호</th>
						<td><input class="form-control" type="password" name="boPass"
							value="${view.boPass}"></td>
					</tr>
					<tr>
						<th>분류</th>
						<td><select class="form-control" name="boCategory">
								<option value="">-- 선택하세요--</option>
								<c:forEach items="${catList}" var="vo">
									<option value="${vo.commCd}" ${vo.commCd == view.boCategory ? 'selected="selected"' : ""}>${vo.commNm} ${vo.commCd}</option>
								</c:forEach>
						</select></td>
					</tr>
					<tr>
						<th>IP</th>
						<td><%=request.getRemoteAddr()%></td>

					</tr>
					<tr>
						<th>내용</th>
						<td><textarea class="form-control" rows="3" name="boContent">${view.boContent }</textarea>
						</td>
					</tr>
					
					<tr>
					
						<td colspan="2">
							<div class="pull-left">
								<a href="freeList.jsp" class="btn btn-sm btn-default">목록으로</a>
							</div>
							<div class="pull-right">
								<button type="submit" class="btn btn-sm btn-primary">저장하기</button>
								<button type="submit" id="btn-delete" class="btn btn-sm btn-success" onclick="f_form()" >삭제</button>
							</div>
						</td>
					</tr>
				</table>
			</form>
		</div>

	</div>
<script>
	function f_form(){
	    document.getElementById("id_form").action = "freeDelete.jsp";
	    document.getElementById("id_form").submit();
}
</script>	
</body>
</html>



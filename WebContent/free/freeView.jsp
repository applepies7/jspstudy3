<%@page import="java.util.regex.Pattern"%>
<%@page import="com.study.util.CookieBox"%>
<%@page import="com.study.free.vo.FreeBoardVO"%>
<%@page import="com.study.free.dao.FreeBoardDaoOracle"%>
<%@page import="com.study.free.dao.IFreeBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@include file="/WEB-INF/common_header.jsp"%>
<title>회원가입</title>
</head>
<body>
	<%@include file="/WEB-INF/top_menu.jsp"%>
	<%
	String s = request.getParameter("boNum");
	int num   = Integer.parseInt(s);
	IFreeBoardDao freeDao = new FreeBoardDaoOracle();
	FreeBoardVO view = freeDao.getBoard(num);
	if(view != null){
	//글을 읽지 않았으면 조회수 증가
	CookieBox box = new CookieBox(request);
	String readBoard = box.getValue("free");
	if (readBoard == null) readBoard = "";
	String pat = "\\b"+ num +"\\b";
	if(!Pattern.compile(pat).matcher(readBoard).find()){
	freeDao.increaseHit(view.getBoNum());
	Cookie cookie = CookieBox.createCookie("free", readBoard + num+"|");
	response.addCookie(cookie);
			}
	}
	request.setAttribute("view", view);
	System.out.print(view);
	// memberView.jsp 
	// ${mem.memId}<sdsdf?>
	// ${mem.memId}
	// Find :  <input.+?name="(\w+)".+?>
	// Repl : \${mem.$1}
%>

	<div class="container">
		<h3>글 보기</h3>

		<table class="table table-bordered">
			<colgroup>
				<col width="10%" />
				<col width="30%" />

			</colgroup>
			<tr>
				<th>글번호</th>
				<td>${view.boNum}</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${view.boTitle}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${view.boWriter}</td>
			</tr>
			<tr>
				<th>분류</th>
				<td>${view.boCatNm}</td>
			</tr>
			<tr>
				<th>IP</th>
				<td>${view.boIp}</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${view.boHit}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>${view.boContent}</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td>${view.boRegDate}</td>
			</tr>
			<tr>
				<th>수정일</th>
				<td>${view.boModDate}</td>
			</tr>
			<tr>
				<td colspan="4">
					<div class="pull-left">

						<a href="freeList.jsp" class="btn btn-sm btn-default">글 목록</a>
					</div>
					<div class="pull-right">
						<a href="freeEdit.jsp?boNum=${view.boNum}"
							class="btn btn-sm btn-default">수정하기 </a>
					</div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>



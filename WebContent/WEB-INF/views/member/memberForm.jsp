<%@page import="com.study.common.dao.CommonCodeDaoOracle"%>
<%@page import="com.study.common.vo.CodeVO"%>
<%@page import="java.util.List"%>
<%@page import="com.study.common.dao.ICommonCodeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<%@include file="/WEB-INF/common_header.jsp" %>
  	<title>회원가입</title>
  </head>
<body>
<%

ICommonCodeDao codeDao = new CommonCodeDaoOracle();
List<CodeVO> a  = codeDao.getCodeListByParent("JB00");
List<CodeVO> b  = codeDao.getCodeListByParent("HB00");

request.setAttribute("jobs", a);
request.setAttribute("likes", b);
System.out.println(a);
System.out.println(b);

%>

<div class="container">
<h3>회원 가입</h3>
<form action="memberRegist.jsp" method="post">
<table class="table table-bordered">
	<colgroup>
		<col width="15%" />
		<col width="35%" />
		<col width="15%" />
		<col />
	</colgroup>
	<tr>
		<th>ID</th>
		<td><input type="text" name="memId" value="" required="required" ></td>
		<th>회원명</th>
		<td><input type="text" name="memName" value="" required="required" ></td>
	</tr>
	<tr>
		<th>패스워드</th>
		<td colspan="3"><input type="password" name="memPass" value="" required="required" ></td>
	</tr>
	<tr>
		<th>주민번호</th>
		<td colspan="3">
			<input type="text" name="memRegno1" value="" placeholder="주민번호 앞 6자리"  >
			-
			<input type="password" name="memRegno2" value="" placeholder="주민번호 뒤 7자리"  >
		</td>
	</tr>
	<tr>
		<th>생일</th>
		<td colspan="3"><input type="date" name="memBir" value="" placeholder="생일입력" required="required" ></td>
	</tr>
	<tr>
		<th>우편번호</th>
		<td colspan="3"><input type="text" name="memZip" value="" placeholder="우편번호입력"></td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input type="text" name="memAdd1" value=""  placeholder="기본주소 입력"> <br> 
			<input type="text" name="memAdd2" value="" placeholder="상세주소 입력">
		</td>
	</tr>
	<tr>
		<th>핸드폰</th>
		<td><input type="text" name="memHp" value=""  required="required" ></td>
		<th>메일</th>
		<td><input type="email" name="memMail" value=""></td>
	</tr>	
	<tr>
		<th>직업</th>
		<td>
			<select name="memJob">
				<option value="">직업을 선택하세요</option>
	<c:forEach items="${jobs}" var="jb" varStatus="st">
			<option value="${jb.commCd}">${jb.commNm}</option>
		</c:forEach>	
	 		</select>

		</td>
		<th>취미</th>
		<td>
			<select name="memLike">
				<option value="" >취미를 선택하세요</option>
		<c:forEach items="${likes}" var="hb" >
			<option value="${hb.commCd}">${hb.commNm}</option>
		</c:forEach>	
	
			</select>
		</td>
	</tr>	
	<tr>
		<td colspan="4">
			<a href="memberList.jsp" class="btn btn-sm btn-default">회원 목록</a>
			<button type="submit"    class="btn btn-sm btn-success">가입</button>
		</td>
	</tr>	
</table>
</form>
</div>
</body>
</html>



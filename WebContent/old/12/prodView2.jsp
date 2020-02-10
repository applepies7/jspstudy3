<%@page import="com.study.util.ProductList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세보기</title>

<style>
.btn-basic-area { padding-top: 10px; border-top: 1px dashed;  text-align: center; }
.btn-basic-area span {padding: 10px 30px 10px; min-width: 100px;}
</style>

</head>
<%
String id =  request.getParameter("prodId");
request.setAttribute("prod", ProductList.getProduct("CPU001"));
%>

<body>
<h3>상품 상세보기 ${param.prodid}</h3>
<table class="prod-list">
	<colgroup>
		<col style="width: 25%;">
		<col />
	</colgroup>
	<tbody class="prod-detail">
	
		<tr>
			<td>제품명</td>			
			<td>${prod.prodName}</td>
		</tr>	
		<tr>
			<td>이미지</td>			
			<td><img alt="" src="/study${prod.prodImg}"></td>
		</tr>	
		<tr>
			<td>가격</td>			
			<td>${prod.prodPrice}</td>
		</tr>
		<tr>
			<td>등록일</td>			
			<td>${prod.prodRegDate }</td>
		</tr>
		<tr>
			<td>상세설명</td>			
			<td>${prod.prodDetail}</td>
		</tr>
	</tbody>

</table>

<div class="btn-basic-area" >
	<span><a href="/study/index.jsp" >Home</a> </span>
	<span><a href="prodList.jsp" >상품목록</a> </span>
</div>


</body>
</html>

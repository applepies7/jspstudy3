<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.study.prod.vo.ProdVO"%>
<%@page import="com.study.util.ProductList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.prod-list tbody td {border: 1px dashed;}
.prod-list tbody ul {padding-left: 20px;}
.prod-list tbody ul li {list-style: none; line-height: 1.4em;}

.prod-title a ,
.prod-title a:active,
.prod-title a:focus   {text-overflow:ellipsis; text-decoration: none; }

.prod-image {text-align: center;}
.prod-image img {
	 height: 150px; 
}

</style>
</head>
<body>

<h3>상품목록</h3>
<table class="prod-list">
	<colgroup>
		<col style="width: 33%;">
		<col style="width: 33%;">
		<col />
	</colgroup>
	<tbody>

<c:set var="list" value="<%=ProductList.getProductList()%>"/>
<c:forEach var="vo" items="${list}" varStatus="st" >
<c:if test="${st.index % 3 == 0 }">
<tr>
</c:if>
			<td>${st.index},${st.count}
				<ul>
					<li class="prod-image">
					<a href="prodView.jsp?prodId=${vo.prodId}"><img alt="" src="/study${vo.prodImg}"></a>
					<li class="prod-title">
					<a href="prodView.jsp?prodId=${vo.getProdId()}">${vo.prodName}</a>
					<li class="prod-price">
					${vo.prodPrice}
					<li class="prod-reg-date">
					${vo.prodRegDate}
				</ul>
			</td>
<c:if test="${st.index % 3 == 2 }">
</tr>
</c:if>
</c:forEach>

</tbody>

</table>

</body>
</html>

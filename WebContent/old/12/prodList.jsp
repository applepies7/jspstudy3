<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.study.prod.vo.ProdVO"%>
<%@page import="com.study.util.ProductList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


<%
List<ProdVO> list = ProductList.getProductList();

for (int i = 0; i<list.size(); i++){
	ProdVO prod = list.get(i);
	//if
	
}
	%>
		<tr>

			<td>
				<ul>
					<li class="prod-image">
					<a href="prodView.jsp?prodId=CPU001"><img alt="" src="/study/image/prod/CPU001.jpg"></a>
					<li class="prod-title">
					<a href="prodView.jsp?prodId=CPU001">AMD 라이젠 5 3500 (마티스)</a>
					<li class="prod-price">
					140,200원
					<li class="prod-reg-date">
					등록월 2019.11
				</ul>
			</td>
			<td>
				<ul>
					<li class="prod-image"><a href="prodView.jsp?prodId=CPU002"><img alt="" src="/study/image/prod/CPU002.jpg"></a>
					<li class="prod-title"><a href="prodView.jsp?prodId=CPU002">인텔 코어i7-9세대 9700K</a>
					<li class="prod-price">420,000원
					<li class="prod-reg-date">등록월 2018.10
				</ul>
			</td>
			<td>
				<ul>
					<li class="prod-image"><a href="prodView.jsp?prodId=CPU003"><img alt="" src="/study/image/prod/CPU003.jpg"></a>
					<li class="prod-title"><a href="prodView.jsp?prodId=CPU003">인텔 코어i5-9세대 9600KF </a>
					<li class="prod-price">203,000원
					<li class="prod-reg-date">등록월 2019.03
				</ul>
			</td>
		</tr>	
		<tr>
			<td>
				<ul>
					<li class="prod-image"><a href="prodView.jsp?prodId=MEM001"><img alt="" src="/study/image/prod/MEM001.jpg"></a>
					<li class="prod-title"><a href="prodView.jsp?prodId=MEM001">삼성전자 DDR4 8G PC4-21300</a>
					<li class="prod-price">40,000원
					<li class="prod-reg-date">등록월 2018.03
				</ul>
			</td>
			<td>
				<ul>
					<li class="prod-image"><a href="prodView.jsp?prodId=MEM002"><img alt="" src="/study/image/prod/MEM002.jpg"></a>
					<li class="prod-title"><a href="prodView.jsp?prodId=MEM002">GeIL DDR4 8G PC4-21300 CL19 PRISTINE</a>
					<li class="prod-price">34,500원
					<li class="prod-reg-date">등록월 2018.05
				</ul>
			</td>
			<td>
				<ul>
					<li class="prod-image"><a href="prodView.jsp?prodId=MEM003"><img alt="" src="/study/image/prod/MEM003.jpg"></a>
					<li class="prod-title"><a href="prodView.jsp?prodId=MEM003">ESSENCORE KLEVV DDR4 8G PC4-21300 CL19</a>
					<li class="prod-price">35,000원
					<li class="prod-reg-date">등록월 2019.08
				</ul>
			</td>
		</tr>	
	
	</tbody>

</table>

</body>
</html>

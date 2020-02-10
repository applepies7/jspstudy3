<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>09/ result.jsp</title>
</head>
<body>
<h3>입력정보 확인</h3>


<ul>
<li>id:  <%=request.getParameter("id") %></li>
<li>pw:  <%=request.getParameter("pw") %></li>
<li>gender:  <%=request.getParameter("gender") %></li>
<li>취미:  <%=request.getParameter("group") %></li>


</ul>
    
    

<h3>걸그룹 정보</h3>
<img alt="" width="300px" src="<%=request.getContextPath()%>/image/girls.jpeg"> 
<ul>
<li>19년 총 수입  : <%=request.getParameter("amt") %>
<li>멤버정보
<ol>
<%
List<String> list = (List)request.getAttribute("members");
for(String mem: list){
	out.print("<li>" + mem);
}
%>
</ol>
</ul>


</body>
</html>
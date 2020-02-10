<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05/base.jesp</title>
</head>
<body>

<%
String love = "jian";
%>

<!--  //html주석 <%=love %> -->
<h3>db사용전까지 jsp재미 없어요</h3>
<%=love %>
hey call <% hey(); %>
<%--
jsp주석은 서블릿으로 변환될때 제외됨
ㅁㄴ암ㄴ이ㅓㅣ만러ㅣㅏ먼이ㅏㅓ미나어ㅣ마ㅓㄴ이ㅏ먼ㄹㅇ
<%=love%>
--%>

</body>
</html>
<%!
String hate = "고용한";

public void hey(){
	System.out.println(hate);
}

%>
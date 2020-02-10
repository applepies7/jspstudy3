<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%//넘어오는 파라미터(post)는 기본적으로 iso-8859-1 -> utf-8로 변경
request.setCharacterEncoding("utf-8");
//get 방식은 was맡다 설정 필요함.
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03/ result.jsp</title>
</head>
<body>

<h3>입력정보 확인</h3>

<ul>
<li> ID: <%= request.getParameter("id") %>
<li> PASSWORD: <%= request.getParameter("pw1") %>
<li> GENDER: <%= request.getParameter("gender") %>
<li> HOBBY: <%= request.getParameter("hobby") %>
<li> BIRTH: <%= request.getParameter("birth") %>
<li> MEMO: <%= request.getParameter("memo") %>


</ul>

</body>
</html>
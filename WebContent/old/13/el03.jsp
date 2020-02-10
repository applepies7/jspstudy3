<%@page import="com.study.login.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13/ el02.jsp</title>
</head>
<body>
<%

UserVO vo =  new UserVO("malja", "1004", "이재혁","USER");     

request.setAttribute("jh", vo);
String name = "";
request.setAttribute("love", name);


%>

jh: ${jh.userName} ${jh}<br>
jy: ${jy.userName} <br>

\${ 7 % 3 } = ${ 7 % 3 }<br>
\${ 7 == 3 } = ${ 7 eq 3 }<br>
\${ 7 == 3 } = ${ 7 == 3 }<br>
<%-- \${"ㅋㅋㅋ"+ 100 } = ${"ㅋㅋㅋ"+ 100 } --%>
 
\${love == null } = ${love == null }<br>

\${empty love } = ${empty love}<br>

\${empty jh } = ${empty jh}<br>

<!-- jh의 username  이재혁 나쁜 아저씨 -->
 
 ${jh.userName.compareTo("이재혁") eq 0 ? "나쁜 아저씨" :"좋은 아저씨"}



 
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서버 예외 발생</title>
</head>
<body>
<h3>해당 서비스 접속이 원활하지 않습니다.</h3>



이용에 불편을 드린 점 진심으로 사과 드리며,
편리하게 서비스를 이용하실 수 있도록 최선의 노력을 다하고 있습니다.
고객 여러분의 양해 부탁드립니다
관련해 고객센터로 문의해 주시면 친절하게 안내해 드리겠습니다.<br>

<p>
에러타입 : <%=exception.getClass().getName() %> <br>
에러메시지 : <b><%= exception.getMessage() %></b>
</body>
</html>
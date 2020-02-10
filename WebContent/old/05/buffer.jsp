<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page buffer = "8kb"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05/ buffer.jsp</title>
</head>
<body>

<h3>버퍼 사용시 이점.</h3>

<ul>
<li>데이터 전송 성능 향상
<li>실행도중 버퍼를 비우고 새로운 내용으로 전송 가능
<li>최초에 버퍼를 내보내기전에 헤더 변경 가능.
<li>포워드 등의 기능 실행 가능
</ul>


<h3>현재 버퍼 정보</h3>
<ul>
<li>버퍼 사이즈 : <%=out.getBufferSize() %>
<li>남은 버퍼 사이즈 : <%=out.getRemaining() %>
<li>자동 플러싱 여부 : <%=out.isAutoFlush() %>
</ul>
<h3> for lover</h3>
<% 
//시간이 소요되는 기능(ex 반복문 이나 메서드 등의 기능)을 호출하기전에 버퍼를 플러쉬로 내보내고 실행

out.flush();
delay();
for(int i=0; i<10000;i++){
	if(i % 100 == 0){
		out.clearBuffer();
	}
	out.println(i + " : 지안이 사랑해~ 지안이 최고야~ 지안이 멋쟁이 <br>");
	
}
%>

<%!
public void delay() throws Exception {
	//해당 업무가 시간이 소요
	Thread.sleep(3000);
}

%>




</body>
</html>
<%@page import="com.ibm.icu.util.ChineseCalendar"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=ISO-8859-1" %>    
<%@ page trimDirectiveWhitespaces="true" %>       
<%-- 
	<%@ 디렉티브 : 페이지 설정 
	      page : 현재 문서에 대한 설정 
	      include, taglib
	<% ~~ %> : 스크립트릿 : 자바코드 영역
	<%= ~ %> : 표현식 : <% out.write(~); %> 의 약식
	<%! ~ %> : 선언부 : 맴버변수, 메서드 생성  
	<%--     : jsp 주석  		
--%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Calendar cal = Calendar.getInstance();
	out.println(cal.get(Calendar.YEAR)) ;
	out.println("년 ") ;
	out.println(cal.get(Calendar.MONTH)  + 1) ;
	out.println("월 ") ;
	out.println(cal.get(Calendar.DATE)) ;
	out.println("일 ") ;
%>
<hr>
<%=cal.get(Calendar.YEAR) %>년 
<%=cal.get(Calendar.MONTH) + 1 %>월 
<%=cal.get(Calendar.DATE)%>일
<hr>
오늘의 음력날짜를 출력
<%
ChineseCalendar cal2 = new ChineseCalendar();
%> 
<br>
음력 : <%=cal2.get(ChineseCalendar.EXTENDED_YEAR) %>년 
<%=cal2.get(ChineseCalendar.MONTH) + 1 %>월 
<%=cal2.get(ChineseCalendar.DAY_OF_MONTH)%>일
 윤달여부 : <%=cal2.get(ChineseCalendar.IS_LEAP_MONTH)%>


</body>
</html>




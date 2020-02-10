<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>17/ memberRegist.jsp</title>
</head>
<body>
<%
String id = request.getParameter("memId");
String pw = request.getParameter("memPass");
String name = request.getParameter("memName");
String like = request.getParameter("memLike");
String mail = request.getParameter("memMail");

String query = "insert into member (mem_id, mem_pass, mem_name, mem_mail, mem_like) values ('" + id + "', '" + pw + "', '" + name + "', '" + mail+ "', '" + like + "')" ;

out.println(query);

Connection conn = null; //커넥션 티켓
Statement stmt = null; // SQL선언문
//ResultSet rs = null; //질의 결과

conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.20.37:1521:xe", "java", "oracle");
stmt = conn.createStatement();
int cnt = stmt.executeUpdate(query);
out.println("<br>처리 건수 = " + cnt);


//			if ( rs != null ) try{rs.close();}catch(Exception e){}
			if ( stmt != null ) try{stmt.close();}catch(Exception e){}
			if ( conn != null ) try{conn.close();}catch(Exception e){}
%>
</body>
</html>
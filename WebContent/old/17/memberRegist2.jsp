<%@page import="java.sql.PreparedStatement"%>
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
<title>17/ memberRegist2.jsp</title>
</head>
<body>
<%
String id = request.getParameter("memId");
String pw = request.getParameter("memPass");
String name = request.getParameter("memName");
String mail = request.getParameter("memEmail");
String like = request.getParameter("memLike");

String query = "insert into member (mem_id, mem_pass, mem_name, mem_mail, mem_like) values (?,?,?,?,?)" ;


Connection conn = null; //커넥션 티켓
PreparedStatement pstmt = null; // SQL선언문
//ResultSet rs = null; //질의 결과

conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.20.37:1521:xe", "java", "oracle");
pstmt = conn.prepareStatement(query);

pstmt.setString(1, id);
pstmt.setString(2, pw);
pstmt.setString(3, name);
pstmt.setString(4, mail);
pstmt.setString(5, like);

int cnt = pstmt.executeUpdate();
System.out.println(query);
out.println("<br>처리 건수 = " + cnt);


//			if ( rs != null ) try{rs.close();}catch(Exception e){}
			if ( pstmt != null ) try{pstmt.close();}catch(Exception e){}
			if ( conn != null ) try{conn.close();}catch(Exception e){}
%>
</body>
</html>
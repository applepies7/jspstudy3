<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
Connection conn = null; //커넥션 티켓
Statement stmt = null; // SQL선언문
ResultSet rs = null; //질의 결과
// 1. 드라이버 로딩 (한번만 로딩 하면 됨)
OracleDriver driver = new OracleDriver();
String id = request.getParameter("userId");
String pw = request.getParameter("userPass");
String sql = "select * from member where mem_id = '"+ id +"' and mem_pass = '"+ pw +"'";




try{
	
	
//커넥션 설정
conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.20.54:1521:xe", "java", "oracle");

// SQL선언문 
stmt = conn.createStatement();
rs = stmt.executeQuery(sql);


//질의 결과 확인

if(rs.next()) {
	out.print("<h3>로그인 성공</h3><br>");
	out.print("아이디 :" + rs.getString("mem_id")+"<br>");
	out.print("패스워드 :" + rs.getString("mem_pass")+"<br>");
	out.print("메일 :" + rs.getString("mem_mail")+"<br>");


} else { 
	
	out.print("<h3>로그인 실패</h3>");
}

}catch(Exception e) {
	out.print(e);
}finally{
		
	if ( rs != null ) try{rs.close();}catch(Exception e){}
	if ( stmt != null ) try{stmt.close();}catch(Exception e){}
	if ( conn != null ) try{conn.close();}catch(Exception e){}

	}
%>



</body>
</html>
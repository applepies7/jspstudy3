<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
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
// OracleDriver driver = new OracleDriver();
long start = System.currentTimeMillis();

	for(int i = 0 ; i<18 ; i++){
	//커넥션 설정
	conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.20.37:1521:xe", "java", "oracle");
	// SQL선언문 
	stmt = conn.createStatement();
	rs = stmt.executeQuery("select * from member");
	if(rs.next()){
	out.println(rs.getString("mem_name") + ",");
	}


			if ( rs != null ) try{rs.close();}catch(Exception e){}
			if ( stmt != null ) try{stmt.close();}catch(Exception e){}
			if ( conn != null ) try{conn.close();}catch(Exception e){}

	}
%>
소요시간 : <%=System.currentTimeMillis() - start %>


</body>
</html>
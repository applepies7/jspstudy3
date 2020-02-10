<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
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
<title>16 / manyConnectionManyJob2JNDI.jsp</title>
</head>
<body>
<!-- JNDI 2가지 사용방법 -> 운영,관리,최적화,장애조치 등 다양한 이점으로 was단에서 어플리케이션의 DB설정을 가능하게 함
1. WAS의  server.xml 이나 context.xml에 resource등록
  -해당 웹프로젝트의 web.xml에서 <resource-ref>로 참조
2. 해당 웹의 META-INF/context.xml에 resource 등록



 -->
<%

Connection conn = null; //커넥션 티켓
Statement stmt = null; // SQL선언문
ResultSet rs = null; //질의 결과
// 1. 드라이버 로딩 (한번만 로딩 하면 됨)
// OracleDriver driver = new OracleDriver();




long start = System.currentTimeMillis();

	for(int i = 0 ; i<18 ; i++){
		//커넥션 설정
		Context initContext = new InitialContext();
		Context envContext  = (Context)initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource)envContext.lookup("jdbc/study");
		conn = ds.getConnection();
		//conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.20.37:1521:xe", "java", "oracle");
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
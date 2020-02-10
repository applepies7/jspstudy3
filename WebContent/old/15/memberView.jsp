<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>10/ regist.jsp (7일차 카피) </title>
</head>
<body>

<%
Connection conn = null; //커넥션 티켓
Statement stmt = null; // SQL선언문
ResultSet rs = null; //질의 결과
// 1. 드라이버 로딩 (한번만 로딩 하면 됨)
OracleDriver driver = new OracleDriver();

String id = request.getParameter("memId");



try{
	
	
//커넥션 설정
conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.20.54:1521:xe", "java", "oracle");

// SQL선언문 
stmt = conn.createStatement();
rs = stmt.executeQuery("select * from member where mem_id ='"+ id +"'");


//질의 결과 확인

if(rs.next()) {

%>




	<form name="form" action="result.jsp" method="post">
		<fieldset>
			<legend>회원가입</legend>
			<table>
				<tr>
					<td>ID</td>
                    <td><%=rs.getString("mem_id")%></td>
				</tr>
				<tr>
					<td>회원명</td>
                    <td><%=rs.getString("mem_name")%></td>
				</tr>
				<tr>
					<td>주소</td>
					 <td><%=rs.getString("mem_add1")%><%=rs.getString("mem_add2")%>  <%=rs.getString("mem_zip")%></td>
				</tr>
				<tr>
					<td>생일</td>
                    <td><%=rs.getString("mem_bir")%></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><%=rs.getString("mem_mail")%></td>
				</tr>
				<tr>
					<td>취미</td>
					<td><%=rs.getString("mem_like")%></td>
				</tr>
				<tr>
					<td>핸드폰</td>
					<td><%=rs.getString("mem_hp")%></td>
				</tr>
				<tr>
					<td>직업</td>
					<td><%=rs.getString("mem_job")%></td>
				</tr>
				<tr>
					<td>마일리지</td>
					<td><%=rs.getString("mem_mileage")%></td>
				</tr>
				
			</table>
		</fieldset>
	</form>
<%
} else { 
	//회원이 없음.
%>	
<h3>회원 없음.</h3>
<%
}
}catch(Exception e) {
	
}finally{
		
	if ( rs != null ) try{rs.close();}catch(Exception e){}
	if ( stmt != null ) try{stmt.close();}catch(Exception e){}
	if ( conn != null ) try{conn.close();}catch(Exception e){}

	}
%>
</body>
</html>
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
OracleDriver driver = new OracleDriver();
try{
	
//커넥션 설정
conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.20.37:1521:xe", "java", "oracle");

// SQL선언문 
stmt = conn.createStatement();
rs = stmt.executeQuery("select * from member");


//질의 결과 확인



%>

<table>
<colgroup>
<col style="width 15%" />
<col style="width 15%" />
<col />
<col style="width 20%" />
<col style="width 10%" />

</colgroup>
<thead>
<tr>
<th>ID</th>
<th>NAME</th>
<th>ADDR</th>
<th>PHONE</th>
<th>mileage</th>
</tr>

</thead>
<tbody>
<% //기본형은 : next만 됨 (엄청 빠름빠름)
while(rs.next()){//next , first, last, absolute, prior 등이 있음. 
%>
<tr>
<td><%=rs.getString(1) %></td>
<td><a href="memberView.jsp?memId=<%=rs.getString("mem_id") %>"><%=rs.getString("mem_name") %></a></td>
<td><%=rs.getString("mem_add1") %>
    <%=rs.getString("mem_add2") %></td>
<td><%=rs.getString("mem_hp") %></td>
<td>  <%=rs.getInt("mem_mileage")%></td>
</tr>
<%
}
}catch(Exception e) {
%>
</tbody>
</table>

<%
}finally{
	
if ( rs != null ) try{rs.close();}catch(Exception e){}
if ( stmt != null ) try{stmt.close();}catch(Exception e){}
if ( conn != null ) try{conn.close();}catch(Exception e){}

}


%>

</body>
</html>
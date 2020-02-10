<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07/ app2</title>
</head>
<body>
<h4> 초기화 파라미터</h4>
DB_URL: <%=application.getInitParameter("DB_URL") %> <br>
웹 어플리케이션 물리 경로 <br> <%=application.getRealPath("") %> <br>

<% 
String f_path = application.getRealPath("/07/love.txt");
out.print("f_path = " + f_path + "<br>");
InputStreamReader fr = null;

//자바 1.7 부터 closeable 인터페이스 구현체를 try에 기술가능함

try{
	fr = new InputStreamReader(new FileInputStream(f_path),"utf-8");
	char[] buff = new char[32];
	int len = -1;
	while((len = fr.read(buff)) != -1){
		out.print(new String(buff,0,len));
	}
	
}catch(Exception e){
	e.printStackTrace();
	out.print("에러났음");
}finally{
	if(fr != null){
		fr.close();
	}
}
%>

</body>
</html>
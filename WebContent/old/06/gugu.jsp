<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06/ gugu.jsp</title>
</head>

<style>

table{width:80%;}
td{}
</style>

<body>
	<%!
	void gugudan(int x, JspWriter out) throws IOException {
		out.print(x + "단 <br>");
		for (int i = 1; i < 10; i++) {
			out.print(x + " * " + i + " = " + (i * x) + "<br>");
		}
	}
	%>


	<h3>구구단</h3>
	<table>
		<colgroup>
			<col style="width: 33%; " span="3"  />
			<col style="width: 33%; " span="3"  />
			<col style="width: 33%; " span="3"  />			
		</colgroup>

		<tbody>
		<%
		 for(int k = 2 ; k < 10; k++ ) { 
			 if(k%3 == 2){
				 out.print("<tr>");
			 }
			 
			 
			 out.print("<td>");
			 gugudan(k,out);
			 out.print("</td>");
		
			 if(k%3 == 1 || k == 9){
				 out.print("</tr>");
			 }
			 
		 }
		%>
		
		</tbody>
	</table>

</body>
</html>
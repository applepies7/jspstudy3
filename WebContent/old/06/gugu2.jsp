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
		for (int i = 1; i < 10; i++) {
			out.print(x + " * " + i + " = " + i * x + "<br>");
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
			<tr>
				<td>2단 <br> <% 	gugudan(2, out); %>
				</td>

				<td>3단 <br> <% 	gugudan(3, out); %>
				</td>

				<td>4단 <br> <% gugudan(4, out); %>
				</td>
			</tr>

			<tr>
				<td>5단 <br> <% 	gugudan(5, out); %>
				</td>


				<td>6단 <br> <% 	gugudan(6, out); %>
				</td>
				<td>7단 <br> <% 	gugudan(7, out); %>
				</td>
			</tr>

			<tr>
				<td>8단 <br> <%gugudan(8, out);%>

				</td>
				<td>9단 <br> <% gugudan(9,out); %>
				</td>

			</tr>

		</tbody>
	</table>

</body>
</html>
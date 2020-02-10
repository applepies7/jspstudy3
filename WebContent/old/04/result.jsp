<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map.*"%>
<%@page import="java.util.Enumeration"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//넘어오는 파라미터(post)는 기본적으로 iso-8859-1 -> utf-8로 변경
	request.setCharacterEncoding("utf-8");
	//get 방식은 was맡다 설정 필요함.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03/ result.jsp</title>
</head>
<body>

	<h3>입력정보 확인</h3>
	<h5>getParameter()</h5>
	<ul>
		<li>ID: <%=request.getParameter("id")%>
		<li>PASSWORD: <%=request.getParameter("pw1")%>
		<li>GENDER: <%=request.getParameter("gender")%>
		<li>HOBBY: <%=request.getParameter("hobby")%>
		<li>BIRTH: <%=request.getParameter("birth")%>
		<li>MEMO: <%=request.getParameter("memo")%> <br>
			<hr>
			<h5>getParameterValues()</h5>
		<li>id : <%=request.getParameterValues("id")%> <br>
		<li>취미 : <%=request.getParameterValues("hobby")%> <br> <%
 	/*
 	모든 파라미터는 문자 배열로 관리 
 	getparameter()는 문자배열의 첫번째 값으로 반환함.
 	input type ="checkbox","raidobutton"는 선택 안하면 파라미터가 넘어오지 않음 
 	(다른 form의 하위요소는 null) 
 	*/

 	String[] hobbies = request.getParameterValues("hobby");
 	if (hobbies != null) {
 		for (int i = 0; i < hobbies.length; i++) {
 			out.println(i + ":" + hobbies[i]);
 			}
 		}
 		%>
			<hr>
			<h5>getParameterNames()</h5> <%
		//파라미터의 이름에 대한 열거형 객체
		
		Enumeration<String> en =request.getParameterNames();
		while(en.hasMoreElements()){
			String name = (String) en.nextElement();
			out.println("<li>" + name + ":" + request.getParameter(name) + "<br>");
		}
		
		
		%>
			<hr>
			<h5>getParameterMap()</h5> <%= request.getParameterMap().entrySet().iterator() %>

			<%
		out.println("<hr> <h5>keySet iterator + while</h5>");
		//keySet iterator + while
		Iterator<String> iter = request.getParameterMap().keySet().iterator();
		while(iter.hasNext()){
			String key = (String)iter.next();
			
			out.println("<li>" + key +":" + request.getParameterMap().get(key)[0]);
			
		}
		out.println("<hr> <h5>entryset + while</h5>");
		//entryset + while
		Iterator<Entry<String,String[]>> iter2 = request.getParameterMap().entrySet().iterator();
		while(iter2.hasNext()){
			Entry<String,String[]> entry = (Entry<String,String[]>)iter2.next();
			out.println("<li>"+entry.getKey()+ ":" + entry.getValue()[0]);
		}
		
		out.println("<hr> <h5>keySet + foreach</h5>");
		//keySet + foreach
		for(String key : request.getParameterMap().keySet()){
			out.println("<li>"+ key + ":" + request.getParameterMap().get(key)[0]);
		
		}
		
		%>
	</ul>
	
	<%
	//문제 4-1
	
	//특정아이피 조회하여 인덱스 페이지로 리다이렉트
	if(request.getRemoteAddr().equals("192.168.20.37")){
		response.sendRedirect(request.getContextPath() + "/index.jsp");
		return;
	}

	//문제 4-2
	 String refer = request.getHeader("referer"); 
	//referer(이전페이지 값)을 조회하여 특정 페이지로 리다이렉트 
	//(regist페이지가 아닌 다른 경로로 result에 접근시 regist로 리다이렉트)
	if(refer == null || !refer.contains("regist.jsp")){
		response.sendRedirect(request.getContextPath() + "/04/regist.jsp");
		return;
	}
	
	%>

</body>
</html>
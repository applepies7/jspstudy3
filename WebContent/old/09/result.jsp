<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>09/ result.jsp</title>
</head>
<body>
<h3>입력정보 확인</h3>


<ul>
<li>id:  <%=request.getParameter("id") %></li>
<li>pw:  <%=request.getParameter("pw") %></li>
<li>gender:  <%=request.getParameter("gender") %></li>
<li>취미:  <%=request.getParameter("group") %></li>
<li>ip:  <%=request.getRemoteAddr() %></li>
</ul>
<%
//메인에서 다른페이지를 포워드를 할건데 출력할 스트림이 버퍼를 초과하거나 (8k) flush()하는 경우 오류 발생
//out.flush();
%>
<%-- 현재 페이지에서 그룹별로 작성하고자 했으나 형식도 틀리고  
각그룹별로 별도페이지로 작성 하여 호출 하기로 결정
twice.jsp
girls.jsp
blackpink.jsp
izone.jsp
수입총액을 처리하는 루틴과 멤버정보도 이곳에서 처리 하기로 함.
1.param은 리터럴만 가능
2. 속성에 저장(request) : 자바객체 저장
--%>
<%
int amount = 0;  
List<String> members = new ArrayList();
String group = request.getParameter("group");
String go = null;

if(group.equals("twice")){
	amount = 47650;
	members.add("tw1");
	members.add("tw2");
	members.add("tw3");
	members.add("tw4");
	members.add("tw5");
	members.add("tw6");
	members.add("tw7");
	members.add("tw8");
	members.add("tw9");
	
}else if (group.equals("girls")){
	amount = 47620;
	members.add("so1");
	members.add("so2");
	members.add("so3");
	members.add("so4");
	members.add("so5");
	members.add("so6");
	members.add("so7");
	
}else if (group.equals("black")){
	amount = 46500;
	members.add("black1");
	members.add("black2");
	members.add("black3");
	members.add("black4");
}else if (group.equals("izone")){
	amount = 47600;
	members.add("izo1");
	members.add("izo2");
	members.add("izo3");
	members.add("izo4");
	members.add("izo5");
	members.add("izo6");
	members.add("izo7");	
	members.add("izo8");
	members.add("izo9");
	members.add("izo10");	
	members.add("izo11");
	members.add("izo12");
}

go = "/09/" + group + ".jsp";
request.setAttribute("members", members);
%>

<jsp:forward page="<%=go%>">
<jsp:param value="<%=amount %>" name="amt"></jsp:param>
</jsp:forward>

</body>
</html>
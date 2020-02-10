<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String id = request.getParameter("memId");
String pw = request.getParameter("memPass");
String name = request.getParameter("memName");
%>

id = <%=id %> <br>
pw = <%=pw %> <br>
name = <%=name %> <br>

<h4>useBean, set/get Property</h4>
<jsp:useBean id="member" class="com.study.member.vo.MemberVO" scope="page"/>
<jsp:setProperty property="memId" name="member" param="memId"/>
<jsp:setProperty property="memPass" name="member" param="memPass"/>
<jsp:setProperty property="memName" name="member" param="memName"/>
<jsp:setProperty property="memJob" name="member" value = "열심히 공부중"/>

id = <jsp:getProperty property="memId" name="member"/><br>
pw = <jsp:getProperty property="memPass" name="member"/><br>
name = <jsp:getProperty property="memName" name="member"/><br>
job = <jsp:getProperty property="memJob" name="member"/><br>

<h4>useBean, setProperty * EL사용 </h4>
<jsp:useBean id="member2" class="com.study.member.vo.MemberVO" scope="page"/>
<jsp:setProperty property="*" name="member2" />
<jsp:setProperty property="memJob" name="member2" value = "열심히 공부중"/>

id = <jsp:getProperty property="memId" name="member2"/><br>
pw = ${member2.memPass}<br>
name = ${member2.memName}<br>
job = ${member2.memJob}<br>

<h4>useBean 코드</h4>
<pre>
&lt;jsp:useBean id ="member3" class="com.study.member.vo.Member" scope="page"/&gt;
Member member3 = pageContext.getAttribute("member3");
if(member3 == null){
member3 = newMember();
pageContext.setAttribute("member3",member3);
 }

</pre>



</body>
</html>
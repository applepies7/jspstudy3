<%@page import="com.study.util.FileUtils"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.study.login.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13/ el02.jsp</title>
</head>
<body>
<%

UserVO vo =  new UserVO("malja", "1004", "이재혁","USER");     

request.setAttribute("jh", vo);
String name = "";
request.setAttribute("love", name);


%>
<h4>jsp 2.3 (2.2)에서 추가된 EL기능</h4>

<pre>
문자열 연결 +=
${jh.userId }님 방가 ${jh.userName}
${jh.userId += '님 방가 ' += jh.userName += "....."}

<!-- el은 출력이 목적이기에 ;구분의 마지막 값이 출력됨 
따라서 선언만 하고 출력을 원하지 않는경우 ;""을 추가 -->
${ a = jh.userId += '님 방가 ' += jh.userName += "....." ; b = 1004; ""}

${a }
${b }

${wishList = ["이재혁 결석 않하기", "밀키스", "말자"] ;""}
${wishList[0] }
${wishList[1] }
${wishList[2] }

${myMap = {"id": "haja", "name" : "하자" , "age" : "13"};""}
${myMap['name'] }
${myMap["age"] }
 
</pre>


<hr>

<pre>

45871 = ${FileUtills.fancySize(45628) }
${jh.userName }
${jh.getUserName() }
${jh.setUserName("밀키스") }
${jh.userName }

</pre>


<hr>
<%
Enumeration<String> en = pageContext.getAttributeNamesInScope(PageContext.PAGE_SCOPE);
while(en.hasMoreElements()){
	String k = en.nextElement();
	out.println(k+ "= " + pageContext.getAttribute(k));
}
%>
<hr>


</body>
</html>
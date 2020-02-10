<%@page import="com.study.login.vo.UserVO"%>
<%@page import="com.study.member.vo.MemberVO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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
	//속성

Map<String, Object> my= new HashMap<String, Object>();
String id = "Nolja";
int age = 14;
MemberVO mem = new MemberVO();
mem.setMemName("밀키스");
mem.setMemId("milkis");

UserVO user = new UserVO("haja","1004","슬리더 리오 하자","USER" );

my.put("k1",id);
my.put("k2",age);
my.put("k3",mem);
my.put("k4",user);

Object o1 = my.get("k1");
Object o2 = my.get("k2");
Object o3 = my.get("k3");
Object o4 = my.get("k4");

out.print("<br> o1 : " + o1.toString());
out.print("<br> o2 : " + o2.toString());

MemberVO xx =(MemberVO)o3;
out.print("<br> xx : " + xx.getMemId() + " , " + xx.getMemName());

UserVO yy = (UserVO) my.get("k4");
out.print("<br> yy : " + yy.getUserName()+ " , " + yy.getUserId());
%>
</body>
</html>
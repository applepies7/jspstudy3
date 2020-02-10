<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03/ r.jsp</title>
</head>
<body>

<% 
String inNum1 = request.getParameter("num1");
String inNum2 = request.getParameter("num2");

int num1 = Integer.parseInt(inNum1);
int num2 = Integer.parseInt(inNum2);
int getNum = 0;

for(int i = num1; i < num2; i++){
	if(i%2 == 0){
		getNum += i;
	}
}

%>


입력한 숫자 <%=num1 %>,<%=num2 %> 사이의 짝수의합 은 <%=getNum %>이다 

</body>
</html>
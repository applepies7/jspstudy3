<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14 / lambda.jsp</title>
</head>
<body>
<pre>
현재 : page isELIgnored="false"  ture면 EL표기 무시함 
${mx = (a,b,c) -> a > b ? (a > c ? a : c ) : (b > c ? b: c)}

${fac =(n) -> n == 1 ? 1 : n*fac(n-1)}

${fibo=(n) -> n <= 1 ? n : (fibo(n-2) + fibo(n-1))}

${ sum = (n, f) -> n == f ? n : n + sum (n + 1,f) }


fac(5) : ${fac(5) }

${ sum(1,10)}


${gause= (a,b) -> (a+b)*(b-a+1)/2}
\${gause(1,100) }
${gause(1,100) }
\${gause(50,100) }
${gause(50,100) }


</pre>



</body>
</html>
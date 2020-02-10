<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06/ path.jsp</title>
</head>
<body>
<pre>현재를 기준으로 같은 폴더 및 하위폴더는 상대경로로 지정하고
그외에는 절대경로로 표기하는것을 jsp에서는 권장함.
</pre>
상대1<br>
<img alt="ppangbrother.png" src="../image/ppangbrother.png" width="100px"><br><br>
상대2<br>
<img alt="ppangbrother.png" src="./../06/../image/pangbrother.png" width="100px"><br><br>
절대1<br>
<img alt="ppangbrother.png" src="image/ppangbrother.png" width="100px"><br><br>
절대2<br>
<img alt="ppangbrother.png" src="/study/image/ppangbrother.png" width="100px"><br><br>
절대3<br>
<img alt="ppangbrother.png" src="<%=request.getContextPath()%>/image/ppangbrother.png" width="100px"><br><br>
절대4<br>
<img alt="ppangbrother.png" src="<%=request.getContextPath()%>/image/ppangbrother.png" width="100px"><br><br>


</body>
</html>
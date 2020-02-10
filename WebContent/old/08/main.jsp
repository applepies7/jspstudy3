<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%-- <%@include file="/inc/common_var.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08 / main.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/main.css">

</head>
<body>

	<div class="container">
		<!--top menu -->
		<jsp:include page="/inc/top.jsp" />

		<!-- left menu -->
		<jsp:include page="/inc/left.jsp" />
		<!-- main menu -->
		<div id="main">
<%= %>
			<h3>컴터 사세요</h3>
		</div>
		<!-- footer menu -->
		<jsp:include page="/inc/footer.jsp" />


	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <fmt:setBundle basename="resource.message" var ="bundle"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <title>14/ regist.jsp (7일차 카피) </title>
</head>
<body>
	<form name="form" action="/index.jsp" method="post">
		<fieldset>
		
			<legend><fmt:message bundle="${bundle}" key="member.regist.title"/></legend>



			<table>
				<tr>
				
					<td><fmt:message bundle="${bundle}" key="member.memId"/></td>
                    <td><input type="text" name="memId"></td>
                    <td style="color: grey;"><fmt:message bundle="${bundle}" key="size"> <fmt:param value="4" /> <fmt:param value="8" /> </fmt:message> </td>
				</tr>
				<tr>
					<td><fmt:message bundle="${bundle}" key="member.memPass"/>
					</td>
					<td><input type="password"  name="memPass"><br>
                        
                    </td>
                    <td style="color: grey;"><fmt:message bundle="${bundle}" key="min"> <fmt:param value="4" /></fmt:message></td>
				</tr>
				<tr>
				
					<td><fmt:message bundle="${bundle}" key="member.memName"/></td>
                    <td><input type="text" name="memName"></td>
				</tr>
				
				<tr>
				
					<td><fmt:message bundle="${bundle}" key="member.memLike"/></td>
					<td>
					<select name="memLike">
					<option value="">휴식</option>
					<option value="">잠</option>
					<option value="">멍때리기</option>
					</select>
                    </td>
				</tr>
				<tr>
				
					<td><fmt:message bundle="${bundle}" key="member.memBir"/></td>
                    <td><input type="date"  name="memBir"></td>
				</tr>
				<tr>
					<td><fmt:message bundle="${bundle}" key="member.memMail"/></td>
					<td>
                        <input type="email"  name="memEmail"> @ 
                    </td>
				</tr>
				<tr>
					<td><fmt:message bundle="${bundle}" key="member.memo"/></td>
                    <td><textarea  rows="3" cols="50" name="memo"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">
					<input type="submit" value="<fmt:message bundle="${bundle}" key="member.regist.submit"/>"> 
					<input type="reset" value="<fmt:message bundle="${bundle}" key="member.regist.reset"/>">
					</td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>
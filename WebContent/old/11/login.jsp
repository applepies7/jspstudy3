<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>10/ regist.jsp (7일차 카피) </title>
</head>
<body>
	<form name="form" action="loginCheck.jsp" method="post">
		<fieldset>
			<legend>로그인</legend>

			<table>
				<tr>
					<td>ID</td>
                    <td><input type="text" name="userId" placeholder="사용자 ID"></td>
				</tr>
				<tr>
					<td><label for="id_userPW">PW</label></td>
					<td><input id="id_userPW" type="text"  name="userPass" placeholder="사용자 PW"><br>
                        
                    </td>
				</tr>		
				<tr>
					<td colspan="2">
					<label>
					<input type="checkbox" name="idRemember" value="Y">
					아이디 기억하기
					</label>
				</td>
				</tr>
				
				<tr>
					<td colspan="2">
					<input type="submit" value="로그인"> 
					<input type="reset" value="초기화"><br>
					<a href="<%=request.getContextPath()%>/index.jsp">Home</a>
					<a href="<%=request.getContextPath()%>/join/regist.jsp" class="btn btn-sm btn-info">회원가입</a>
					</td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>
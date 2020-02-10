<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>09/ regist.jsp</title>
</head>
<body>
	<form name="form" action="result.jsp" method="post">
		<fieldset>
			<legend>회원가입</legend>
			<table>
				<tr>
					<td>ID</td>
					<td><input type="text" name="id"></td>
					<td style="color: grey;">(4자 이상)</td>
				</tr>
				<tr>
					<td>PW</td>
					<td><input type="text" name="pw"><br> </td>
					<td style="color: grey;">숫자로 4자 이상</td>
				</tr>
				<tr>

				<td>취미</td>
					<td>
                        <input type="radio" value="twice" name="group">twice 
                        <input type="radio" value="girls" name="group">girls
                        <input type="radio" value="black" name="group">black
                        <input type="radio" value="izone" name="group">izone
                    </td>
             	</tr>
					
				<tr>
					<td colspan="2">
					<input type="submit" value="제출"> 
					<input type="reset" value="초기화">
					</td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>
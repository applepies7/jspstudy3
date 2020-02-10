<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>17/ memberFrom.jsp (7일차 카피) </title>
</head>
<body>
	<form name="form" action="memberRegist2.jsp" method="post">
		<fieldset>
			<legend>회원가입</legend>
<colgroup>
<col style="widith:20%"/>
<col/>
<col style="widith:20%"/>
</colgroup>



			<table>
				<tr>
					<td>ID</td>
                    <td><input type="text" name="memId"></td>
				</tr>
				<tr>
					<td>PW
					</td>
					<td><input type="text"  name="memPass"><br>        
                    </td>
				</tr>
				<tr>
					<td>회원명</td>
                    <td><input type="text" name="memName"></td>
				</tr>
				<tr>
					<td>취미</td>
					<td><input type="text" name="memLike">
                    </td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>
                        <input type="email"  name="memEmail">
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
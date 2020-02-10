<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
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
					<td>PW<br>확인
					</td>
					<td><input type="password"  name="pw1"><br>
                        <input type="password"  name="pw2">
                    </td>
                    <td style="color: grey;">숫자로 4자 이상</td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<input type="radio" value="male" name="gender" >남 
						<input type="radio" value="female" name="gender" >여
					</td>
                    <td style="color: grey;">1개 선택</td>
				</tr>
				<tr>
					<td>취미</td>
					<td>
                        <input type="checkbox" value="sport" name="hobby" >운동 
                        <input type="checkbox" value="trip"	name="hobby" >여행 
                        <input type="checkbox" value="read" name="hobby" >독서
                        <input type="checkbox" value="game" name="hobby" >게임
                        <input type="checkbox" value="movie" name="hobby" >영화감상
                        <input type="checkbox" value="meditation" name="hobby" >명상
                    </td>
                    <td style="color: grey;">2개 이상 선택</td>
				</tr>
				<tr>
					<td>생일</td>
                    <td><input type="date"  name="birth"></td>
                    <td style="color: grey;">선택해야함</td>
				</tr>
				<tr>
					<td>나이</td>
                    <td><input type="text"  name="age"></td>
                    <td style="color: grey;">숫자</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>
                        <input type="text"  name="email"> @ 
                        <select	 name="emailAddr">
							<option>naver.com</option>
							<option>daum.net</option>
                            <option>nate.com</option>
                            <option>google.com</option>
                    	</select>
                    </td>
                    <td style="color: grey;">작성해야함</td>
				</tr>
				<tr>
					<td>메모</td>
                    <td><textarea  rows="3" cols="50" name="memo"></textarea></td>
                    <td style="color: grey;">작성해야함</td>
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
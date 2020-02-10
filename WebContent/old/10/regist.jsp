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
	<form name="form" action="result.jsp" method="post">
		<fieldset>
			<legend>회원가입</legend>
<colgroup>
<col style="widith:20%">
<col/>
<col style="widith:20%">
</colgroup>



			<table>
				<tr>
					<td>ID</td>
                    <td><input type="text" name="memId"></td>
                    <td style="color: grey;">(4자 이상)</td>
				</tr>
				<tr>
					<td>PW
					</td>
					<td><input type="password"  name="memPass"><br>
                        
                    </td>
                    <td style="color: grey;">숫자로 4자 이상</td>
				</tr>
				<tr>
					<td>회원명</td>
                    <td><input type="text" name="memName"></td>
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
					<select name="memLike">
					<option value="">휴식</option>
					<option value="">잠</option>
					<option value="">멍때리기</option>
					</select>
                    </td>
				</tr>
				<tr>
					<td>생일</td>
                    <td><input type="date"  name="memBir"></td>
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
                        <input type="email"  name="memEmail"> @ 
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03/Love.jsp</title>
</head>
<body>

<h3>12월 31일 혼자서 새해를 맞이하세요.</h3>

<%!//문자열을 반복문으로 출력 
	public void milkis(int x) {
		for (int i = 0; i < x; i++) {
			System.out.println("사랑해요 밀키스!!!<br>");
			//syso는 콘솔에 출력됨
			
		}
	}

	public String love(int cnt) {
		long st = System.currentTimeMillis();
		String res = "";
		for (int i = 0; i < cnt; i++) {
			res += "사랑해요 밀키스!!!<br>";

		}
		System.out.println("소요시간: " + (System.currentTimeMillis() - st));
		return res;
	}
	
	public String love2(int cnt) {
		long st = System.currentTimeMillis();
		String res = "";
		StringBuffer sb = new StringBuffer();
		
		
		for (int i = 0; i < cnt; i++) {
			sb.append("사랑해요 밀키스!!!<br>");

		}
		System.out.println("소요시간: " + (System.currentTimeMillis() - st));
		return sb.toString();
	}
	%>
사랑해요 밀키스!!!<br>
사랑해요 밀키스!!!<br>
사랑해요 밀키스!!!<br>

<hr>
<% out.println(love(10000)); %>
<hr>
<hr>

사랑해요 밀키스!!!<br>
사랑해요 밀키스!!!<br>
사랑해요 밀키스!!!<br>
사랑해요 밀키스!!!<br>
사랑해요 밀키스!!!<br>

3번.6번
1. 복사해서 붙여서
2.함수로 생성하여 호출
3. 객체의 메서드 활용(상속등의 기능 사용가능)
매서드의 정의 반환타입 

<hr>
<%=love2(10000) %>

</body>
</html>
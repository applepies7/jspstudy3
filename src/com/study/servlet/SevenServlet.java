package com.study.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SevenServlet extends HttpServlet {

	// doGet : http 요청이 get인 경우 호출
	// doPost : http 요청이 post인 경우 호출
	// service(에서 요청에 따라 ) -> doGet, doPost, doPurt 호출

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    //서블릿은 기본적으로 content-type : text/html
		// 인고딩 : iso-8859-1 : 서유럽어(영어) 1byte
		//한글 인코딩 변경 : euc-krm, ksc-5601, cp-949 완성형 한글
		//모든 캐릭터를 출력  : unicode : 4byte, 8byte(사이즈가 크죠)
		//unicode변형 : 영어 1byte, 다른 캐릭터는 3byte : UTF-8
		// 출력을 위한 객체 선언
		resp.setContentType("text/html");
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		//출력을 위한 객체 선언
		out.println("<html>");
		out.println("<head>");
		out.println("<title>서블릿으로 구현한 7단</title>");
		out.println("</head>");
		out.println("<body>");
		int dan = 7;
		out.println("<h3>");
		out.println(dan + "단");
		out.println("</h3>");
		out.println("<ul>");

		for (int i = 1; i <= 9; i++) {
			out.println("<li>" + dan + " * " + i + " = " + i * dan + "</li>");
		}

		out.println("</ul>");
		out.println("</body>");
		out.println("</html>");
	}
}

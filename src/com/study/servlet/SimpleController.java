package com.study.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SimpleController extends HttpServlet {

	// init() : was에서 메모리에 올라갈때 호출됨
	// destory() : was에서 객체가 제거되기전 호출
	// service() : 클라이언트가 요청시 was에 호출
	// sercice = doGet doPost doPut doDelete 등으로 호출
	// freelist.jsp 호출 하면 was는 freelist.jsp와 매핑된 서블릿을 찾아서 호출 freelist_jsp.class

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out = resp.getWriter();

		
		String uri = req.getRequestURI();
		out.println("요청하신 URI는 %s".format(uri));
	}

}

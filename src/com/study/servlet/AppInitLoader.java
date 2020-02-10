package com.study.servlet;


import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class AppInitLoader extends HttpServlet {
	
	@Override
	public void init() throws ServletException {
		//현객체가 메모리 올라올때 초기화.
		System.out.println("===================================");
		System.out.println(getClass().getSimpleName() + " init call" );
//		ServletContext application = getServletContext();
//		application.setAttribute("DB" ,"jdbc:oracle:this:@127.0.0.1:1521:xe");
		try { 
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("오라클 드라이버 로드 성공");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			throw new ServletException("DB 드라이버 로드 실패",e);
		}

	
	
	
	}



	@Override
	public void destroy() {
		//객체가 메모리에서 해제될때 마무리 작업
		System.out.println("===================================");
		System.out.println(getClass().getSimpleName() + " destory call");
		System.out.println("===================================");
	}
		
	
	}


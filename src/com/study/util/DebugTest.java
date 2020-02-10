package com.study.util;

import java.util.regex.Pattern;

public class DebugTest {

	public int sum(int max) {
		int s = 0;
		for (int i = 0; i < max; i++) {
			s = i;
		}
		return s;
	}
	
	public static void main(String[] args) {
//		DebugTest test = new DebugTest();
//		int r =  test.sum(100);
//		System.out.println(r);

	//34번 글 읽었을때
		
	String free = "77|34|2|90";
	///7번글이 쿠키에 있나?
	int num = 34;
	Pattern.compile("\\b" +num +"\\b").matcher(free).find();

	
	System.out.println(free.matches("\\b27\\b"));
	System.out.println(Pattern.compile("\\b" +num +"\\b").matcher(free).find()
			);
	
	
	
	}
	
}



package com.study.free.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.study.common.dao.CommonCodeDaoOracle;
import com.study.common.dao.ICommonCodeDao;
import com.study.free.dao.FreeBoardDaoOracle;
import com.study.free.dao.IFreeBoardDao;
import com.study.servlet.IController;

public class FreeDeleteController implements IController {
private IFreeBoardDao freeDao =  new FreeBoardDaoOracle();
private ICommonCodeDao codeDao =  new CommonCodeDaoOracle();
	
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	
	
}

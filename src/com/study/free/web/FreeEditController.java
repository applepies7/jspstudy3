package com.study.free.web;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.study.common.dao.CommonCodeDaoOracle;
import com.study.common.dao.ICommonCodeDao;
import com.study.common.vo.CodeVO;
import com.study.free.dao.FreeBoardDaoOracle;
import com.study.free.dao.IFreeBoardDao;
import com.study.free.vo.FreeBoardVO;
import com.study.servlet.IController;

public class FreeEditController implements IController {
private IFreeBoardDao freeDao =  new FreeBoardDaoOracle();
private ICommonCodeDao codeDao =  new CommonCodeDaoOracle();
	
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		HttpSession session = req.getSession();
		String dupKey = UUID.randomUUID().toString();
		session.setAttribute("DUP_SUBMIT_PREVENT",dupKey);
		List<CodeVO> a = codeDao.getCodeListByParent("BC00");
		req.setAttribute("catList", a);
		req.setAttribute("dupKey", dupKey);
		req.setAttribute("catList", a);

		String s = req.getParameter("boNum");
		int num = Integer.parseInt(s);
		FreeBoardVO view = freeDao.getBoard(num);
		req.setAttribute("view", view);
		System.out.print(view);

		return "/WEB-INF/views/free/freeEdit.jsp";
	}

	
	
}

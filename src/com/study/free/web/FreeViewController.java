package com.study.free.web;

import java.util.regex.Pattern;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.study.common.dao.CommonCodeDaoOracle;
import com.study.common.dao.ICommonCodeDao;
import com.study.free.dao.FreeBoardDaoOracle;
import com.study.free.dao.IFreeBoardDao;
import com.study.free.vo.FreeBoardVO;
import com.study.servlet.IController;
import com.study.util.CookieBox;

public class FreeViewController implements IController {
	private IFreeBoardDao freeDao = new FreeBoardDaoOracle();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String s = req.getParameter("boNum");
		int num = Integer.parseInt(s);
		FreeBoardVO viewList = freeDao.getBoard(num);
		if (viewList != null) {
			CookieBox box = new CookieBox(req);
			String readBoard = box.getValue("free");
			if (readBoard == null)
				readBoard = "";
			String pat = "\\b" + num + "\\b";
			if (!Pattern.compile(pat).matcher(readBoard).find()) {
				freeDao.increaseHit(viewList.getBoNum());
				Cookie cookie = CookieBox.createCookie("free", readBoard + num + "|");
				resp.addCookie(cookie);
			}
		}
		req.setAttribute("view", viewList);

		return "/WEB-INF/views/free/freeView.jsp?bonum=" + s;
	}

}

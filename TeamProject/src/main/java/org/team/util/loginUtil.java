package org.team.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class loginUtil {
	public static String Success(HttpServletRequest req, HttpServletResponse res, String userid, String userpw)
			throws Exception {
		System.out.println("아이디 : " + userid);
		System.out.println("비밀번호 : " + userpw);
		HttpSession session = req.getSession();
		session.setAttribute("userid", userid);
		req.setAttribute("userid", userid);
		Cookie loginCookie = new Cookie("login", userid);
		loginCookie.setPath("/");
		loginCookie.setMaxAge(60 * 60 * 24);
		res.addCookie(loginCookie);
		System.out.println("로그인쿠키.. : " + loginCookie.getValue());
		return "redirect:/member/myPage";
	}

	public static String Fail(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// res.sendRedirect("/index");
		System.out.println("로그인실패..");
		return "redirect:/index";
	}
}

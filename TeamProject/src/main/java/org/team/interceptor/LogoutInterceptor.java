package org.team.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.team.web.MemberController;


public class LogoutInterceptor extends HandlerInterceptorAdapter {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		if (request.getMethod().equals("GET")) {
			return;
		}

		Cookie[] cookie = request.getCookies();
		
		logger.info("아이디 확인");
		String id = cookie[1].getValue();
		logger.info(id);

		Cookie logoutCookie = new Cookie("id", id);
		logoutCookie.setMaxAge(0 * 0 * 0);
		
		logger.info("쿠키값 확인");
		logger.info(cookie[1].toString());
		logger.info(logoutCookie.getValue());
		logger.info("로그아웃 쿠키 확인.............");
		
		response.addCookie(logoutCookie);

	}
}

package org.team.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.team.web.MemberController;


public class LoginInterceptor extends HandlerInterceptorAdapter {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		if (request.getMethod().equals("GET")) {
			return;
		}

		HttpSession session = request.getSession();
		String referer = (String) session.getAttribute("referer");

		
		if(modelAndView.getModel() == null){
			return;
		}
		
		Object value = modelAndView.getModel().get("value");
		// 컨트롤러에서 모델에다 게스트를담는다 그걸 보여준다

		logger.info("referer....." + referer);

		if (value != null) {
			
			logger.info("로그인 인터셉터  들어옴.................");

			session.setAttribute("LOGIN", value);

			Cookie[] cookie = request.getCookies();

			Cookie loginCookie = new Cookie("id", (String) value);
			loginCookie.setMaxAge(60 * 60 * 24);
			
			logger.info(cookie[0].toString());
			logger.info(loginCookie.toString());
			logger.info("로그인 인터셉터  쿠키 생성.................");

			
			response.addCookie(loginCookie);

//			response.sendRedirect("/member/list");
		}
	}

}

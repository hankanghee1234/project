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

	/*	HttpSession session = request.getSession();
		String referer = (String) session.getAttribute("referer");

		
		if(modelAndView.getModel() == null){
			return;
		}
		
		Object value = modelAndView.getModel().get("value");
		// ��Ʈ�ѷ����� �𵨿��� �Խ�Ʈ����´� �װ� �����ش�

		logger.info("referer....." + referer);*/

		
		
		Cookie[] cookie = request.getCookies();
		
		logger.info("�α׾ƿ� ������");
		String id = cookie[1].getValue();
		logger.info(id);
		
		


		Cookie logoutCookie = new Cookie("id", id);
		logoutCookie.setMaxAge(0 * 0 * 0);
		logger.info("���� ������ ��Ű �� Ȯ��.");
		logger.info(cookie[1].toString());
		logger.info(logoutCookie.getValue());
		logger.info("�α� �ƿ� ���ͼ���  ��Ű ����.................");

		
		response.addCookie(logoutCookie);

		/*response.sendRedirect("http://localhost:8081/board/login");*/
	}
}

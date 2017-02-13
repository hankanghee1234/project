package org.team.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.team.web.MemberController;


public class CheckLoginInterceptor extends HandlerInterceptorAdapter {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {// 세션써보겠음
		
		logger.info("Check ....");
		HttpSession session = request.getSession();
		logger.info("Check session....");
		String referer = request.getRequestURI();
		logger.info("Check referer....");
	
		logger.info("====================");
		logger.info(referer.toString());
		logger.info("====================");

		Cookie[] arr = request.getCookies();
		
		Object obj = "id";

		if(arr != null){
				for(int i=0;i<arr.length;i++){
					String name = arr[i].getName();
					if (obj.equals(name) ) {
						logger.info("name: "+name);
						return true;
						}
					else{
						continue;
					}
					
				}
			
			}
			
			logger.info("로그인 아이디 확인");
			session.setAttribute("referer", referer);
			response.sendRedirect("../login");// 없으면 리다이렉트
		
			return false;

	}// 사용자가 로그인정보가  있냐 없냐를 체크해서 팅겨내는 역할
		
}

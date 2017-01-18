package org.team.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.team.domain.MemberVO;
import org.team.service.MemberServiceImpl;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private MemberServiceImpl service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registGET() throws Exception {
		logger.info("register GET............");

	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registPOST(MemberVO vo, Model model) throws Exception {
		logger.info("register POST............");
		logger.info(vo.toString());
		
		service.create(vo);
		model.addAttribute("vo", vo);
		
		return "redirect:./member/list";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void regist() throws Exception {
		logger.info("register GET............");

	}
}

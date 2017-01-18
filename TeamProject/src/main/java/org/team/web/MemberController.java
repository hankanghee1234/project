package org.team.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.team.domain.MemberVO;
import org.team.service.MemberServiceImpl;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private MemberServiceImpl service;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public void mypageGET(/*Model model, @RequestParam("userid") String userid*/) throws Exception {
		logger.info("MEMBER MYPAGE............");
		/*model.addAttribute("member", service.read(userid));*/
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registPOST(MemberVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("register POST............");
		logger.info(vo.toString());
		service.create(vo);
		rttr.addFlashAttribute("msg", "registSUCCESS");
		return "redirect:/index";
	}

	@RequestMapping(value = "/dupleCheck", method = RequestMethod.POST)
	public boolean loginPOST(String userid) throws Exception {
		boolean check = service.loginDupleChk(userid);
		logger.info("로그인체크..." + check);
		return check;
	}
}

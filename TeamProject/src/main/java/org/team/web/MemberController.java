package org.team.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.team.domain.MemberVO;
import org.team.domain.PptVO;
import org.team.service.MemberServiceImpl;
import org.team.service.PptServiceImpl;
import org.team.util.loginUtil;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private MemberServiceImpl memberDAO;

	@Autowired
	private PptServiceImpl pptDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public void pptListGET(Model model) throws Exception {
		logger.info("PPT List GET............");
		
		model.addAttribute("list", pptDAO.pptUserList());
	}
	
	/*@RequestMapping(value = "/myPage2", method = RequestMethod.GET)
	public void mypage2GET() throws Exception {
		logger.info("MEMBER MYPAGE2............");
	}*/

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registPOST(MemberVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("register POST............");
		logger.info(vo.toString());
		memberDAO.create(vo);
		rttr.addFlashAttribute("msg", "registSUCCESS");
		return "redirect:/index";
	}

	@RequestMapping(value = "/loginPOST", method = RequestMethod.POST)
	public String loginPOST(HttpServletRequest req, HttpServletResponse res, MemberVO vo, RedirectAttributes rttr)
			throws Exception {
		String userid = vo.getUserid();
		String userpw = vo.getUserpw();
		boolean check = memberDAO.memberLogin(vo);
		if (check == true) {
			rttr.addFlashAttribute("msg", "loginSUCCESS");
			logger.info("로그인성공..." + check);
			return loginUtil.Success(req, res, userid, userpw);
		} else {
			rttr.addFlashAttribute("msg", "loginFail");
			logger.info("로그인실패..." + check);
			return loginUtil.Fail(req, res);
		}
	}

	@RequestMapping(value = "/dupleCheck", method = RequestMethod.POST)
	public boolean dupleCheck(String userid) throws Exception {
		boolean check = memberDAO.loginDupleChk(userid);
		logger.info("중복체크..." + check);
		return check;
	}
	
}

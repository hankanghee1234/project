package org.team.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.team.domain.MemberVO;
import org.team.domain.PageMaker;
import org.team.domain.SearchCriteria;
import org.team.service.MemberServiceImpl;
import org.team.service.PptServiceImpl;
import org.team.util.loginUtil;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private MemberServiceImpl memberService;

	@Autowired
	private PptServiceImpl pptService;

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public void pptListGET(@ModelAttribute("cri") SearchCriteria cri, Model model, 
			HttpServletRequest req) throws Exception {
		logger.info("PPT List GET & membership GET............");
		logger.info(cri.toString());

		  /*Cookie[] cookies = req.getCookies(); 
		  String myid = null;
		  
		  for (Cookie cookie : cookies) { 
			  
		  if(cookie.getName().equals("login")){ 
			  
			  myid = cookie.getValue(); break; 
		  	} 
		 }*/ // myid = user00, 로그인 처리가 되면 로그인한 정보가 출력이 되어야 한다.
		
		HttpSession session = req.getSession();
		String userid = session.getAttribute("userid").toString();		
		System.out.println(userid);
		cri.setUserid(userid);
		model.addAttribute("read", memberService.read(userid));
		model.addAttribute("pptUserList", pptService.listSearchCriteria(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(pptService.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);
	} // 페이징 처리 및 검색 조건 처리 및 쿠키로 로그인 정보 출력 완료

	@RequestMapping(value = "/circle", method = RequestMethod.POST)
	public String circle() throws Exception {
		logger.info("circle............");
		/* cc?id= */
		return "redirect:http://localhost:8080/cc?id=9";
	}

	@RequestMapping(value = "/createPage", method = RequestMethod.GET)
	public void createPageGET() throws Exception {
		logger.info("CREATE PAGE............");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registPOST(MemberVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("register POST............");
		logger.info(vo.toString());

		memberService.create(vo);
		rttr.addFlashAttribute("msg", "registSUCCESS");

		return "redirect:/index";
	}

	@RequestMapping(value = "/loginPOST", method = RequestMethod.POST)
	public String loginPOST(HttpServletRequest req, HttpServletResponse res, MemberVO vo, RedirectAttributes rttr)
			throws Exception {

		String userid = vo.getUserid();
		String userpw = vo.getUserpw();
		boolean check = memberService.memberLogin(vo);

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
		boolean check = memberService.loginDupleChk(userid);
		logger.info("중복체크..." + check);
		return check;
	}

	@RequestMapping(value = "/myPage", method = RequestMethod.POST)
	public String updatePost(MemberVO vo) throws Exception {
		logger.info("update Post...........");
		logger.info(vo.toString());

		memberService.update(vo);

		return "redirect:./myPage";
	} // update controller end

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deletePost(String userid) throws Exception {
		logger.info("delete Post...........");

		memberService.delete(userid);

		return "redirect:/index";
	} // delete controller end
   
}
package org.team.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ppt/*")
public class PptController {

	/*@Autowired
	private PptServiceImpl service;
	
	private static final Logger logger = LoggerFactory.getLogger(PptController.class);
	
	@RequestMapping(value = "/pptResiter", method = RequestMethod.GET)
	public void registGET() throws Exception {
		logger.info("PPT register GET...............");
	}
	
	@RequestMapping(value = "/pptResiter", method = RequestMethod.POST)
	public String registPOST(PptVO vo, Model model) throws Exception {
		logger.info("PPT register GET...............");
		logger.info(vo.toString());
		
		service.create(vo);
		model.addAttribute("vo", vo);
		
		return "redirect:./member/myPage";*/
	//}
	
	/*@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public void pptListGET(Model model) throws Exception {
		logger.info("PPT List GET............");
		
		model.addAttribute("list", service.pptUserList());
		
	}*/
}

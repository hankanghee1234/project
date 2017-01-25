package org.team.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.team.service.ImgServiceImpl;

@Controller
public class ImgController {

	@Autowired
	private ImgServiceImpl imgService;
	
	private static final Logger logger = LoggerFactory.getLogger(ImgController.class);
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public void imgView(Integer fno, Model model) throws Exception {
		logger.info("Image View GET.............");
		
		model.addAttribute("pptLead", imgService.pptRead(fno));
		model.addAttribute("imgRead", imgService.imgRead(fno));
	}
}

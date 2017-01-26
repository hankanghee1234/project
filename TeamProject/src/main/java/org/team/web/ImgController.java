package org.team.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.team.domain.ImgVO;
import org.team.domain.PptVO;
import org.team.service.ImgServiceImpl;

@RestController
@RequestMapping("/img/*")
public class ImgController {

	@Autowired
	private ImgServiceImpl imgService;
		
	private static final Logger logger = LoggerFactory.getLogger(ImgController.class);
	
	@RequestMapping(value = "/pptRead/{fno}", method = RequestMethod.GET)
	public @ResponseBody List<PptVO> pptViewGET(@PathVariable Integer fno) throws Exception {
		logger.info("ppt desc list GET..............");
		
		return imgService.pptRead(fno);
	}
	
	@RequestMapping(value = "/imgRead/{fno}", method = RequestMethod.GET)
	public @ResponseBody List<ImgVO> imgViewGET(@PathVariable Integer fno) throws Exception {
		logger.info("img list GET..............");
		
		return imgService.imgRead(fno);
	}
}

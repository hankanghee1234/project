package org.team.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.team.service.ImgServiceImpl;

@Controller
@RequestMapping("/img/*")
public class ImgController {

	@Autowired
	private ImgServiceImpl service;
	
	private static final Logger logger = LoggerFactory.getLogger(ImgController.class);
	
	
}

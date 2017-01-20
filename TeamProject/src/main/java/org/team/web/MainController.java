package org.team.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@RequestMapping(value = "/*", method = RequestMethod.GET)
	public String Home() throws Exception {
		logger.info("index페이지.........");
		return "index";
	}
	
	@RequestMapping(value = "/socket", method = RequestMethod.GET)
	public String socket() throws Exception {
		logger.info("socket페이지.........");
		return "socket";
	}
}

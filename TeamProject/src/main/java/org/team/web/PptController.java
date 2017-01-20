package org.team.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.team.service.PptServiceImpl;

public class PptController {

	@Autowired
	private PptServiceImpl service;
	
	private static final Logger logger = LoggerFactory.getLogger(PptController.class);
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public void pptList() throws Exception {
		
	}
}

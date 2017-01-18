package org.team.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping()
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public void test() throws Exception {
		logger.info("test페이지.........");
		
	}
	
	@RequestMapping(value = "/test2", method = RequestMethod.GET)
	public void test2() throws Exception {
		logger.info("test2페이지.........");
		
	}
	
	
	
	@RequestMapping(value="/impress", method = RequestMethod.GET)
	public void impressTest() throws Exception {
		logger.info("impress TEST............");
	}
	
	@RequestMapping(value="/reveal", method = RequestMethod.GET)
	public void revealTest() throws Exception {
		logger.info("reveal TEST............");
	}
	
	@RequestMapping(value="/index", method = RequestMethod.GET)
	public void index() throws Exception {
		logger.info("index TEST............");
	}
	
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public void registerTest() throws Exception {
		logger.info("register TEST............");
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
}

package org.team.web;

import org.slf4j.Logger;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.Socket;
 
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.team.socket.SimpleClient;

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
	
	@RequestMapping(value = "/socket2", method = RequestMethod.GET)
	public void socket2() throws Exception {
		logger.info("socket2페이지.........");
		
        SimpleClient cm = new SimpleClient();
        cm.ClientRun("test");
        
        logger.info("test 보냈음.........");
        
	
	}
	
	
	@RequestMapping(value = "/sendSocket", method = RequestMethod.POST)
	public String sendSocket() throws Exception {
		logger.info("sendSocket.........");
		
        SimpleClient cm = new SimpleClient();
        cm.ClientRun("test");
        
        logger.info("sendSocket test 보냈음.........");
        return "redirect:http://192.168.0.28:8080";
        
	
	}
	
    
}

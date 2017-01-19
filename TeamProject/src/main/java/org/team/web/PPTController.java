package org.team.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.team.domain.PPTVO;
import org.team.service.PPTService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/PPT/*")
public class PPTController {

	private static final Logger logger = LoggerFactory.getLogger(PPTController.class);

	@Autowired
	private PPTService PPTService;

	@RequestMapping(value = "/chatList", method = RequestMethod.GET)
	public ResponseEntity<List<PPTVO>> chatList() throws Exception {
		logger.info("PPT리스트..인덱스페이지에서..");
		ResponseEntity<List<PPTVO>> entity = null;
		try {
			entity = new ResponseEntity<List<PPTVO>>(PPTService.pptUserList(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<PPTVO>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

}

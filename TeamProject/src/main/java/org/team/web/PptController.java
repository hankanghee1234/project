package org.team.web;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.team.domain.ImgVO;
import org.team.domain.PptVO;
import org.team.service.ImgServiceImpl;
import org.team.service.PptServiceImpl;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/ppt/*")
public class PptController {
	
	@Autowired
	private PptServiceImpl pptService;

	@Autowired
	private ImgServiceImpl imgService;
	
	private static final Logger logger = LoggerFactory.getLogger(PptController.class);

	@GetMapping(value = "/show", produces = { "image/gif", "image/jpeg", "image/jpg", "image/png" })
	public @ResponseBody byte[] show(String name) throws Exception {

		InputStream in = new FileInputStream("C:\\zzz\\" + name);

		return IOUtils.toByteArray(in);
	}
	
	@ResponseBody
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String upload(@RequestBody MultipartFile file) throws Exception {
		logger.info("드롭존....테스트....." + file);
		// 데이터를 넣어라 태호나아
		return "Success";
	}

	@RequestMapping(value = "/chatList", method = RequestMethod.GET)
	public ResponseEntity<List<PptVO>> chatList() throws Exception {
		logger.info("PPT리스트..인덱스페이지에서..");
		ResponseEntity<List<PptVO>> entity = null;
		try {
			entity = new ResponseEntity<List<PptVO>>(pptService.pptGuestList(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<PptVO>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "/pptRead/{pptno}", method = RequestMethod.GET)
	public @ResponseBody PptVO pptReadGET(@PathVariable("pptno") Integer pptno) throws Exception {
		logger.info("pptRead GET..............");

		return pptService.pptRead(pptno);
	}

	@RequestMapping(value = "/imgRead/{fno}", method = RequestMethod.GET)
	public @ResponseBody List<ImgVO> imgViewGET(@PathVariable("fno") Integer fno) throws Exception {
		logger.info("IMage GET................");

		return imgService.imgRead(fno);
	}
}
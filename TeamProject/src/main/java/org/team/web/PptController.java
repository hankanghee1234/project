package org.team.web;

import java.awt.image.BufferedImage;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.apache.commons.io.IOUtils;
import org.imgscalr.Scalr;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.team.domain.FileVO;
import org.team.domain.ImgVO;
import org.team.domain.PptVO;
import org.team.service.FileServiceImpl;
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
	
	@Autowired
	private FileServiceImpl fileService;
	
	private static final Logger logger = LoggerFactory.getLogger(PptController.class);

	@GetMapping(value = "/show", produces = { "image/gif", "image/jpeg", "image/jpg", "image/png" })
	public @ResponseBody byte[] show(String name) throws Exception {

		InputStream in = new FileInputStream("C:\\zzz\\" + name);

		return IOUtils.toByteArray(in);
	}
	
	@ResponseBody
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String upload(@RequestBody MultipartFile file) throws Exception {
		logger.info("drag & drop POST......" + file);
		
		UUID uid = UUID.randomUUID();
		
		InputStream is = file.getInputStream();
		String fileName = file.getOriginalFilename();

		String uploadName = uid + "_" + fileName;
		
		FileOutputStream fos = new FileOutputStream("C:\\zzz\\" + fileName); 
		FileOutputStream foss = new FileOutputStream("C:\\zzz\\" + uploadName); 
		
		BufferedImage origin = ImageIO.read(is);
		
		BufferedImage destImg = Scalr.resize(origin,
				Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100); 
		
		ImageIO.write(origin, "jpg", fos);
		ImageIO.write(destImg, "jpg", foss);
		
		fos.close();
		foss.close();
		
		return uploadName;
	} // Dropzone end
	
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
	} // ppt 이미지 읽기
	
	@RequestMapping(value = "/pptCreate", method = RequestMethod.GET)
	public void createGET() throws Exception {
		logger.info("pptCreate GET............");
	}
	
	@RequestMapping(value = "/pptCreate", method = RequestMethod.POST)
	public String create(FileVO fvo, ImgVO ivo, PptVO pvo, RedirectAttributes rttr) throws Exception {
		logger.info("pptCreate POST............");
		logger.info(fvo.toString());
		logger.info(ivo.toString());
		logger.info(pvo.toString());
		
		fvo.setOriginName("test.pdf");
		fvo.setCopyName("test.pdf");
		imgService.create(fvo, ivo, pvo);
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:./myPage";
	}
	
	/*@RequestMapping()
	public void update() throws Exception {
		
	}
	
	@RequestMapping()
	public void delete() throws Exception {
		
	}*/
}
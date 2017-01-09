package org.zerock.web;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;

import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.SampleVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	//GET방식으로 처리
	@GetMapping("/register")
	public void registerGET(){
		
	} // void로 처리를 했기 때문에 
	
	@GetMapping("list")
	public void list(){
		
	}
	
	//POST방식으로 처리
	@PostMapping("/register")
	public String registerPOST(SampleVO vo, RedirectAttributes rttr){
		logger.info("POST" + vo);
		
		rttr.addFlashAttribute("msg", "success"); 
		// 일회성 메시지 사용으로 웹 호출 시 url이 변화가 없다.
		//addFlashAttribute => parameter로  전달 받는게 아니다. (수정, 삭제 처리 시 유용하다.) 
		
		return "redirect:list"; 
		//여기서 list로 주면 안된다. 문제는 화면 url은 register로 되어 있기 때문에 여기서 새로 고침 시 에러가 발생
		// 여기서 꼼수 실시
	}
	
	@GetMapping("/upload")
	public void uploadImage(){
		
	}
	
	@PostMapping("/upload")
	public void uploadPost(MultipartFile file) throws Exception{
		
		BufferedImage origin = ImageIO.read(file.getInputStream());
		
		BufferedImage destImg = Scalr.resize(origin,
				Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100); // resize된 이미지
		
		ImageIO.write(origin, "jpg", 
				new FileOutputStream("C:\\zzz\\" + file.getOriginalFilename()));
		ImageIO.write(origin, "jpg", 
				new FileOutputStream("C:\\zzz\\s_" + file.getOriginalFilename()));
		
	}
	
	@GetMapping("/getJSON")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> test(String f1){ //responseentity를 사용하여 웹페이지 제어를 한다.
		
		if(f1 == null){
			return new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_GATEWAY);
		}
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		resultMap.put("RESULT", "SUCCESS");
		resultMap.put("list", Arrays.asList(new String[]{"AAA","BBB","CCC"}));
		
		return new ResponseEntity<Map<String, Object>>(resultMap, HttpStatus.CREATED);
		// 웹에서 호출을 하면 상태코드가 502 발생, 뒤에 parameter를 적용하여 호출을 한다.
	}
	
	@GetMapping(value = "/tempPass", produces={"image/jpeg"})
	public @ResponseBody byte[] makeImage(HttpServletResponse res){
		BufferedImage image = new BufferedImage(300, 300, BufferedImage.TYPE_INT_RGB);
		
		Graphics g = image.getGraphics();
		
		g.setColor(Color.pink); // 컬러를 설정하고
		
		g.fillRect(0, 0, 300, 300); // 여기서 색을 입힌다.
		
		int value = (int)(Math.random() * 10000);
		
		g.setColor(Color.black); // 핑크색에서 블랙으로 교체
		
		g.drawString(""+value, 10, 140);
		
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		
		try{
			ImageIO.write(image, "jpg", bos);		
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
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

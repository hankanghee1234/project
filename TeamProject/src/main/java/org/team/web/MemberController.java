package org.team.web;

import java.awt.image.BufferedImage;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.team.domain.ImgVO;
import org.team.domain.MemberVO;
import org.team.domain.PageMaker;
import org.team.domain.PptFnoVO;
import org.team.domain.PptVO;
import org.team.domain.SearchCriteria;
import org.team.service.ImgServiceImpl;
import org.team.service.MemberServiceImpl;
import org.team.service.PptServiceImpl;
import org.team.util.loginUtil;

@Controller
@RequestMapping("/member/*")
public class MemberController {

   @Autowired
   private MemberServiceImpl memberService;

   @Autowired
   private PptServiceImpl pptService;
   
   @Autowired
   private ImgServiceImpl imgService;

   private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
   
   @RequestMapping(value = "/myPage", method = RequestMethod.GET)
   public void pptListGET(@ModelAttribute("cri") SearchCriteria cri, Model model, Integer fno,
         HttpServletRequest req) throws Exception {
      logger.info("PPT List GET & membership GET............");
      logger.info(cri.toString());
      
      HttpSession session = req.getSession();
      String userid = session.getAttribute("userid").toString();      
      System.out.println(userid);
      cri.setUserid(userid);
      
      int pageNum = cri.getPage();
      
      model.addAttribute("read", memberService.read(userid));
      model.addAttribute("pptUserList", pptService.listSearch(cri));
      /* session처리로 로그인한 유저 정보 출력하여 로그인한 정보마다 ppt 정보 출력 */
      
      PageMaker pageMaker = new PageMaker( pageNum,pptService.listSearchCount(cri));

      logger.info("======================================");
      logger.info("fno값 확인: " + fno);
      logger.info("======================================");
      
      model.addAttribute("pageMaker", pageMaker);
   }  // 페이징 처리 및 검색 조건 처리 및 로그인 정보 출력 완료

   @RequestMapping(value = "/register", method = RequestMethod.POST)
   public String registPOST(MemberVO vo, RedirectAttributes rttr) throws Exception {
      logger.info("register POST............");
      logger.info(vo.toString());

      memberService.create(vo);
      rttr.addFlashAttribute("msg", "registSUCCESS");

      return "redirect:/index";
   }

   @RequestMapping(value = "/loginPOST", method = RequestMethod.POST)
   public String loginPOST(HttpServletRequest req, HttpServletResponse res, MemberVO vo, 
		   RedirectAttributes rttr) throws Exception {

      String userid = vo.getUserid();
      String userpw = vo.getUserpw();
      boolean check = memberService.memberLogin(vo);

      if (check == true) {
         rttr.addFlashAttribute("msg", "loginSUCCESS");
         logger.info("로그인성공..." + check);
         return loginUtil.Success(req, res, userid, userpw);
      } else {
         rttr.addFlashAttribute("msg", "loginFail");
         logger.info("로그인실패..." + check);
         return loginUtil.Fail(req, res);
      }
   }
   
   @RequestMapping(value = "/logout", method = RequestMethod.POST)
   public String logout(HttpServletRequest req, HttpServletResponse res, 
         MemberVO vo) throws Exception {
      logger.info("logout: " + vo);
      String userid = vo.getUserid();
     
      return loginUtil.logout(req, res, userid);
   }
   
   @RequestMapping(value = "/loginGeustPOST/{userid}", method = RequestMethod.POST)
   public String loginGeustPOST(HttpServletRequest req, HttpServletResponse res,
		   @PathVariable("userid") String userid) throws Exception {

        logger.info("GESUT 쿠키 생성 ...........");

        return loginUtil.Geust(req, res, userid);
   }

   
   @RequestMapping(value = "/dupleCheck", method = RequestMethod.POST)
   public boolean dupleCheck(String userid) throws Exception {
      boolean check = memberService.loginDupleChk(userid);
      logger.info("중복체크..." + check);
      return check;
   }

   @RequestMapping(value = "/updatePost", method = RequestMethod.POST)
   public String updatePost(MemberVO vo, RedirectAttributes rttr) throws Exception {
      logger.info("update Post...........");
      logger.info(vo.toString());

      memberService.update(vo);
      rttr.addFlashAttribute("msg", "success");
      
      return "redirect:./myPage";
   } // update controller end (회원정보 수정)

   @RequestMapping(value = "/delete", method = RequestMethod.POST)
   public String deletePost(String userid, RedirectAttributes rttr) throws Exception {
      logger.info("delete Post...........");

      memberService.delete(userid);
      rttr.addFlashAttribute("msg", "success");
      
      return "redirect:/index";
   } // delete controller end (회원삭제)
   
   @RequestMapping(value = "/pptDel", method = RequestMethod.POST)
   public String pptDel(PptVO pvo, RedirectAttributes rttr) throws Exception {
      logger.info("pptDel Post...........");

      System.out.println(pvo);
   
      Integer fno = pvo.getFno();
      
      pptService.delete(fno);
      rttr.addFlashAttribute("msg", "success");
      
      return "redirect:./myPage";
   } // delete controller end(ppt 삭제)
   
   @RequestMapping(value = "/dropzone", method = RequestMethod.GET)
   public void dropzoneGET() throws Exception {
      logger.info("dropzone PAGE............");
   }
   
   @RequestMapping(value = "/pptCreate", method = RequestMethod.POST)
   public String create(ImgVO ivo, PptVO pvo) throws Exception {
      logger.info("pptCreate POST............");
      logger.info(ivo.toString());
      logger.info(pvo.toString());
      
      System.out.println(ivo);
      System.out.println(pvo);

      String user = pvo.getUserid();
      
      pptService.create(pvo);
    
      List<PptFnoVO> list = pptService.pptFnoRead(user);
	
      String tos = null;
      System.out.println("0번쨰임  "+list.get(0));
		
		for(int i = 0; i<list.size();i++){
			
			PptFnoVO str = list.get(i);
			tos = str.toString();
				
			System.out.println(tos);
				
			String[] s1 = tos.split("=");
					
			System.out.println(s1[1]);
				
			String tos1 = s1[1].toString();
			
			String s2[] = tos1.split("]");
				
			System.out.println(s2[0]);
				
			tos = s2[0];
				
		}

		System.out.println("fno 값 : "+tos);
			
		Integer fno = Integer.parseInt(tos);
			
		System.out.println("fno 값 : "+fno);
		
		ivo.setFno(fno);
		    
		System.out.println("img 값 : "+ivo.getImg());
			
		String img = ivo.getImg();	
		String[] img1 = img.split(",");
			
		System.out.println(img1[0]);
		System.out.println(img1[1]);
		System.out.println(img1[2]);
			
		for(int i=0; i<img1.length;i++){
				
			ivo.setImg(img1[i]);
			imgService.create(ivo);
		}
	   	  
		return "redirect:./myPage";
   } // dropzone.js로 파일 생성
   
   
   @RequestMapping(value = "/broadCast/{fno}", method = RequestMethod.POST)
   public @ResponseBody String broadCast(@PathVariable("fno") Integer fno) throws Exception {
	   
	  logger.info("broadCast ...........");
      
	  pptService.broadStart(fno);
	  System.out.println(fno);
     
      return "success";
   } // 방송 시작
   
   
   @RequestMapping(value = "/broadClose/{fno}", method = RequestMethod.POST)
   public @ResponseBody String broadClose(@PathVariable("fno") Integer fno) throws Exception {
	   
	  logger.info("broadCast ...........");
      
      pptService.broadStart(fno);
      System.out.println(fno);
      
      return "success";
   } // 방송 끝내기
   
   @RequestMapping(value = "/show", produces = { "image/gif", "image/jpeg", "image/jpg", "image/png" }, method = RequestMethod.GET)
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

      BufferedImage destImg = Scalr.resize(origin, Scalr.Method.AUTOMATIC, 
            Scalr.Mode.FIT_TO_HEIGHT, 80);

      ImageIO.write(origin, "jpg", fos);
      ImageIO.write(destImg, "jpg", foss);

      fos.close();
      foss.close();

      return uploadName;
   } // drag & drop (회원 이미지 추가)
   
   @RequestMapping(value = "/update", method = RequestMethod.POST)
   public String updatePost(PptVO vo, RedirectAttributes rttr) throws Exception {
      logger.info("update Post...........");
      logger.info(vo.toString());

      pptService.update(vo);
      rttr.addFlashAttribute("msg", "success");
      
      return "redirect:./myPage";
   } // update controller end (ppt 정보 수정)

   
   
}
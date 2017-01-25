package org.team.web;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.cookie;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.team.domain.MemberVO;
import org.team.domain.PageMaker;
import org.team.domain.SearchCriteria;
import org.team.service.MemberServiceImpl;
import org.team.service.PptServiceImpl;
import org.team.util.loginUtil;

@Controller
@RequestMapping("/member/*")
public class MemberController {

   @Autowired
   private MemberServiceImpl memberDAO;

   @Autowired
   private PptServiceImpl pptDAO;
   
   private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

   @RequestMapping(value = "/myPage", method = RequestMethod.GET)
   public void pptListGET(@ModelAttribute("cri")SearchCriteria cri, Model model, 
         HttpServletRequest request) throws Exception {
      logger.info("PPT List GET & membership GET............");
      logger.info(cri.toString());
      
      Cookie[] cookies = request.getCookies();
      String myid = null;
      for (Cookie cookie : cookies) {
         if(cookie.getName().equals("login")){
            myid = cookie.getValue();
            break;
         }
      }
      
//      String b = cookies.getValue();
      // myid = user00, 로그인 처리가 되면 로그인한 정보가 출력이 되어야 한다.
      
      model.addAttribute("read", memberDAO.read(myid));
      model.addAttribute("pptList", pptDAO.listSearchCriteria(cri));
      

      PageMaker pageMaker = new PageMaker();
      pageMaker.setCri(cri);
      pageMaker.setTotalCount(pptDAO.listSearchCount(cri));
      
      model.addAttribute("pageMaker", pageMaker);
   } // 페이징 처리 및 검색 조건 처리 및 쿠키로 로그인 정보 출력 완료

   
   
   @RequestMapping(value = "/circle", method = RequestMethod.POST)
   public String circle(int fno) throws Exception {
      logger.info("circle............");
      /*cc?id=*/
       return "http://192.168.0.28:8081/cc?id="+fno;
   }
   
/*   @RequestMapping(value = "/circle", method = RequestMethod.POST)
   public String circle(int ppt) throws Exception {
      logger.info("circle............");
      cc?id=
       return "redirect: ="+ppt;
   }*/
   
   
   @RequestMapping(value = "/createPage", method = RequestMethod.GET)
   public void createPageGET() throws Exception {
      logger.info("CREATE PAGE............");
   }
   
   @RequestMapping(value = "/register", method = RequestMethod.POST)
   public String registPOST(MemberVO vo, RedirectAttributes rttr) throws Exception {
      logger.info("register POST............");
      logger.info(vo.toString());
      
      memberDAO.create(vo);
      rttr.addFlashAttribute("msg", "registSUCCESS");
      
      return "redirect:/index";
   }

   @RequestMapping(value = "/loginPOST", method = RequestMethod.POST)
   public String loginPOST(HttpServletRequest req, HttpServletResponse res, MemberVO vo, 
         RedirectAttributes rttr) throws Exception {
      
      String userid = vo.getUserid();
      String userpw = vo.getUserpw();
      boolean check = memberDAO.memberLogin(vo);
      
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

   @RequestMapping(value = "/dupleCheck", method = RequestMethod.POST)
   public boolean dupleCheck(String userid) throws Exception {
      boolean check = memberDAO.loginDupleChk(userid);
      logger.info("중복체크..." + check);
      return check;
   }
   
   @RequestMapping(value = "/myPage", method = RequestMethod.POST)
   public String updatePost(MemberVO vo) throws Exception {
      logger.info("update Post...........");
      logger.info(vo.toString());
      
      memberDAO.update(vo);
      
      return "redirect:./myPage";
   } // update controller end
   
   @RequestMapping(value = "/delete", method = RequestMethod.POST)
   public String deletePost(String userid) throws Exception {
      logger.info("delete Post...........");
      
      memberDAO.delete(userid);
      
      return "redirect:/index";
   } // delete controller end
   
}
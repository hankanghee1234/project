//package org.team.web;
//
//import java.util.List;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.CrossOrigin;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RestController;
//import org.team.domain.PptVO;
//import org.team.service.PptService;
//
//@CrossOrigin(origins = "*")
//@RestController
//@RequestMapping("/ppt/*")
//public class PptController {
//
//   private static final Logger logger = LoggerFactory.getLogger(PptController.class);
//
//   @Autowired
//   private PptService PptService;
//
//   @RequestMapping(value = "/chatList", method = RequestMethod.GET)
//   public ResponseEntity<List<PptVO>> chatList() throws Exception {
//      logger.info("PPT리스트..인덱스페이지에서..");
//      ResponseEntity<List<PptVO>> entity = null;
//      try {
//         entity = new ResponseEntity<List<PptVO>>(PptService.pptUserList(), HttpStatus.OK);
//      } catch (Exception e) {
//         e.printStackTrace();
//         entity = new ResponseEntity<List<PptVO>>(HttpStatus.BAD_REQUEST);
//      }
//      return entity;
//   }
//
//}
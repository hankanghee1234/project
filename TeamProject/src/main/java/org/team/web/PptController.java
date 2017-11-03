package org.team.web;

import java.awt.image.BufferedImage;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
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
import org.team.domain.ImgVO;
import org.team.domain.MemberVO;
import org.team.domain.PptFnoVO;
import org.team.domain.PptVO;
import org.team.domain.UploadFileVO;
import org.team.service.ImgServiceImpl;
import org.team.service.PptServiceImpl;
import org.team.util.PDFConvertor;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/ppt/*")
public class PptController {

   @Autowired
   private PptServiceImpl pptService;

   @Autowired
   private ImgServiceImpl imgService;

   /*
    * @Autowired private FileServiceImpl fileService;
    */

   private static final Logger logger = LoggerFactory.getLogger(PptController.class);

   @GetMapping(value = "/show", produces = { "image/gif", "image/jpeg", "image/jpg", "image/png" })
   public @ResponseBody byte[] show(String name) throws Exception {

      InputStream in = new FileInputStream("C:\\zzz\\deskppt\\" + name);
      
      /*InputStream in = new FileInputStream("C:\\Users\\ASUS\\Desktop\\Last project\\chat3\\chat2\\public\\reveal-view\\img\\" + name);*/

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

      BufferedImage destImg = Scalr.resize(origin, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100);

      ImageIO.write(origin, "jpg", fos);
      ImageIO.write(destImg, "jpg", foss);

      fos.close();
      foss.close();

      return uploadName;
   } // drag & drop

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

   @RequestMapping(value = "/pptRead/{fno}", method = RequestMethod.GET)
   public @ResponseBody PptVO pptReadGET(@PathVariable("fno") Integer fno) throws Exception {
      logger.info("pptRead GET..............");

      return pptService.pptRead(fno);
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

   @ResponseBody
   @RequestMapping(value = "/upload2", method = RequestMethod.POST)
   public String upload2(UploadFileVO vo) throws Exception {

      System.out.println("=======================");
      System.out.println(vo);
      
      System.out.println("=======================");

      List<MultipartFile> fileList = vo.getFile();

      StringBuffer names = new StringBuffer();

      String fileName;
      
      for (MultipartFile multipartFile : fileList) {

         System.out.println(multipartFile.getOriginalFilename());
      
      }
     return "copy finish";

   }
   
   
   @ResponseBody
   @RequestMapping(value = "/upload3", method = RequestMethod.POST)
   public String upload3(UploadFileVO vo) throws Exception {

      System.out.println("=======================");
      System.out.println(vo);
      
      System.out.println("=======================");

      List<MultipartFile> fileList = vo.getFile();

      StringBuffer names = new StringBuffer();

      String fileName;
      
      for (MultipartFile multipartFile : fileList) {
          
         byte[] buf = multipartFile.getBytes();
         System.out.println(multipartFile.getOriginalFilename());
         
         InputStream is = multipartFile.getInputStream();
         fileName = multipartFile.getOriginalFilename();

         FileOutputStream fos = new FileOutputStream("C:\\zzz\\pptdesc\\" + fileName);

         fos.write(buf);
         fos.flush();
         

         fos.close();
         
         return fileName;
         
      }

      
      return "copy finish";

   }


   @RequestMapping(value = "/pdfConverter", method = RequestMethod.POST)
   public @ResponseBody ArrayList<String> pdfConverter(UploadFileVO data) throws Exception {
      System.out.println("converterter입니다 : ");
      System.out.println("converter : " + data);

      List<MultipartFile> fileList = data.getFile();

      StringBuffer names = new StringBuffer();
      ArrayList<String> arrayList = new ArrayList<>();
      
      String arr[] = new String[3];
      
      
      for (MultipartFile multipartFile : fileList) {

         System.out.println("컨버터 : "+multipartFile.getOriginalFilename());
         
         String converName = multipartFile.getOriginalFilename();
         
         arrayList.addAll(PDFConvertor.JPGconvertor(converName));
         
         
         System.out.println("arrayList : "+arrayList);
         System.out.println("toString 임 : "+arrayList.toString());

         System.out.println(arrayList.get(0));
         System.out.println(arrayList.get(1));
         System.out.println(arrayList.get(2));

         
         return arrayList;
      }
      arrayList.add("data none");
      
      return arrayList;

   }
   
   
  
   
   

   
}
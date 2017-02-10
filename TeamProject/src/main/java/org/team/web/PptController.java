package org.team.web;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.team.domain.ImgVO;
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

   private static final Logger logger = LoggerFactory.getLogger(PptController.class);

   @GetMapping(value = "/show", produces = { "image/gif", "image/jpeg", "image/jpg", "image/png" })
   public @ResponseBody byte[] show(String name) throws Exception {

      /*InputStream in = new FileInputStream("C:\\zzz\\" + name);*/
      
      InputStream in = new FileInputStream("C:\\zzz\\" + name);

      return IOUtils.toByteArray(in);
   }

   @RequestMapping(value = "/pptRead/{fno}", method = RequestMethod.GET)
   public @ResponseBody PptVO pptReadGET(@PathVariable("fno") Integer fno) throws Exception {
      logger.info("pptRead GET..............");

      return pptService.pptRead(fno);
   } // ppt file 읽기

   @RequestMapping(value = "/imgRead/{fno}", method = RequestMethod.GET)
   public @ResponseBody List<ImgVO> imgViewGET(@PathVariable("fno") Integer fno) throws Exception {
      logger.info("IMage GET................");

      return imgService.imgRead(fno);
   } // ppt 이미지 읽기

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